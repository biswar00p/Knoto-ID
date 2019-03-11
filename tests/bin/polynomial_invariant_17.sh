#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db=internal --projection=0.0650059,-0.885358,0.460343 --input-format=xyz --closure-method=direct --nb-moves-III=100000 --output=polynomial_invariant_17.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff polynomial_invariant_17.txt "${sourcepath}"/output/polynomial_invariant_17.txt || exit $?
