#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --names-db="${sourcepath}"/input/input_knot_names.txt --cyclic-input --closure-method=direct --output=knotted_core_16.txt --output-search=knotted_core_16_search.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff knotted_core_16.txt "${sourcepath}"/output/knotted_core_16.txt || exit $?
diff knotted_core_16_search.txt "${sourcepath}"/output/knotted_core_16_search.txt || exit $?
