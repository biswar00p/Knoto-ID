#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --arrow-polynomial --names-db="${sourcepath}"/input/input_knotoid_names.txt --projection=0.458036,0.879269,-0.130724 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_295.txt "${sourcepath}"/input/input8.xyz || exit $? 
diff polynomial_invariant_295.txt "${sourcepath}"/output/polynomial_invariant_295.txt || exit $?
