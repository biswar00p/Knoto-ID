#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --projection=0.3133,-0.104897,-0.943843 --input-format=xyz --closure-method=direct --nb-moves-III=100000 --output=polynomial_invariant_27.txt "${sourcepath}"/input/input9.xyz || exit $? 
diff polynomial_invariant_27.txt "${sourcepath}"/output/polynomial_invariant_27.txt || exit $?
