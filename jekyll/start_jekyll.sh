scriptname=jekyll
destdir=/blog
localdir=~/Dropbox/data/writings/blog

command="docker run -p 4000:4000 --rm -t -i -v $localdir:$destdir/source $scriptname-image"

if [[ ! -d $localdir ]]
  then  cd ~/dockerfiles/$scriptname/ 
fi

if [[ -d $localdir ]]
  then  $command
else echo "Can't find $localdir. Fix this and try again."

fi

