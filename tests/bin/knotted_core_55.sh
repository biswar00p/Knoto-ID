#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --names-db="${sourcepath}"/input/input_knot_names.txt --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=rays --output=knotted_core_55.txt --output-search=knotted_core_55_search.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff knotted_core_55.txt "${sourcepath}"/output/knotted_core_55.txt || exit $?
diff knotted_core_55_search.txt "${sourcepath}"/output/knotted_core_55_search.txt || exit $?
