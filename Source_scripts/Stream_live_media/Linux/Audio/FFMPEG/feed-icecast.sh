# $1 the channel name
# $2 the icecast password
# $3 the icecast port

ffmpeg -stats -report -f alsa -i hw:0 -c:a libmp3lame -b:a 128k -legacy_icecast 1 -content_type audio/mpeg -ice_name "DemoStream" -f mp3 icecast://source:$2@150.214.150.68:$3/$1.ogg
