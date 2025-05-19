cd nuclei
chmod +x nuclei

./nuclei -u http://employee.clubresorto.com -v -c 50 -rl 1000 -t 2018

for i in $(cat ../urls.txt); do
    ./nuclei -u $i -v -c 50 -rl 1000 -t 2018 -timeout 1
done