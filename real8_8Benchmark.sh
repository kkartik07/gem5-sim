#!/bin/bash

scons build/X86/gem5.opt RUBY=true PROTOCOL=MESI_Two_Level -j 21

# 1. 100% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix1 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix1.txt"

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

# 2. 100% Low-MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix2 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-namd-namd-namd-namd-namd-namd-namd-namd-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-povray-povray-povray-povray-povray-povray-povray-povray \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix2.txt"

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

# 3. 50% Low / 50% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix3 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-namd-namd-namd-namd-h264ref-h264ref-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix3.txt"

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

# 4. 25% Low / 75% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix4 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-hmmer-hmmer-sjeng-sjeng-h264ref-h264ref-namd-namd-hmmer-hmmer-sjeng-sjeng-h264ref-h264ref-namd-namd \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix4.txt"

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

# 5. 75% Low / 25% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix5 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bench=hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-namd-namd-namd-namd-namd-namd-namd-namd-perlbench-perlbench-perlbench-perlbench-povray-povray-povray-povray-hmmer-hmmer-sjeng-sjeng-h264ref-h264ref-namd-namd-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix5.txt"

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

# 6. 100% Medium MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix6 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bench=soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-soplex-soplex-libquantum-libquantum-omnetpp-omnetpp-libquantum-libquantum-soplex-soplex-omnetpp-omnetpp \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix6.txt"

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

# 7. 50% Medium / 50% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix7 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bench=soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-namd-namd-namd-namd \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix7.txt"

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

# 8. 50% Medium / 50% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix8 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-omnetpp-omnetpp-omnetpp-omnetpp \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix8.txt"

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

# 9. Mixed (H/M/L)

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix9 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-omnetpp-omnetpp-omnetpp-omnetpp-hmmer-hmmer-hmmer-hmmer-sjeng-sjeng-sjeng-sjeng-h264ref-h264ref-h264ref-h264ref-namd-namd-namd-namd-povray-povray-povray-povray \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix9.txt"

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

# 10. 75% Medium / 25% Low MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix10 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-soplex-soplex-libquantum-libquantum-omnetpp-omnetpp-libquantum-libquantum-soplex-soplex-omnetpp-omnetpp-hmmer-hmmer-sjeng-sjeng-h264ref-h264ref-povray-povray \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/8*8_TCMP/baseline/Mix10.txt"

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