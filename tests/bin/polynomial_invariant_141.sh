#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --projections-list="${sourcepath}"/input/input_projections.txt --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_141.txt "${sourcepath}"/input/input2.xyz || exit $? 
diff polynomial_invariant_141.txt "${sourcepath}"/output/polynomial_invariant_141.txt || exit $?
