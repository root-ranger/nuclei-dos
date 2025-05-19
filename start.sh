cd nuclei
chmod +x nuclei

./nuclei -update-templates

for i in $(cat ../urls.txt); do
    ./nuclei -u $i -v -c 50 -rl 1000 -t /home/runner/http/cves/2018 -timeout 1
done