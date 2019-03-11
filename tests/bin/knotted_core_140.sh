#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --planar --arrow-polynomial --names-db=internal --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=open --output=knotted_core_140.txt --output-search=knotted_core_140_search.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff knotted_core_140.txt "${sourcepath}"/output/knotted_core_140.txt || exit $?
diff knotted_core_140_search.txt "${sourcepath}"/output/knotted_core_140_search.txt || exit $?
