#include "maindlg.h"
#include "ui_maindlg.h"
#include <QDebug>
#include <QFileDialog>

/// VTK相关依赖
#include <vtkAutoInit.h>
#include <QVTKOpenGLNativeWidget.h>
#include <vtkGenericOpenGLRenderWindow.h>
VTK_MODULE_INIT(vtkRenderingOpenGL2);
VTK_MODULE_INIT(vtkInteractionStyle);

void ap_callback(const pcl::visualization::AreaPickingEvent& event, void* args)
{
    struct callback_args* data = (struct callback_args *)args;
    std::vector<int> indiecs;
    if(!event.getPointsIndices(indiecs)) {
        return;
    }
    for(int i = 0; i < indiecs.size(); i++) {
        data->chosed_points_3d->push_back(data->orgin_points->points[indiecs[i]]);
    }

    // draw clicked points in red
    pcl::visualization::PointCloudColorHandlerCustom<PointXYZ> red(data->chosed_points_3d, 255, 0, 0);
    data->viewerPtr->removePointCloud("chosed_points");
    data->viewerPtr->addPointCloud(data->chosed_points_3d, red, "chosed_points");
    data->viewerPtr->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 5, "chosed_points");
    data->viewerPtr->getRenderWindow()->Render();
}

MainDlg::MainDlg(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::MainDlg)
{
    ui->setupUi(this);

    m_LoadCloud.reset(new PointCloud<PointXYZ>);
    auto renderer2 = vtkSmartPointer<vtkRenderer>::New();
    auto renderWindow2 = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
    renderWindow2->AddRenderer(renderer2);
    m_ShowViewer.reset(new visualization::PCLVisualizer(renderer2, renderWindow2, "viewer", false));
    m_ShowViewer->addPointCloud(m_LoadCloud, "cloud");
    ui->ShowImage->setRenderWindow(m_ShowViewer->getRenderWindow());
    m_ShowViewer->setupInteractor(ui->ShowImage->interactor(), ui->ShowImage->renderWindow());
}

MainDlg::~MainDlg()
{
    ui->ShowImage->interactor()->SetRenderWindow(nullptr);
    ui->ShowImage->interactor()->SetInteractorStyle(nullptr);
    delete ui;
}

void MainDlg::on_pushButton_clicked()
{
    m_ShowViewer->resetCamera();
    m_ShowViewer->getRenderWindow()->Render();
    ui->ShowImage->update();
}


void MainDlg::on_pushButton_2_clicked()
{
    QString strLoadFile = QFileDialog::getOpenFileName(nullptr, u8"选择pcd文件", "/", "PCD(*.pcd)");
    if(strLoadFile.isEmpty())
        return;

    io::loadPCDFile(strLoadFile.toLocal8Bit().constData(), *m_LoadCloud);
    pcl::visualization::PointCloudColorHandlerCustom<PointXYZ> blue(m_LoadCloud, 0, 0, 255);
    m_ShowViewer->updatePointCloud(m_LoadCloud, blue, "cloud");

    cb_args.orgin_points =   m_LoadCloud;
    pcl::PointCloud<PointXYZ>::Ptr chosed_points_3d(new pcl::PointCloud<PointXYZ>);
    cb_args.chosed_points_3d = chosed_points_3d;
    cb_args.viewerPtr = boost::shared_ptr<visualization::PCLVisualizer>(m_ShowViewer);
    m_ShowViewer->registerAreaPickingCallback(ap_callback, (void*)&cb_args);
    m_ShowViewer->resetCamera();
    m_ShowViewer->getRenderWindow()->Render();
    ui->ShowImage->update();
}

