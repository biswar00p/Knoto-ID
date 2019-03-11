#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --names-db=internal --closure-method=direct --output=knotted_core_8.txt --output-search=knotted_core_8_search.txt "${sourcepath}"/input/input1.xyz || exit $? 
diff knotted_core_8.txt "${sourcepath}"/output/knotted_core_8.txt || exit $?
diff knotted_core_8_search.txt "${sourcepath}"/output/knotted_core_8_search.txt || exit $?
