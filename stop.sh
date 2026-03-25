echo "Stopping Jekyll server at 127.0.0.1:4000" && kill $(lsof -i :4000 | tail -1 | awk '{print $2}')
