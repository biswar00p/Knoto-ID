#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --planar --names-db="${sourcepath}"/input/input_knotoid_names.txt --arrow-polynomial --input-format=pd --nb-moves-III=100000 --output=polynomial_invariant_364.txt "${sourcepath}"/input/input_diagram_open_plane_2.txt || exit $? 
diff polynomial_invariant_364.txt "${sourcepath}"/output/polynomial_invariant_364.txt || exit $?
