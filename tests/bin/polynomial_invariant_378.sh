#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --arrow-polynomial --input-format=gauss --nb-moves-III=100000 --output=polynomial_invariant_378.txt "${sourcepath}"/input/input_diagram_gauss_open_sphere_0.txt || exit $? 
diff polynomial_invariant_378.txt "${sourcepath}"/output/polynomial_invariant_378.txt || exit $?
