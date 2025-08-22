#!/bin/bash

# 75 LOW, 25 HIGH MPKI

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=soplex-soplex-cactusADM-cactusADM-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-hmmer-hmmer-hmmer-hmmer \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/FinalResult/75Low25High.txt"

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

echo "75 LOW, 25 HIGH MPKI Finished"

# 25 LOW, 75 HIGH MPKI

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-cactusADM-cactusADM-cactusADM-cactusADM-gromacs-gromacs-hmmer-hmmer \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/FinalResult/25Low75High.txt"

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

echo "25 LOW, 75 HIGH FINISHED"


# # LOW MPKI

# build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
# --caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
# --l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
# --mesh-rows=4 --bench=gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer \
# --maxinsts=50000000 --routing-algorithm=1

# # Define source and destination paths
# SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
# DESTINATION="/home/deepeshsahu/Desktop/FinalResult/lowmpki.txt"

# # Create destination directory if it doesn't exist
# mkdir -p "$(dirname "$DESTINATION")"

# # Copy and rename the file
# cp "$SOURCE" "$DESTINATION"

# # Check if the copy was successful
# if [ $? -eq 0 ]; then
#     echo "stats.txt successfully copied and renamed to 'bottle' in $(dirname "$DESTINATION")"
# else
#     echo "Failed to copy and rename the file"
#     exit 1
# fi

# echo "LOW MPKI Finished"