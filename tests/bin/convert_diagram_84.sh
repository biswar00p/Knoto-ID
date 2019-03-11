#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=pd --projection=-0.847171,0.342584,-0.406125 --closure-method=direct --output=convert_diagram_84.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff convert_diagram_84.txt "${sourcepath}"/output/convert_diagram_84.txt || exit $?
