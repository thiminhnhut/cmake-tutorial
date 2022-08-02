# Build static library
rm -rf static build
mkdir build static
cd build
cmake ..
make
mv libhello_library.a ../static/libhello_library.a

# Use static lib
cd .. && rm -rf build
mkdir build && cd build
cmake .. -DBUILD_STATIC_LIB=OFF
make
./main
cd ..