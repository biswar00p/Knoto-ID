#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db=internal --projection=0.831467,0.521821,0.190698 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_188.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff polynomial_invariant_188.txt "${sourcepath}"/output/polynomial_invariant_188.txt || exit $?
