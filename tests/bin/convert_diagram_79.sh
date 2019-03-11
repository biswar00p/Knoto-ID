#!/bin/bash
set -eo pipefail
sourcepath="$1"
../src//convert_diagram --input-format=xyz --output-format=gauss --projection=0.9032,-0.345083,-0.255239 --closure-method=open --output=convert_diagram_79.txt "${sourcepath}"/input/input4.xyz || exit $? 
diff convert_diagram_79.txt "${sourcepath}"/output/convert_diagram_79.txt || exit $?
