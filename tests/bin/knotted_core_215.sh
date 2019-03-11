#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --planar --arrow-polynomial --names-db=internal --cyclic-input --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=open --output=knotted_core_215.txt --output-search=knotted_core_215_search.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff knotted_core_215.txt "${sourcepath}"/output/knotted_core_215.txt || exit $?
diff knotted_core_215_search.txt "${sourcepath}"/output/knotted_core_215_search.txt || exit $?
