Class Game.MatchGoal Extends %Persistent [ ClassType = persistent ]
{

Property TeamID As %Integer;

// Property TeamID As Game.Team(CAPTION = "Game.Team");

Property GoalID As %Integer;

// Property PlayerID As Game.Player(CAPTION = "Player.Team");

Property PlayerID As %Integer;

Property PlayerTeamID As %Integer;

// Property PlayerTeamID As Game.Team(CAPTION = "Game.Team");

Property MatchTimeMinute As %Integer;

Property MatchTimeSecond As %Integer;

Property MatchPart As %Integer;

Relationship Match As Game.Partida [ Cardinality = parent, Inverse = Goals ];

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
<Value name="6">
<Value>MatchPart</Value>
</Value>
<Value name="7">
<Value>MatchTimeMinute</Value>
</Value>
<Value name="8">
<Value>MatchTimeSecond</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("Goals")</DataLocation>
<DefaultData>MatchGoalDefaultData</DefaultData>
<IdLocation>^Game.PartidaC("Goals")</IdLocation>
<IndexLocation>^Game.MatchGoalI</IndexLocation>
<StreamLocation>^Game.MatchGoalS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
