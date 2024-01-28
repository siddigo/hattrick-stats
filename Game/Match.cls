Class Game.Match Extends %Persistent [ ClassType = persistent ]
{

Property MatchID As %Integer;

Relationship TeamHome As Game.Team[ Cardinality = one, Inverse = MatchHome ];

Relationship TeamAway As Game.Team[ Cardinality = one, Inverse = MatchAway ];

Relationship MatchGoals As Game.MatchGoal [ Cardinality = children, Inverse = MatchID ];

Index main On MatchID [ IdKey, PrimaryKey, Unique ];

Index HomeTeamMatches On (TeamIDHome, MatchID);

Index AwayTeamMatches On (TeamIDAway, MatchID);

Storage Default
{
<Data name="MatchDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TeamIDHome</Value>
</Value>
<Value name="3">
<Value>TeamIDAway</Value>
</Value>
</Data>
<DataLocation>^Game.MatchD</DataLocation>
<DefaultData>MatchDefaultData</DefaultData>
<IdLocation>^Game.MatchD</IdLocation>
<IndexLocation>^Game.MatchI</IndexLocation>
<StreamLocation>^Game.MatchS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
