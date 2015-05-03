ffmpeg -f alsa -i default -f video4linux2 -s 640x480 -r 30 -i /dev/video0 -f avi - | ffmpeg2theora -a 0 -v 5 -f avi -x 640 -y 480 -o /dev/stdout - | oggfwd 150.214.150.68 4551 1qaz /$1.ogg
