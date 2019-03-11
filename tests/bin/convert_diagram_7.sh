#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=xyz --output-format=gauss --projection=0.58288,-0.729467,-0.357952 --closure-method=direct --output=convert_diagram_7.txt "${sourcepath}"/input/input0.xyz || exit $? 
diff convert_diagram_7.txt "${sourcepath}"/output/convert_diagram_7.txt || exit $?
