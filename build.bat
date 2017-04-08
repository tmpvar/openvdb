del /f CMakeCache.txt
clear

mkdir build
cd build

cmake ^
-D OPENVDB_BUILD_PYTHON_MODULE=OFF ^
-D OPENVDB_BUILD_UNITTESTS=OFF ^
-D DOXYGEN_SKIP_DOT=ON ^
-D BOOST_INCLUDEDIR=D:\libs\boost-1.63.0 ^
-D BOOST_ROOT=D:\libs\boost-1.63.0\boost ^
-D BOOST_LIBRARYDIR=D:\libs\boost-1.63.0\lib64-msvc-12.0\ ^
-G "Visual Studio 12 2013 Win64" ^
-T LLVM-vs2013 ^
..
