export CC=gcc-8
export CXX=g++-8
git clone https://github.com/pisa-engine/pisa.git
cd pisa && mkdir build && cd build
git checkout dev
cmake ..
make
