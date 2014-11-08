for prefix in {64..160}
do
  prefix_size="${#prefix}"
  if [ $prefix_size -eq 2 ]
  then
    prefix="0$prefix"
  fi
  count=`echo "$prefix - $prefix_size" | bc`
  placeholder=`ruby -e "print '-' * $count"`
  touch "$prefix$placeholder.mp3"
done
