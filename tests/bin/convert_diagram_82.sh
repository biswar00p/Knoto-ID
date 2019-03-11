#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=gauss --projection=0.553637,-0.6593,0.508732 --closure-method=direct --output=convert_diagram_82.txt "${sourcepath}"/input/input5.xyz || exit $? 
diff convert_diagram_82.txt "${sourcepath}"/output/convert_diagram_82.txt || exit $?
