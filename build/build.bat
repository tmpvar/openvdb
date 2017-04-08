del /f CMakeCache.txt
clear

cmake ^
-D OPENVDB_BUILD_PYTHON_MODULE=OFF ^
-D OPENVDB_BUILD_UNITTESTS=OFF ^
-D DOXYGEN_SKIP_DOT=ON ^
-D Blosc_USE_STATIC_LIBS=OFF ^
-D USE_GLFW3=ON ^
-D BOOST_INCLUDEDIR=D:\libs\boost-1.63.0 ^
-D BOOST_ROOT=D:\libs\boost-1.63.0\boost ^
-D BOOST_LIBRARYDIR=D:\libs\boost-1.63.0\lib64-msvc-12.0\ ^
-D ZLIB_INCLUDE_DIR=D:\libs\zlib-1.2.3\include ^
-D ZLIB_LIBRARY=D:\libs\zlib-1.2.3\libs\libz.a ^
-G "Visual Studio 12 2013 Win64" ^
..
