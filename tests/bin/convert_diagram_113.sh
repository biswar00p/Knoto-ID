#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=xyz --output-format=pd --projection=-0.711284,0.0258725,-0.702428 --closure-method=direct --output=convert_diagram_113.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff convert_diagram_113.txt "${sourcepath}"/output/convert_diagram_113.txt || exit $?
