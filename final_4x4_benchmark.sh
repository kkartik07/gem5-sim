#!/bin/bash

scons build/X86/gem5.opt RUBY=true PROTOCOL=MESI_Two_Level -j 21

# Mix 1: 100% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix1 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"


build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=mcf-mcf-mcf-mcf-libquantum-libquantum-libquantum-libquantum-lbm-lbm-lbm-lbm-specrand-specrand-specrand-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix1.txt"

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
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-h264ref-h264ref-h264ref-h264ref-h264ref-perlbench-perlbench-perlbench-perlbench-perlbench \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix2.txt"

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

# Mix 3: 50% Low MPKI, 50% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix3 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-h264ref-h264ref-h264ref-perlbench-perlbench-mcf-mcf-libquantum-libquantum-lbm-lbm-specrand-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix3.txt"

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

# Mix 4: 25% Low MPKI, 75% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix4 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-h264ref-perlbench-mcf-mcf-mcf-libquantum-libquantum-libquantum-lbm-lbm-lbm-specrand-specrand-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix4.txt"

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

# Mix 5: 75% Low MPKI, 25% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix5 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-hmmer-h264ref-h264ref-h264ref-h264ref-perlbench-perlbench-perlbench-perlbench-mcf-libquantum-lbm-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix5.txt"

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

# Mix 6: Low + Medium + High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix6 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-h264ref-h264ref-perlbench-perlbench-gromacs-gromacs-povray-povray-sjeng-mcf-mcf-mcf-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix6.txt"

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

# Mix7: 50% Medium MPKI, 50% High MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix7 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=gromacs-gromacs-namd-namd-milc-milc-povray-povray-mcf-mcf-mcf-mcf-libquantum-libquantum-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix7.txt"

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

# Mix8: 50% Low MPKI, 50% Medium MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix8 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-hmmer-h264ref-h264ref-h264ref-perlbench-perlbench-gromacs-gromacs-namd-namd-povray-povray-sjeng-sjeng \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix8.txt"

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

# Mix9: Mixed All Levels

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix9 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-hmmer-h264ref-h264ref-gromacs-gromacs-namd-namd-povray-povray-soplex-soplex-mcf-libquantum-lbm-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix9.txt"

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

# Mix10: Predominantly Medium MPKI

echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------- Mix10 -----------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"

build/X86/gem5.opt configs/example/se.py --ruby --num-cpus=16 --num-dir=16 --num-l2caches=16 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=4 --bench=hmmer-h264ref-perlbench-gromacs-gromacs-namd-namd-soplex-xalancbmk-xalancbmk-sjeng-povray-povray-mcf-libquantum-lbm \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/4*4_TCMP/baseline/Mix10.txt"

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
echo "------------------------------------------------- FINISHED ALLLL --------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
echo "----------------------------------------------------------------------------------------------------------------"
