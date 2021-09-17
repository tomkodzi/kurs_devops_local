while true
do
curl http://nginx2/status >> status_file.txt
sleep 5
done
