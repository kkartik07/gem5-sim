#!/bin/bash

# scons build/X86/gem5.opt RUBY=true PROTOCOL=MESI_Two_Level -j 21

# Mix 1: 100% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix1 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"


build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-mcf-namd-namd-namd-namd-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix1.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix 2: 100% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix2 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix2.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix 3: 50% High MPKI, 50% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix3 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-namd-namd-namd-libquantum-libquantum-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix3.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix 4: 25% High MPKI, 75% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix4 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-namd-libquantum-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix4.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix 5: 75% High MPKI, 25% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix5 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-mcf-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-hmmer-sjeng-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix5.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# # Mix 6: 100% Medium MPKI

# echo "----------------------------------------------------------------------------------------------------------------"
# echo "----------------------------------------------------------------------------------------------------------------"
# echo "----------------------------------------------------- Mix6 -----------------------------------------------------"
# echo "----------------------------------------------------------------------------------------------------------------"
# echo "----------------------------------------------------------------------------------------------------------------"

# build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
# --caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
# --l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
# --mesh-rows=4 --bench=bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-perlbench-perlbench-perlbench-perlbench-perlbench-povray-povray-povray-povray-povray \
# --maxinsts=50000000 --routing-algorithm=1

# # Define source and destination paths
# SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
# DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix6.txt"

# # Create destination directory if it doesn't exist
# mkdir -p "$(dirname "$DESTINATION")"

# # Copy and rename the file
# cp "$SOURCE" "$DESTINATION"

# # Check if the copy was successful
# if [ $? -eq 0 ]; then
#     echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
# else
#     echo "Failed to copy and rename the file"
#     exit 1
# fi

# Mix7: ~33% High, 33% Medium, 33% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix7 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-namd-namd-bzip2-bzip2-bzip2-perlbench-perlbench-hmmer-hmmer-sjeng-sjeng-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix7.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix8: 75% High MPKI, 25% Medium MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix8 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-mcf-namd-namd-namd-namd-omnetpp-omnetpp-omnetpp-omnetpp-bzip2-bzip2-perlbench-perlbench \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix8.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix9: 75% Low MPKI, 25% Medium MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix9 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-bzip2-bzip2-povray-povray \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix9.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

# Mix10: 50% Medium, 25% High, 25% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix10 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-libquantum-libquantum-bzip2-bzip2-bzip2-perlbench-perlbench-povray-povray-hmmer-hmmer-sjeng-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/2HtAttack/Mix10.txt"

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy and rename the file
cp "$SOURCE" "$DESTINATION"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "stats.txt successfully copied and renamed $(dirname "$DESTINATION")"
else
    echo "Failed to copy and rename the file"
    exit 1
fi

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- FINISHED ALLLL -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
