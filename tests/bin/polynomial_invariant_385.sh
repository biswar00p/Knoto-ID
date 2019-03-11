#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db="${sourcepath}"/input/input_knotoid_names.txt --arrow-polynomial --input-format=gauss --nb-moves-III=100000 --output=polynomial_invariant_385.txt "${sourcepath}"/input/input_diagram_gauss_open_sphere_1.txt || exit $? 
diff polynomial_invariant_385.txt "${sourcepath}"/output/polynomial_invariant_385.txt || exit $?
