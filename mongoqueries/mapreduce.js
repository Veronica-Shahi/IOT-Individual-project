var mapFunction = function(){
	for (var i=0; i<this.Player.length; i++){
		var key = this.Publisher;
		var value = { PlayersCount:1, 
                              GoalScore:this.Player[i].GoalScore};
	emit(key,value);
	}
};
var reduceFunction = function (keyPlayer, valueScore){
	reducedVal ={ PlayersCount:0, GoalScore:0};
	for(var i=0; i<valueScore.length; i++ )
            {
		reducedVal.PlayersCount += valueScore[i].PlayersCount;
		reducedVal.GoalScore += valueScore[i].GoalScore;
            }
	return reducedVal;
}
db.Veronica_10278581_Games.mapReduce(
	mapFunction,
	reduceFunction,
		{
			out: "players_with_their_total_score"            
		}
).find({});