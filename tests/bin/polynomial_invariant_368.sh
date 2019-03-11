#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//polynomial_invariant --names-db=internal --input-format=pd --nb-moves-III=100000 --output=polynomial_invariant_368.txt "${sourcepath}"/input/input_diagram_closed_0.txt || exit $? 
diff polynomial_invariant_368.txt "${sourcepath}"/output/polynomial_invariant_368.txt || exit $?
