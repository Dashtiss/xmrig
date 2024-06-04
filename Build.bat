rmdir /S /Q build
mkdir build && cd build
cmake .. -G "Visual Studio 17 2022" -A x64 -DXMRIG_DEPS=c:\xmrig-deps\msvc2019\x64
cmake --build . --config Release