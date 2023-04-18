# 设置生成目录
MOC_DIR     = temp/moc
RCC_DIR     = temp/rcc
UI_DIR      = temp/ui
OBJECTS_DIR = temp/obj
DESTDIR     = ../BIN

#PCL基础头文件
win32::BASE_PCL_PATH = C:/Soft/PCL1.13.0

INCLUDEPATH += \
            $${BASE_PCL_PATH}/3rdParty/Boost/include/boost-1_80 \
            $${BASE_PCL_PATH}/include/pcl-1.13 \
            $${BASE_PCL_PATH}/3rdParty/Eigen/eigen3 \
            $${BASE_PCL_PATH}/3rdParty/FLANN/include \
            $${BASE_PCL_PATH}/3rdParty/Qhull/include \
#            $${BASE_PCL_PATH}/3rdParty/OpenNI2\Include \
            $${BASE_PCL_PATH}/3rdParty/VTK/include/vtk-9.2

CONFIG += debug_and
CONFIG(debug, debug|release) {
    LIBS += \
        $${BASE_PCL_PATH}/lib/pcl_commond.lib \
        $${BASE_PCL_PATH}/lib/pcl_featuresd.lib \
        $${BASE_PCL_PATH}/lib/pcl_filtersd.lib \
        $${BASE_PCL_PATH}/lib/pcl_io_plyd.lib \
        $${BASE_PCL_PATH}/lib/pcl_iod.lib \
        $${BASE_PCL_PATH}/lib/pcl_kdtreed.lib \
        $${BASE_PCL_PATH}/lib/pcl_keypointsd.lib \
        $${BASE_PCL_PATH}/lib/pcl_mld.lib \
        $${BASE_PCL_PATH}/lib/pcl_octreed.lib \
        $${BASE_PCL_PATH}/lib/pcl_outofcored.lib \
        $${BASE_PCL_PATH}/lib/pcl_peopled.lib \
        $${BASE_PCL_PATH}/lib/pcl_recognitiond.lib \
        $${BASE_PCL_PATH}/lib/pcl_registrationd.lib \
        $${BASE_PCL_PATH}/lib/pcl_sample_consensusd.lib \
        $${BASE_PCL_PATH}/lib/pcl_segmentationd.lib \
        $${BASE_PCL_PATH}/lib/pcl_searchd.lib \
        $${BASE_PCL_PATH}/lib/pcl_surfaced.lib \
        $${BASE_PCL_PATH}/lib/pcl_trackingd.lib \
        $${BASE_PCL_PATH}/lib/pcl_visualizationd.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_atomic-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_bzip2-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_chrono-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_container-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_context-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_coroutine-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_date_time-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_exception-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_fiber-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_filesystem-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_graph-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_graph_parallel-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_iostreams-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_locale-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_log-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_log_setup-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_c99-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_c99f-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_c99l-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_tr1-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_tr1f-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_math_tr1l-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_mpi-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_numpy310-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_prg_exec_monitor-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_program_options-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_python310-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_random-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_regex-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_serialization-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_system-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_test_exec_monitor-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_thread-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_timer-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_type_erasure-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_unit_test_framework-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_wave-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_wserialization-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/Boost/lib/libboost_zlib-vc143-mt-gd-x64-1_80.lib \
        $${BASE_PCL_PATH}/3rdParty/FLANN/lib/flann-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/FLANN/lib/flann_cpp-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/FLANN/lib/flann_cpp_s-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/FLANN/lib/flann_s-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/Qhull/lib/qhullcpp_d.lib \
        $${BASE_PCL_PATH}/3rdParty/Qhull/lib/qhullstatic_d.lib \
        $${BASE_PCL_PATH}/3rdParty/Qhull/lib/qhullstatic_rd.lib \
        $${BASE_PCL_PATH}/3rdParty/Qhull/lib/qhull_rd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtknetcdf-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkChartsCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonColor-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonComputationalGeometry-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonDataModel-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonExecutionModel-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonMath-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonMisc-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonSystem-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkCommonTransforms-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkDICOMParser-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkDomainsChemistry-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkexodusII-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkexpat-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersAMR-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersExtraction-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersFlowPaths-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersGeneral-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersGeneric-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersGeometry-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersHybrid-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersHyperTree-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersImaging-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersModeling-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersParallel-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersParallelImaging-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersPoints-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersProgrammable-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersSelection-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersSMP-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersSources-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersStatistics-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersTexture-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersTopology-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkFiltersVerdict-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkfreetype-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkGeovisCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkGUISupportQt-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkgl2ps-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkhdf5-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkhdf5_hl-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingColor-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingFourier-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingGeneral-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingHybrid-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingMath-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingMorphological-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingSources-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingStatistics-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkImagingStencil-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkInfovisCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkInfovisLayout-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkInteractionImage-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkInteractionStyle-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkInteractionWidgets-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOAMR-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOEnSight-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOExodus-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOExport-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOExportGL2PS-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOGeometry-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOImage-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOImport-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOInfovis-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOLegacy-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOLSDyna-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOMINC-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOMovie-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIONetCDF-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOParallel-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOParallelXML-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOPLY-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOSQL-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOTecplotTable-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOVideo-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOXML-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkIOXMLParser-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkjpeg-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkjsoncpp-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtklibharu-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtklibxml2-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtklz4-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkmetaio-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkNetCDF-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkogg-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkParallelCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkpng-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingAnnotation-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingContext2D-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingContextOpenGL2-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingFreeType-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingGL2PSOpenGL2-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingImage-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingLabel-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingLICOpenGL2-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingLOD-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingOpenGL2-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkRenderingVolume-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtksqlite-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtksys-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtktiff-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkverdict-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkViewsContext2D-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkViewsCore-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkViewsInfovis-9.2-gd.lib \
        $${BASE_PCL_PATH}/3rdParty/VTK/lib/vtkzlib-9.2-gd.lib \
} else {
LIBS += -LC:\Soft\PCL1.13.0\lib\
        -lpcl_common\
        -lpcl_features\
        -lpcl_filters\
        -lpcl_io_ply\
        -lpcl_io\
        -lpcl_kdtree\
        -lpcl_keypoints\
        -lpcl_ml\
        -lpcl_octree\
        -lpcl_outofcore\
        -lpcl_people\
        -lpcl_recognition\
        -lpcl_registration\
        -lpcl_sample_consensus\
        -lpcl_search\
        -lpcl_segmentation\
        -lpcl_stereo\
        -lpcl_surface\
        -lpcl_tracking\
        -lpcl_visualization

LIBS += -LC:\Soft\PCL1.13.0\3rdParty\Boost\lib\
        -llibboost_atomic-vc143-mt-x64-1_80\
        -llibboost_bzip2-vc143-mt-x64-1_80\
        -llibboost_chrono-vc143-mt-x64-1_80\
        -llibboost_container-vc143-mt-x64-1_80\
        -llibboost_context-vc143-mt-x64-1_80\
        -llibboost_coroutine-vc143-mt-x64-1_80\
        -llibboost_date_time-vc143-mt-x64-1_80\
        -llibboost_exception-vc143-mt-x64-1_80\
        -llibboost_fiber-vc143-mt-x64-1_80\
        -llibboost_filesystem-vc143-mt-x64-1_80\
        -llibboost_graph-vc143-mt-x64-1_80\
        -llibboost_graph_parallel-vc143-mt-x64-1_80\
        -llibboost_iostreams-vc143-mt-x64-1_80\
        -llibboost_locale-vc143-mt-x64-1_80\
        -llibboost_log-vc143-mt-x64-1_80\
        -llibboost_log_setup-vc143-mt-x64-1_80\
        -llibboost_math_c99-vc143-mt-x64-1_80\
        -llibboost_math_c99f-vc143-mt-x64-1_80\
        -llibboost_math_c99l-vc143-mt-x64-1_80\
        -llibboost_math_tr1-vc143-mt-x64-1_80\
        -llibboost_math_tr1f-vc143-mt-x64-1_80\
        -llibboost_math_tr1l-vc143-mt-x64-1_80\
        -llibboost_mpi-vc143-mt-x64-1_80\
        -llibboost_numpy310-vc143-mt-x64-1_80\
        -llibboost_prg_exec_monitor-vc143-mt-x64-1_80\
        -llibboost_program_options-vc143-mt-x64-1_80\
        -llibboost_python310-vc143-mt-x64-1_80\
        -llibboost_random-vc143-mt-x64-1_80\
        -llibboost_regex-vc143-mt-x64-1_80\
        -llibboost_serialization-vc143-mt-x64-1_80\
        -llibboost_system-vc143-mt-x64-1_80\
        -llibboost_test_exec_monitor-vc143-mt-x64-1_80\
        -llibboost_thread-vc143-mt-x64-1_80\
        -llibboost_timer-vc143-mt-x64-1_80\
        -llibboost_type_erasure-vc143-mt-x64-1_80\
        -llibboost_unit_test_framework-vc143-mt-x64-1_80\
        -llibboost_wave-vc143-mt-x64-1_80\
        -llibboost_wserialization-vc143-mt-x64-1_80\
        -llibboost_zlib-vc143-mt-x64-1_80

LIBS += -LC:\Soft\PCL1.13.0\3rdParty\FLANN\lib\
        -lflann\
        -lflann_cpp\
        -lflann_cpp_s\
        -lflann_s

#LIBS += -LC:\Soft\PCL1.13.0\3rdParty\OpenNI2\Lib\
#        -lOpenNI2

LIBS += -LC:\Soft\PCL1.13.0\3rdParty\Qhull\lib\
        -lqhullcpp\
        -lqhullstatic\
        -lqhullstatic_r\
        -lqhull_r

LIBS += -LC:\Soft\PCL1.13.0\3rdParty\VTK\lib\
        -lvtkcgns-9.2\
        -lvtkChartsCore-9.2\
        -lvtkCommonColor-9.2\
        -lvtkCommonComputationalGeometry-9.2\
        -lvtkCommonCore-9.2\
        -lvtkCommonDataModel-9.2\
        -lvtkCommonExecutionModel-9.2\
        -lvtkCommonMath-9.2\
        -lvtkCommonMisc-9.2\
        -lvtkCommonSystem-9.2\
        -lvtkCommonTransforms-9.2\
        -lvtkDICOMParser-9.2\
        -lvtkDomainsChemistry-9.2\
        -lvtkDomainsChemistryOpenGL2-9.2\
        -lvtkexodusII-9.2\
        -lvtkexpat-9.2\
        -lvtkFiltersAMR-9.2\
        -lvtkFiltersCore-9.2\
        -lvtkFiltersExtraction-9.2\
        -lvtkFiltersFlowPaths-9.2\
        -lvtkFiltersGeneral-9.2\
        -lvtkFiltersGeneric-9.2\
        -lvtkFiltersGeometry-9.2\
        -lvtkFiltersHybrid-9.2\
        -lvtkFiltersHyperTree-9.2\
        -lvtkFiltersImaging-9.2\
        -lvtkFiltersModeling-9.2\
        -lvtkFiltersParallel-9.2\
        -lvtkFiltersParallelImaging-9.2\
        -lvtkFiltersProgrammable-9.2\
        -lvtkFiltersSelection-9.2\
        -lvtkFiltersSMP-9.2\
        -lvtkFiltersSources-9.2\
        -lvtkFiltersStatistics-9.2\
        -lvtkFiltersTexture-9.2\
        -lvtkFiltersVerdict-9.2\
        -lvtkfreetype-9.2\
        -lvtkGeovisCore-9.2\
        -lvtkglew-9.2\
        -lvtkGUISupportQt-9.2\
#        -lvtkGUISupportQtSQL-9.2\
        -lvtkhdf5-9.2\
        -lvtkhdf5_hl-9.2\
        -lvtkImagingColor-9.2\
        -lvtkImagingCore-9.2\
        -lvtkImagingFourier-9.2\
        -lvtkImagingGeneral-9.2\
        -lvtkImagingHybrid-9.2\
        -lvtkImagingMath-9.2\
        -lvtkImagingMorphological-9.2\
        -lvtkImagingSources-9.2\
        -lvtkImagingStatistics-9.2\
        -lvtkImagingStencil-9.2\
        -lvtkInfovisCore-9.2\
        -lvtkInfovisLayout-9.2\
        -lvtkInteractionImage-9.2\
        -lvtkInteractionStyle-9.2\
        -lvtkInteractionWidgets-9.2\
        -lvtkIOAMR-9.2\
        -lvtkIOCore-9.2\
        -lvtkIOEnSight-9.2\
        -lvtkIOExodus-9.2\
        -lvtkIOExport-9.2\
        -lvtkIOGeometry-9.2\
        -lvtkIOImage-9.2\
        -lvtkIOImport-9.2\
        -lvtkIOInfovis-9.2\
        -lvtkIOLegacy-9.2\
        -lvtkIOLSDyna-9.2\
        -lvtkIOMINC-9.2\
        -lvtkIOMovie-9.2\
        -lvtkIONetCDF-9.2\
        -lvtkIOParallel-9.2\
        -lvtkIOParallelXML-9.2\
        -lvtkIOPLY-9.2\
        -lvtkIOSQL-9.2\
        -lvtkIOVideo-9.2\
        -lvtkIOXML-9.2\
        -lvtkIOXMLParser-9.2\
        -lvtkjpeg-9.2\
        -lvtkjsoncpp-9.2\
        -lvtklibxml2-9.2\
        -lvtkmetaio-9.2\
        -lvtkNetCDF-9.2\
#        -lvtkNetCDF_c++-9.2\		#因为我的VTK库文件中不存在该文件，所以把它注释掉
        -lvtkogg-9.2\
        -lvtkParallelCore-9.2\
        -lvtkpng-9.2\
#        -lvtkproj4-9.2\
        -lvtkRenderingAnnotation-9.2\
        -lvtkRenderingContext2D-9.2\
        -lvtkRenderingContextOpenGL2-9.2\
        -lvtkRenderingCore-9.2\
        -lvtkRenderingFreeType-9.2\
        -lvtkRenderingImage-9.2\
        -lvtkRenderingLabel-9.2\
        -lvtkRenderingLOD-9.2\
        -lvtkRenderingOpenGL2-9.2\
#        -lvtkRenderingQt-9.2\
        -lvtkRenderingVolume-9.2\
        -lvtkRenderingVolumeOpenGL2-9.2\
        -lvtksqlite-9.2\
        -lvtksys-9.2\
        -lvtktiff-9.2\
        -lvtkverdict-9.2\
        -lvtkViewsContext2D-9.2\
        -lvtkViewsCore-9.2\
        -lvtkViewsInfovis-9.2\
#        -lvtkViewsQt-9.2\
        -lvtkzlib-9.2
}
