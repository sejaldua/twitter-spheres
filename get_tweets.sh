counter=0
category=""
while IFS= read -r line;
do
	if [ $counter -eq 0 ]
	then
		mkdir "tweets/$line"	
		(( counter = counter + 1 ))	
		category=$line
	elif [ $counter -eq 11 ]
	then
		(( counter = 0 ))
	elif [ -f "tweets/$category/output_$line.csv" ]
	then
		echo "$line: already pulled"
	else
		echo "$line:"
		GetOldTweets3 --username "$line" --since 2014-11-27 --maxtweets 10000
		mv output_got.csv "tweets/$category/output_$line.csv"
		(( counter = counter + 1 ))	
	fi
done < twitter_accts.txt
