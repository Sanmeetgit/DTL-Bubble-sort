# Sorting the array in Bash  
# using Bubble sort 
  
# Static input of Array 
arr=( 100 500 200 400 300 ) 
  
echo "Array in original order:"
echo ${arr[*]} 

len=${#arr[@]}
  
# Performing Bubble sort  
for ((i = 0; i<len; i++)) 
do
      
    for((j = 0; j<len-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
  
echo "Array in sorted order :"
echo ${arr[*]}
