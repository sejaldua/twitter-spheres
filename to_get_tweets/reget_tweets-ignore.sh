#GetOldTweets3 --username "ChickfilA" --since 2014-11-27 --maxtweets 10000
#rm tweets/fast\ food/output_ChickFilA.csv
#mv output_got.csv tweets/fast\ food/output_ChickfilA.csv

GetOldTweets3 --username "SouthwestAir" --since 2014-11-27 --maxtweets 10000
#rm tweets/airlines/output_SouthwestAir.csv
mv output_got.csv tweets/airlines/output_SouthwestAir.csv

GetOldTweets3 --username "SpiritAirlines" --since 2014-11-27 --maxtweets 10000
#rm tweets/airlines/output_SpiritAirlines.csv
mv output_got.csv tweets/airlines/output_SpiritAirlines.csv


