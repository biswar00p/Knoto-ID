#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db=internal --projection=0.959674,0.0581195,-0.275043 --input-format=xyz --closure-method=open --nb-moves-III=100000 --output=polynomial_invariant_260.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff polynomial_invariant_260.txt "${sourcepath}"/output/polynomial_invariant_260.txt || exit $?
