#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --projection=-0.482088,-0.149851,0.863212 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_90.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff polynomial_invariant_90.txt "${sourcepath}"/output/polynomial_invariant_90.txt || exit $?
