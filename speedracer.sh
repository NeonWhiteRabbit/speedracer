#!/bin/bash
#Another bash script by n3on
#   @n3onhacks on twitter

#Ascii Art

echo ""
echo ""
echo ""
echo ""
echo "                                              ...-::::::::::::-.."
echo "                                .:/+ssyhdmmNNNNMMMMMMMMNNNNNmmmdddhhys+/-"
echo "                     .-:+osyyosmNMMMMMMMMNmdddhdhhhyyhyo:.-++++++++///:. ..   "
echo "              .:+oydmmmddmmdomMMMMMds+:-.  -mNNNNNMMMMMMN/oMMMMMMMMMMNN-/NNNNmmmdhyys/ ---"
echo "         :+syhhyyyyyhhhddmmsyMMMMMMh:      +MMMMMhoyMMMMMhdMMMMMyyyyyyo dMMMMMNNNMMMM/ mNNNmmdys/-"
echo "    :/oso+/-...-yhdhhhhhdddy+NMMMMMMNmh+.  hMMMMM: -NMMMmoNMMMMMmmmddh./MMMMMMdyssss+ oMMMMMNMMMMNh:"
echo "   .-.   -+ooso++yyyyyhhhhhhyohNMMMMMMMMNs-NMMMMm-+mMmho.sMMMMMNmmmmms mMMMMMNNNNMMN--NMMMMN:-hMMMMN-"
echo "         ..      -.. -oo+//:-. -+hNMMMMMMMdMMMMMy-//-.   dMMMMMs+++++ +MMMMMMs+++//: yMMMMMs .yMMMMN-"
echo "                                  yMMMMMMMMMMMMM+       -MMMMMMMMMMMy mMMMMMMMNNNNm.:NMMMMMdhmMMMMm/"
echo "                               -/hNMMMMMMMMMMMMN.    .--/yysooooyhddo+yhdoyddddddds:sdyhddmmdddhs/."
echo "                           -+sdNMMMMMMMMMMMMMMh:  -hmmNNo    -smNMMMNMNMm.dMMMMMMMMNNd ymNmmmmdhyyo/."
echo "                      -:ohmNMMMMMMMMNmdmMMMMMMN- .mMMMMMm   oNMMMNy:-/yNy:MMMMMmsssss/:NMMMMmdmNMMMMm."
echo "                 .:oydNNNmddMMMMMMMh-. .NMMMMMM- hMMMMMMM: sMMMMN+     --sMMMMMNddhhs hMMMMN:./mMMMMh"
echo "            -:+yhhdhso/:---:MMMMMMMs   /MMMMMMy yMMMMMMMMs/NMMMMy        mMMMMNddddd/:NMMMMmsdNMMNd+"
echo "         :/+//:-....-:+shddoMMMMMMM+  +NMMMMNs oMMMydMMMMmyMMMMM+  .sddo/MMMMMd/+/+: hMMMMNsNMMMMd-   -:."
echo "             .-/osyhddhhhdhsMMMMMMM+/dMMMMNh: /NMMMdNMMMMMhMMMMMmoodMMh.hMMMMMMMMMM/:MMMMMs :hNMMMmy:.:/-"
echo "             os+/osyyyyso/:yMMMMMMMNMMMMMMd- :NMMNmmdNMMMMhyNMMMMMMMmo .dmmddddhhhy +yyyyy.   :sdNMMNmyo/--."
echo "                 --.       dMMMMMMNomMMMMMMmsmMMN+.  hMMNNd :oyddhs/.   .                        -/+oosoo/:-"
echo "                           mMMMMMMd .smMMMMMMMMMd-.  :+/:-."
echo "                      .:+s/NMMMMMMh   ./ymNNMMMMMNmdhyysso/.               sP33d R4c3r v.1.0"
echo "                   :shmmdh/MMMMMMMy        -:/osyyysoo/:-                         by n3on"
echo "                   /yhhhdh/MMNmdy+-                                                   @n3onhacks" 
echo "               ./shhyyhhhh/o/-"
echo "              .sssyhdho/-"
echo "            -+ydds/-"
echo "          :dho:" 
echo ""
echo "============================================================================================================"  
echo "                                            LET'S GO SPEED RACER!" 
echo "============================================================================================================" 
echo ""



