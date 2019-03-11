#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --planar --names-db="${sourcepath}"/input/input_knotoid_names.txt --arrow-polynomial --input-format=gauss --nb-moves-III=100000 --output=polynomial_invariant_403.txt "${sourcepath}"/input/input_diagram_gauss_open_plane_1.txt || exit $? 
diff polynomial_invariant_403.txt "${sourcepath}"/output/polynomial_invariant_403.txt || exit $?
