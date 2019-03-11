#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=0.299141,-0.834941,-0.461939 --closure-method=direct --output=convert_diagram_102.txt "${sourcepath}"/input/input6.xyz || exit $? 
diff convert_diagram_102.txt "${sourcepath}"/output/convert_diagram_102.txt || exit $?
