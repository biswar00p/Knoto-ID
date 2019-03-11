#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=-0.220366,0.885801,0.408406 --closure-method=direct --output=convert_diagram_22.txt "${sourcepath}"/input/input1.xyz || exit $? 
diff convert_diagram_22.txt "${sourcepath}"/output/convert_diagram_22.txt || exit $?
