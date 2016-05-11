function aliasSH(){
FILE="/Users/hocnguyen/.bash_profile"
HIS=$SHELL'/history.txt'
echo 'alias '$1'="sh $SHELL/"'$2 > line.txt
CMD="$(cat line.txt)"
CMD=$CMD FILE=$FILE sh $SHELL/insertEndFile.sh 
source $FILE
echo $1'  --  des: '$3 > historytmp.txt
CMH="$(cat historytmp.txt)"
CMD=$CMH FILE=$HIS sh $SHELL/insertEndFile.sh 
}

aliasSH $1 $2 $3
