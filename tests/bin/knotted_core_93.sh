#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --planar --arrow-polynomial --cyclic-input --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=open --output=knotted_core_93.txt --output-search=knotted_core_93_search.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff knotted_core_93.txt "${sourcepath}"/output/knotted_core_93.txt || exit $?
diff knotted_core_93_search.txt "${sourcepath}"/output/knotted_core_93_search.txt || exit $?
