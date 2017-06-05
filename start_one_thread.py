#!/usr/bin/env python
# coding: utf-8

import os
import datetime
import threading

def download_file(id_name,ip):
  filename = id_name + ".jpg"
  retryes = 1
  filesize = 0
  directory = "ENTER DIRESTORY PATCH HERE, Example /var/www/rtsp/"
  while retryes<12 and filesize==0: #number of attempts = 11
    try:
      if os.path.exists(directory + filename):
        os.remove(directory + filename)
        print(filename + ' remove')
      print('Retryes ' + str(retryes))
      os.system("/usr/local/bin/ffmpeg -i "+ ip +" -vframes 1 -r 3 -timeout 1 "+ directory + filename)
      print(filename + " save")
      size = os.stat(directory + filename)
      filesize = size.st_size

    except Exception as e: print(e)
    retryes += 1
devices = [

{'id_name':'NAME','ip':'rtsp://ip:554'},
{'id_name':'NAME','ip':'rtsp://ip:554'}
]

print("[-------------------------------- [" + str(datetime.datetime.now()) + "] начало --------------------------------]")

for device in devices:
    download_file(device['id_name'],device['ip'])

print("[-------------------------------- [" + str(datetime.datetime.now()) + "]
