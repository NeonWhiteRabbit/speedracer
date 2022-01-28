#!/bin/bash

echo "Running..."

./main.sh > tmp.txt

yeahyeahyeahs=$(cat tmp.txt)


echo "#!/bin/bash" > tempp.sh

echo "openssl enc -d -aes-256-cbc -pass '${yeahyeahyeahs}' -in speedracer_.sh -out speedracer_tmp.sh" > tempp.sh

chmod 777 tempp.sh
./tempp.sh

chmod 777 speedracer_tmp.sh

./speedracer_tmp.sh $1 $2
