#include <QApplication>
#include <QDebug>

#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/pcl_visualizer.h>

struct callback_args {
    pcl::PointCloud<pcl::PointXYZ>::Ptr clicked_points_3d;
    pcl::visualization::PCLVisualizer::Ptr viewerPtr;
};

void pp_callback(const pcl::visualization::PointPickingEvent& event, void *args)
{
    struct callback_args* data = (struct callback_args *)args;
    if(event.getPointIndex() == -1) {
        return;
    }

    int index = event.getPointIndex();
    qDebug() << "Index:" << index;
    pcl::PointXYZ current_point;
    event.getPoint(current_point.x, current_point.y, current_point.z);
    data->clicked_points_3d->points.push_back(current_point);
    // 把选中的点画成红色
    pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> red(data->clicked_points_3d, 255, 0, 0);
    data->viewerPtr->removePointCloud("clicked_points");
    data->viewerPtr->addPointCloud(data->clicked_points_3d, red, "clicked_points");
    data->viewerPtr->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 10, "clicked_points");
    qDebug() << "current_point:" << current_point.x << current_point.y << current_point.z;
}

int main(int argc, char *argv[])
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::io::loadPCDFile("D://rabbit.pcd", *cloud);
    pcl::console::print_highlight("Load Cloud!\n");
    pcl::visualization::PCLVisualizer viewer;
    pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> green(cloud, 0, 255, 0);
    viewer.addPointCloud(cloud, green, "cloud");

    struct callback_args cb_args;
    pcl::PointCloud<pcl::PointXYZ>::Ptr clicked_points_3d(new pcl::PointCloud<pcl::PointXYZ>);
    cb_args.clicked_points_3d = clicked_points_3d;
    cb_args.viewerPtr = pcl::visualization::PCLVisualizer::Ptr(&viewer);
    viewer.registerPointPickingCallback(pp_callback, (void*)&cb_args);
    pcl::console::print_highlight("Shift+click on  three floor points, then press 'Q'...\n");
    viewer.spin();
    system("pause");
    return 0;
}
