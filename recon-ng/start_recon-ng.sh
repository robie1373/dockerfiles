scriptname=recon-ng
destdir=/recon-ng

command="docker run -t -i -v $(pwd)/perm:$destdir/perm $scriptname-image"

if [[ ! -d perm ]]
  then  cd ~/dockerfiles/$scriptname/ 
fi

  $command


