!/bin/bash
k1="DEVICE_NAME"
i1="rtsp://ip:554"
k2="DEVICE_NAME"
i2="rtsp://ip:554"

cd /PATCH_to_directory 


echo "[-------------------------------- [`date +%F--%H-%M`] START --------------------------------]"

a=$k1
b=$i1
rm -f /PATCH_to_directory/$a.jpg
echo "$a.jpeg delete"
/usr/local/bin/ffmpeg -loglevel fatal -i $b -vframes 1 -r 1 -timeout 1 /PATCH_to_directory/$a.jpg
echo "save $a.jpeg"
if [ -!s "$a.jpeg"]
then
rm -f /PATCH_to_directory/$a.jpg
echo "$a.jpeg delete"
/usr/local/bin/ffmpeg -loglevel fatal -i $b -vframes 1 -r 1 -timeout 1 /PATCH_to_directory/$a.jpg
echo "save $a.jpeg"
else
fi

a=$k2
b=$i2
rm -f /PATCH_to_directory/$a.jpg
echo "$a.jpeg delete"
/usr/local/bin/ffmpeg -loglevel fatal -i $b -vframes 1 -r 1 -timeout 1 /PATCH_to_directory/$a.jpg
echo "save $a.jpeg"
if [ -!s "$a.jpeg"]
then
rm -f /PATCH_to_directory/$a.jpg
echo "$a.jpeg delete"
/usr/local/bin/ffmpeg -loglevel fatal -i $b -vframes 1 -r 1 -timeout 1 /PATCH_to_directory/$a.jpg
echo "save $a.jpeg"
else
fi


echo "[-------------------------------- [`date +%F--%H-%M`] КОНЕЦ Время работы скрипта $SECONDS сек--------------------------------]"
