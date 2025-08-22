#!/bin/bash

# Build gem5
scons build/X86/gem5.opt PROTOCOL=Garnet_standalone -j 21

# Loop from 0.02 to 0.20 in steps of 0.02
for rate in $(seq 0.02 0.02 0.20); do
    echo "Running with injection rate: $rate"
    
    # Run gem5 with current injection rate
    build/X86/gem5.opt configs/example/garnet_synth_traffic.py \
        --network=garnet \
        --num-cpus=64 \
        --num-dir=64 \
        --topology=Mesh_XY \
        --mesh-rows=8 \
        --sim-cycles=100000000 \
        --injectionrate=$rate \
        --garnet-deadlock-threshold=50000 \
        --routing-algorithm=1 \
        --synthetic=bit_complement

    # Format rate for filename (replace '.' with '_')
    FILENAME="${rate/./_}.txt"  # 0.02 becomes 0_02.txt

    # Define source and destination paths
    SOURCE="/home/deepeshsahu/Asg/gem5-21.2.1.0/m5out/stats.txt"
    DESTINATION="/home/deepeshsahu/Desktop/FinalResult/SyntheticBenchmark/8*8/BitComplement/Baseline/${FILENAME}"

    # Create destination directory if it doesn't exist
    mkdir -p "$(dirname "$DESTINATION")"

    # Copy and rename the stats file
    cp "$SOURCE" "$DESTINATION"

    # Check if the copy was successful
    if [ $? -eq 0 ]; then
        echo "stats.txt successfully copied and saved as ${FILENAME}"
    else
        echo "Failed to copy and rename the file"
        exit 1
    fi

done
