
JSONCODES=`echo $1 | base64 -d`

YOUTUBE_KEY=`echo $JSONCODES | jq -r '.youtube'`
TWITTER_KEY=`echo $JSONCODES | jq -r '.twitter'`

if [ $YOUTUBE_KEY ]; then
  echo "Emmiting to Youtube ..."
  ffmpeg -i rtmp://localhost/live/$1 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY &
  YOUTUBE_PID=$!
fi

if [ $TWITTER_KEY ]; then
  echo "Emmiting to Twitter ..."
  ffmpeg -i rtmp://localhost/live/$1 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmp://fr.pscp.tv:80/x/$TWITTER_KEY &
  TWITTER_PID=$!
fi

wait $YOUTUBE_PID
wait $TWITTER_PID