#Get Cookie
curl -L -i http://subdomains.whoisxmlapi.com > getcookies.txt
cat getcookies.txt | grep "XSRF-TOKEN=" | cut -d ":" -f 2 | cut -d " " -f 2 > xsrf.txt

#Currently working without session, keeping here for potential future need
#cat getcookies.txt | grep "emailverification_session" | cut -d ":" -f 2 | cut -d " " -f 2 > emailver1.txt
#cat emailver1.txt | cut -d ";" -f 1 > emailver2.txt
#cat emailver2.txt | cut -d "=" -f 2 > emailver.txt

#Create bash file
echo "#!/bin/bash" > rungrab.sh

#Curl request
echo "curl -i -s -k -X $'POST' \
    -H $'Host: subdomains.whoisxmlapi.com' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H $'Accept: application/json, text/plain, */*' -H $'Accept-Language: en-US,en;q=0.5' -H $'Referer: https://subdomains.whoisxmlapi.com/' -H $'X-Requested-With: XMLHttpRequest' -H $'X-Csrf-Token: 2HigffnDBYiChTQ2eMFcsrNnKrwLzHKzUuyD47X9' -H $'Content-Type: application/json' -H $'Content-Length: 75' -H $'Origin: https://subdomains.whoisxmlapi.com' -H $'Dnt: 1' -H $'Te: trailers' \
    -b $'$(cat xsrf.txt); emailverification_session=eyJpdiI6Ijh1RHdNa0xxQzRkMlpDd3RZa0JhU3c9PSIsInZhbHVlIjoiSmpkRVpzbEdoNUQyQk1NQzNBUXRhcGJZa21WSnBpNzVOREtPVHQ5SW5rNGlwS0pqcXZBNkdXOEpndDZ3dWpud3ZnQVpXQUJhWW96WUMrcUtsVGUra3cxQzhPVjNyM1RhOGFsZTllTng1Vkg0MEtGNTI0MmZhaGk0cjRqTFNcL0xiIiwibWFjIjoiN2JkODk4Y2U0NzU1NzgzYjU5MGNmMzc5MTliNzYxMzc2MzhhMmUzNGRkYjgwY2U5MmMyOTQ2NzQ0YjQyZjg1NCJ9' \
    --data-binary $'{\"g-recaptcha-response\":null,\"search\":\"$1\",\"lookup\":true,\"\":\"$1\"}' \
    $'https://subdomains.whoisxmlapi.com/api/lookup'" >> rungrab.sh

#Fix permissions, run new bashfile, put results into new text file
chmod 777 rungrab.sh
./rungrab.sh > resultsgrab.txt

#Grab URL, put it into new file
cat resultsgrab.txt | grep "lookup-report" > grabit.txt

curl $(cat grabit.txt) > rezultz.txt

#Clean up response with domains
cat rezultz.txt | grep ".$1" | sed -r 's/[&]+/ /g' | tr " " "\n" | grep ".$1" > rezultz2.txt

cat rezultz2.txt | cut -d ";" -f 2 > shit.txt
grep -v "=" shit.txt > rezultz3.txt
grep -v ">" rezultz3.txt >> rock.txt

#Put clean domains into final file
curl --silent --insecure https://sonar.omnisint.io/subdomains/$1 | grep -oE "[a-zA-Z0-9._-]+\.$1" >> rock.txt

echo "Cleaning up..."
awk '!a[$0]++' rock.txt > $2
wc -l $2 | cut -d " " -f 1 > rock2.txt
echo ""
echo ""
echo "============================================================================================================"  
echo "     After cleaning duplicates there have been $(cat rock2.txt) subdomains found. Find them at $2."
echo "============================================================================================================" 
echo ""
echo "                                       \'C0c4inez a h3ll 0f a drUg\'"


#Remove Temp Files
rm getcookies.txt
rm rock.txt
rm rock2.txt
rm xsrf.txt
rm rungrab.sh
rm resultsgrab.txt
rm grabit.txt
rm rezultz.txt
rm shit.txt
rm rezultz2.txt
rm rezultz3.txt
