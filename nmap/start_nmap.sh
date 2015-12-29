scriptname=nmap
destdir=/root

command="docker run -t -i -v $(pwd)/perm:$destdir/perm $scriptname"

if [[ ! -d perm ]]
  then  cd ~/dockerfiles/$scriptname/ 
fi

if [[ -d perm ]]
  then  $command
else echo "Can't find perm. It lives next to the Dockerfile for this container. Try to cd there and try again."

fi

