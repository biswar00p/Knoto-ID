#!/bin/bash

INPUT_DIR="not_e2e_xyzfiles"
OUTPUT_FILE="jones_knotoid_polynomial_outputs.txt"
EXECUTABLE="./src/polynomial_invariant"
PROJECTION="1,0,0"
# Check if a closure method was passed
if [ -z "$1" ]; then
  echo "Usage: $0 <closure-method> (e.g., open, direct, rays)"
  exit 1
fi

CLOSURE_METHOD="$1"
# Empty the output file if it exists
> "$OUTPUT_FILE"

# Loop over all .xyz files in the input directory
for file in "$INPUT_DIR"/*.xyz; do
    filename=$(basename "$file")
    echo "===== $filename =====" >> "$OUTPUT_FILE"
    $EXECUTABLE --projection="$PROJECTION" --closure-method="$CLOSURE_METHOD" "$file" >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "All outputs written to $OUTPUT_FILE"
