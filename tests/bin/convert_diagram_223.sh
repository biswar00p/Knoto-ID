#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=gauss --closure-method=direct --output-format=gauss --output=convert_diagram_223.txt "${sourcepath}"/input/input_diagram_gauss_closed_0.txt || exit $? 
diff convert_diagram_223.txt "${sourcepath}"/output/convert_diagram_223.txt || exit $?
