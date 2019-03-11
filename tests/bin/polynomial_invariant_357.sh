#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --planar --arrow-polynomial --input-format=pd --nb-moves-III=100000 --output=polynomial_invariant_357.txt "${sourcepath}"/input/input_diagram_open_plane_1.txt || exit $? 
diff polynomial_invariant_357.txt "${sourcepath}"/output/polynomial_invariant_357.txt || exit $?
