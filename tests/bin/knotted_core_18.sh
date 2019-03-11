#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --closure-method=direct --output=knotted_core_18.txt --output-search=knotted_core_18_search.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff knotted_core_18.txt "${sourcepath}"/output/knotted_core_18.txt || exit $?
diff knotted_core_18_search.txt "${sourcepath}"/output/knotted_core_18_search.txt || exit $?
