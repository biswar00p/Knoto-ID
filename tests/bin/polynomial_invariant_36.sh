#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --projection=0.324655,-0.573926,-0.751804 --input-format=xyz --closure-method=rays --nb-moves-III=100000 --output=polynomial_invariant_36.txt "${sourcepath}"/input/input1.xyz || exit $? 
diff polynomial_invariant_36.txt "${sourcepath}"/output/polynomial_invariant_36.txt || exit $?
