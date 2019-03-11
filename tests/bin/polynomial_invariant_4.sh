#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db="${sourcepath}"/input/input_knot_names.txt --projection=-0.941983,0.321122,0.0977138 --input-format=xyz --closure-method=direct --nb-moves-III=100000 --output=polynomial_invariant_4.txt "${sourcepath}"/input/input1.xyz || exit $? 
diff polynomial_invariant_4.txt "${sourcepath}"/output/polynomial_invariant_4.txt || exit $?
