while true
do
curl http://nginx/status >> status_file.txt
sleep 5
done
