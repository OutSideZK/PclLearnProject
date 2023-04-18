#ifndef MAINDLG_H
#define MAINDLG_H

#include <QWidget>

#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/pcl_visualizer.h>

using namespace pcl;

struct callback_args {
    pcl::PointCloud<PointXYZ>::Ptr orgin_points;
    pcl::PointCloud<PointXYZ>::Ptr chosed_points_3d;
    boost::shared_ptr<visualization::PCLVisualizer> viewerPtr;
};

QT_BEGIN_NAMESPACE
namespace Ui { class MainDlg; }
QT_END_NAMESPACE

class MainDlg : public QWidget
{
    Q_OBJECT

public:
    MainDlg(QWidget *parent = nullptr);
    ~MainDlg();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::MainDlg *ui;

    struct callback_args cb_args;
    PointCloud<PointXYZ>::Ptr m_LoadCloud;
    boost::shared_ptr<visualization::PCLVisualizer> m_ShowViewer;
};
#endif // MAINDLG_H
