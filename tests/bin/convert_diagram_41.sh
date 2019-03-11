#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=xyz --output-format=pd --projection=-0.688403,-0.696786,-0.201471 --closure-method=open --output=convert_diagram_41.txt "${sourcepath}"/input/input2.xyz || exit $? 
diff convert_diagram_41.txt "${sourcepath}"/output/convert_diagram_41.txt || exit $?
