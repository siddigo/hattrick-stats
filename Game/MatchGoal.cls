Class Game.MatchGoal Extends %Persistent [ ClassType = persistent ]
{

Relationship MatchID As Game.Match [ Cardinality = parent, Inverse = MatchGoals ];

Property TeamID As Game.Team(CAPTION = "Game.Team");

Property GoalID As %Integer;

Property PlayerID As Game.Player(CAPTION = "Player.Team");

Property PlayerTeamID As Game.Team(CAPTION = "Game.Team");

Property MatchTime As %Integer;

Index main On GoalID [ IdKey, PrimaryKey, Unique ];

Index TeamPlayersGoals On (TeamID, PlayerID, GoalID);

Index TeamGoals On (TeamID, GoalID);

Storage Default
{
<Data name="MatchGoalDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TeamID</Value>
</Value>
<Value name="3">
<Value>PlayerID</Value>
</Value>
<Value name="4">
<Value>PlayerTeamID</Value>
</Value>
<Value name="5">
<Value>MatchTime</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("MatchGoals")</DataLocation>
<DefaultData>MatchGoalDefaultData</DefaultData>
<IdLocation>^Game.MatchC("MatchGoals")</IdLocation>
<IndexLocation>^Game.MatchGoalI</IndexLocation>
<StreamLocation>^Game.MatchGoalS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
