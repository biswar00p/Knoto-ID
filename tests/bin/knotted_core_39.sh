#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --cyclic-input --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=rays --output=knotted_core_39.txt --output-search=knotted_core_39_search.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff knotted_core_39.txt "${sourcepath}"/output/knotted_core_39.txt || exit $?
diff knotted_core_39_search.txt "${sourcepath}"/output/knotted_core_39_search.txt || exit $?
