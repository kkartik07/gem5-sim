#!/bin/bash

scons build/X86/gem5.opt RUBY=true PROTOCOL=MESI_Two_Level -j 21

# HIGH MPKI

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/FinalResult/highmpki.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed to 'bottle' in $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi


# MEDIUM MPKI

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-milc-milc-milc-milc-milc-milc-milc-milc-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-cactusADM-namd-namd-namd-namd-namd-namd-namd-namd-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/FinalResult/mediummpki.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed to 'bottle' in $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi


# LOW MPKI

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/FinalResult/lowmpki.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed to 'bottle' in $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi
