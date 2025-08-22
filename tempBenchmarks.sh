#!/bin/bash

scons build/X86/gem5.fast RUBY=true PROTOCOL=MESI_Two_Level -j 21

# 2
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------bzip2 STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"


build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2-bzip2 \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/bzip2.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------bzip2 FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"


# 5

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------gromacs STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs-gromacs \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/gromacs.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------gromacs FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 6

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------h264ref STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref-h264ref \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/h264ref.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------h264ref FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 7

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------hmmer STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer-hmmer \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/hmmer.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------hmmer FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 8

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------lbm STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm-lbm \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/lbm.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------lbm FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 9

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------libquantum STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum-libquantum \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/libquantum.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------libquantum FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 10

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------mcf STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf-mcf \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/mcf.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------mcf FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 11

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------milc STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc-milc \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/milc.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------milc FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 12

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------namd STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd-namd \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/namd.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------namd FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 13

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------omnetpp STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp-omnetpp \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/omnetpp.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------omnetpp FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 14

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------perlbench STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench-perlbench \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/perlbench.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------perlbench FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 15

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------povray STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray-povray \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/povray.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------povray FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 16

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------sjeng STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng-sjeng \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/sjeng.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------sjeng FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 17

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------soplex STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex-soplex \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/soplex.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------soplex FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 18

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------specrand STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand-specrand \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/specrand.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------specrand FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

# 19

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------xalancbmk STARTED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"

build/X86/gem5.fast configs/example/se.py --ruby --num-cpus=64 --num-dir=64 --num-l2caches=64 \
--caches --l1i_size=16kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 \
--l2_size=256kB --mem-size=8GB --network=garnet --topology=Mesh_XY \
--mesh-rows=8 --bench=xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk-xalancbmk \
--maxinsts=50000000 --routing-algorithm=1

# Define source and destination paths
SOURCE="/home/deepeshsahu/gem5-21.2.1.0/m5out/stats.txt"
DESTINATION="/home/deepeshsahu/Desktop/results/temporary/xalancbmk.txt"

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

echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------xalancbmk FINISHED------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"
echo "--------------------------------------------------------------------------------------------------------------------"