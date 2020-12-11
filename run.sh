#!/bin/bash
dir_name=$(cd `dirname $0`; pwd)
container_name="${dir_name##*/}_${1}_1"
echo "run \"docker exec -it ${container_name} /bin/bash\"" 
docker exec -it ${container_name} /bin/bash
