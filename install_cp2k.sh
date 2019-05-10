# === MODULES ===
module load daint-gpu
module swap PrgEnv-cray PrgEnv-gnu/6.0.4
module unload cray-libsci
module load intel
module load fftw/3.3.4.10
module load cudatoolkit/9.1.85_3.18-6.0.7.0_5.1__g2eb7c52
module load CMake

# === LIBRARIES ===
BDIR=/project/csstaff/kabicm/cp2k
make -j 24 ARCH=PizDaint VERSION=psmp
