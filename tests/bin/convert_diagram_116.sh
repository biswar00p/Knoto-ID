#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --close-diagram --input-format=xyz --output-format=pd --projection=0.950234,0.251045,-0.184474 --closure-method=direct --output=convert_diagram_116.txt "${sourcepath}"/input/input7.xyz || exit $? 
diff convert_diagram_116.txt "${sourcepath}"/output/convert_diagram_116.txt || exit $?
