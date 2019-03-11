#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --names-db=internal --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=open --output=knotted_core_74.txt --output-search=knotted_core_74_search.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff knotted_core_74.txt "${sourcepath}"/output/knotted_core_74.txt || exit $?
diff knotted_core_74_search.txt "${sourcepath}"/output/knotted_core_74_search.txt || exit $?
