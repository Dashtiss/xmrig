rm -rf build
mkdir build && cd build
cmake .. -DOPENSSL_ROOT_DIR=$(brew --prefix openssl) -DWITH_CUDA=OFF -DWITH_NVML=OFF -DWITH_OPENCL=OFF -DWITH_MSR=OFF
make -j$(sysctl -n hw.logicalcpu)

