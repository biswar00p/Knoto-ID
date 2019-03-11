#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --planar --names-db="${sourcepath}"/input/input_knotoid_names.txt --projection=-0.503864,0.857606,-0.103113 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_169.txt "${sourcepath}"/input/input3.xyz || exit $? 
diff polynomial_invariant_169.txt "${sourcepath}"/output/polynomial_invariant_169.txt || exit $?
