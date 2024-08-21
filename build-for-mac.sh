mkdir build && cd build
cmake .. -DOPENSSL_ROOT_DIR=$(brew --prefix openssl)
make -j$(sysctl -n hw.logicalcpu)

