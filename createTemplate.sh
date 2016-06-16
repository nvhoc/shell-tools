#!/bin/sh

if [ $1 != "" ]
then
 mkdir $1
 echo '<template name=""></template>' > $1/$1.html
 echo '' > $1/$1.js
 echo '' > $1/$1.scss
fi
