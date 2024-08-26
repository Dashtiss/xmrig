brew install cmake wget automake libtool autoconf
rm -rf build
mkdir build && cd scripts
./build.hwloc.sh && cd ../build
cmake .. -DOPENSSL_ROOT_DIR=$(brew --prefix openssl) -DHWLOC_INCLUDE_DIR=../scripts/deps/include -DHWLOC_LIBRARY=../scripts/deps/lib/libhwloc.a
make -j$(sysctl -n hw.logicalcpu)