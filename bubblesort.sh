echo "Enter the limit of array :"
read n
echo "Enter the numbers in array :"
for (( i = 0; i < $n; i++ ))
do
	read nos[$i]
done
echo "Number in an array are :"
for (( i = 0; i < $n; i++ ))
do
	echo ${nos[$i]}
done
for (( i = 0;i < $n ; i++ ))
do
	for (( j = $i; j < $n; j++ ))
	do
	if [ ${nos[$i]} -lt ${nos[$j]} ];then
	t=${nos[$i]}
	nos[$i]=${nos[$j]}
	nos[$j]=$t
fi
done
done
echo "Sorted array in descending order :"
for (( i=0; i < $n; i++ ))
do
	echo ${nos[$i]}
done
