cmake_minimum_required(VERSION 3.0)
project(openvdb)

set(PROJECT_BINARY_DIR ${CMAKE_SOURCE_DIR}/out)
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/out)
set(CMAKE_CURRENT_BINARY_DIR ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/out)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_definitions( -DOPENVDB_USE_GLFW_3 )

find_package(Boost)
find_package(glfw)
find_package(OpenGL REQUIRED)

include_directories(
  ${CMAKE_SOURCE_DIR}
  ${GLFW_INCLUDE_DIRS}
  ${OPENGL_INCLUDE_DIRS}
  ${BOOST_INCLUDE_DIRS}
  tree
  util
  viewer
  io
  math
  tools
)


add_library(
  openvdb
  openvdb.cc
  Platform.cc
  Grid.cc
  io/Archive.cc
  io/Compression.cc
  io/File.cc
  io/GridDescriptor.cc
  io/Queue.cc
  io/Stream.cc
  io/TempFile.cc
  math/Hermite.cc
  math/Maps.cc
  math/Proximity.cc
  math/QuantizedUnitVec.cc
  math/Transform.cc
  metadata/MetaMap.cc
  metadata/Metadata.cc
  util/Formats.cc
  util/Util.cc
  tree/InternalNode.h
  tree/Iterator.h
  tree/LeafManager.h
  tree/LeafNode.h
  tree/LeafNodeBool.h
  tree/NodeManager.h
  tree/NodeUnion.h
  tree/RootNode.h
  tree/Tree.h
  tree/TreeIterator.h
  tree/ValueAccessor.h
)


target_link_libraries (openvdb boost_iostreams)

add_executable(
  openvdb_viewer
  cmd/openvdb_view/main.cc
  viewer/Camera.cc
  viewer/ClipBox.cc
  viewer/Font.cc
  viewer/RenderModules.cc
  viewer/Viewer.cc
)

target_link_libraries (
  openvdb_viewer
  openvdb
  tbb
  IlmThread
  Iex
  Imath
  Half
#  blosc
#  jemalloc
  log4cplus
  ${BOOST_LIBRARIES}
  ${GLFW3_LIBRARIES}
  glfw3
  ${OPENGL_LIBRARIES}
  boost_thread-mt
  boost_system
  boost_iostreams
  z
)
