# nc_aen_fast_2021
This repository contains codebooks for noncoherent transmission over Rayleigh fast fading channel obtained using autoencoder neural network.

These results are presented in the following paper:

Alexander B. Sergienko, Polina V. Apalina, "Design of Codebooks Optimized for Noncoherent Transmission over Fast Fading Channel," submitted to Globecom 2021.

The codebooks are presented in two formats: as MATLAB data files (`*.mat`, folder `MAT`) and as ASCII files (`*.txt`, folder `ASCII`)

File names have the following form: `cb_n*_M*`
The number after "n" shows the number of samples in the codebook signals.
The number after "M" shows the number of signals in the codebook (i.e., the number of bits that can be transmitted using this codebook is log2(M))
For example, the file `cb_n6_M8.txt` contains the codebook with 8 signals (3 bits per signal) consisting of n=6 samples.

Every `.MAT` file contains a single variable with the name "ssc". This variable is a 2D complex-valued array with M rows and n columns. Every row of this array represents one signal from the codebook.

Every `.TXT` file contains an ASCII table of numbers with M rows and 2*n columns. Every row of the table represents one signal from the codebook. The first n columns contain real parts of the signal samples, remaining n columns contain imaginary parts of the signal samples. 

The ASCII folder also contains the file `read_codebook_from_ascii_file.m` - MATLAB function for reading a codebook from these ASCII files.
