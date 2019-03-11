#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --projection=0.311603,-0.904473,-0.291261 --input-format=xyz --closure-method=direct --nb-moves-III=100000 --output=polynomial_invariant_0.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff polynomial_invariant_0.txt "${sourcepath}"/output/polynomial_invariant_0.txt || exit $?
