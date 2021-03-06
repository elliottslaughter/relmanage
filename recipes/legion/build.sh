# git clone https://github.com/StanfordLegion/gasnet.git
# pushd gasnet
# make CONDUIT=mpi
# popd

mkdir build
cd build
#   -DLegion_USE_GASNet=ON \
#   -DGASNet_ROOT_DIR="$PWD/../gasnet/release" \
#   -DGASNet_CONDUIT=mpi \
cmake \
  -DBUILD_SHARED_LIBS=ON \
  -DLegion_BUILD_BINDINGS=ON \
  -DLegion_ENABLE_TLS=ON \
  -DLegion_USE_Python=ON \
  -DPYTHON_EXECUTABLE="$PYTHON" \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DCMAKE_INSTALL_LIBDIR="$PREFIX/lib" \
  ..
make -j12
make install
