pid=$(lsof -i :4000 | tail -1 | awk '{print $2}')
if [ ! -z $pid ]; then
	echo "Port 4000 already in use; killing port"
	kill $pid
fi
bundle exec jekyll serve & sleep 1 && open "http://127.0.0.1:4000"
