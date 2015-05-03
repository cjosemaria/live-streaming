# $1 the channel name
# $2 the icecast password
# $3 the icecast port
cvlc v4l2:///dev/video0 :input-slave=alsa:// --sout '#transcode{vcodec=theo,vb=800,width=640,heigh=480,acodec=vorb,ab=64,channels=2,samplerate=44100}:duplicate{dst=std{access=shout,mux=ogg,dst=source:$2@150.214.150.68:$3/$1.ogg},dst=display}' :sout-keep
