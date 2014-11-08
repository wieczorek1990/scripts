for file in *.mp3
do
  name=`basename "$file" '.mp3'`
  length=${#name}
  echo $name
  echo $length
  if [ "$length" -gt 95 ]
  then
    echo "mv $file ${name:0:95}.mp3"
    #mv "$file" "${name:0:95}.mp3"
  fi
done
