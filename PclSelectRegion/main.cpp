#include <QApplication>
#include <QDebug>

#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/pcl_visualizer.h>


typedef pcl::PointXYZ PointT;

struct callback_args {
    pcl::PointCloud<PointT>::Ptr orgin_points;
    pcl::PointCloud<PointT>::Ptr chosed_points_3d;
    pcl::visualization::PCLVisualizer::Ptr viewerPtr;
};

void ap_callback(const pcl::visualization::AreaPickingEvent& event, void* args)
{
    qDebug() << "11111111111111111111";
    struct callback_args* data = (struct callback_args *)args;
    std::vector<int> indiecs;
    if(!event.getPointsIndices(indiecs)) {
        qDebug() << "get points indices false";
        return;
    }
    for(int i = 0; i < indiecs.size(); i++) {
        data->chosed_points_3d->push_back(data->orgin_points->points[indiecs[i]]);
    }

    // draw clicked points in red
    pcl::visualization::PointCloudColorHandlerCustom<PointT> red(data->chosed_points_3d, 255, 0, 0);
    data->viewerPtr->removePointCloud("chosed_points");
    data->viewerPtr->addPointCloud(data->chosed_points_3d, red, "chosed_points");
    data->viewerPtr->setPointCloudRenderingProperties(pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 5, "chosed_points");
    qDebug() << "Selected " << indiecs.size() << " points, now sum is " << data->chosed_points_3d->size();
}

int main(int argc, char *argv[])
{
    pcl::PointCloud<PointT>::Ptr cloud(new pcl::PointCloud<PointT>);
    pcl::io::loadPCDFile("D://rabbit.pcd", *cloud);
    pcl::console::print_highlight("Load Cloud!\n");
    pcl::visualization::PCLVisualizer viewer;
    pcl::visualization::PointCloudColorHandlerCustom<PointT> blue(cloud, 0, 0, 255);
   // viewer.addPointCloud(cloud, blue, "cloud");
/*
    // Add Point picking callback to viewer
    struct callback_args cb_args;
    cb_args.orgin_points = cloud;
    pcl::PointCloud<PointT>::Ptr chosed_points_3d(new pcl::PointCloud<PointT>);
    cb_args.chosed_points_3d = chosed_points_3d;
    cb_args.viewerPtr = pcl::visualization::PCLVisualizer::Ptr(&viewer);
    viewer.registerAreaPickingCallback(ap_callback, (void*)&cb_args);

    pcl::console::print_highlight("Press x enter selected model, then press 'qQ'...\n");
    viewer.spin();
*/
    int v1(1);
    viewer.createViewPort(0.0, 0.0, 0.5, 1.0, v1);
    viewer.setBackgroundColor(155, 0, 0, v1);
    viewer.addPointCloud(cloud, blue, "cloud", v1);

    int v2(2);
    viewer.createViewPort(0.5, 0.0, 1.0, 1.0, v1);
    viewer.setBackgroundColor(0, 255, 0, v2);
    viewer.addPointCloud(cloud, blue, "cloud2", v2);
    viewer.spin();
    return 0;
}
