#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --planar --arrow-polynomial --projection=0.260223,0.32497,0.909219 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_228.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff polynomial_invariant_228.txt "${sourcepath}"/output/polynomial_invariant_228.txt || exit $?
