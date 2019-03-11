#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//knotted_core --names-db=internal --cyclic-input --projections-list="${sourcepath}"/input/input_projections.txt --closure-method=rays --output=knotted_core_53.txt --output-search=knotted_core_53_search.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff knotted_core_53.txt "${sourcepath}"/output/knotted_core_53.txt || exit $?
diff knotted_core_53_search.txt "${sourcepath}"/output/knotted_core_53_search.txt || exit $?
