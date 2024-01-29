Class Game.Partida Extends %Persistent [ ClassType = persistent ]
{

Property MatchID As %Integer;

Relationship TeamHome As Game.Team [ Cardinality = one, Inverse = MatchHome ];

Relationship TeamAway As Game.Team [ Cardinality = one, Inverse = MatchAway ];

Relationship Goals As Game.MatchGoal [ Cardinality = children, Inverse = Match ];

Index main On MatchID [ IdKey, PrimaryKey, Unique ];

Storage Default
{
<Data name="PartidaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>TeamHome</Value>
</Value>
<Value name="3">
<Value>TeamAway</Value>
</Value>
</Data>
<DataLocation>^Game.PartidaD</DataLocation>
<DefaultData>PartidaDefaultData</DefaultData>
<IdLocation>^Game.PartidaD</IdLocation>
<IndexLocation>^Game.PartidaI</IndexLocation>
<StreamLocation>^Game.PartidaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
