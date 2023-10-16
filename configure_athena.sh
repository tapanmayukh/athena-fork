#!/bin/sh
./configure.py --prob $1 -fft -mpi -hdf5 -h5double --mpiccmd mpiicc --include=$FFTW_HOME/include --include=$HDF5_HOME/include --lib_path=$FFTW_HOME/lib --lib_path=$HDF5_HOME/lib --cflag="-xCORE-AVX512 -qopt-zmm-usage=high  -inline-forceinline -qopenmp-simd  -qopt-prefetch=4 -qoverride-limits -diag-disable 3180 -Wl,-rpath=$FFTW_HOME/lib -Wl,-rpath=$HDF5_HOME/lib"
