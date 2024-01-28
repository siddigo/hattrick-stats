Class Game.Team Extends %Persistent [ ClassType = persistent ]
{

Property TeamID As %Integer;

Property Name As %String;

Property Logo As %String;

Property Manager As Game.User(CAPTION = "Game.User");

Relationship MatchHome As Game.Match [ Cardinality = many, Inverse = TeamHome ];

Relationship MatchAway As Game.Match [ Cardinality = many, Inverse = TeamAway ];

Index main On TeamID [ IdKey, PrimaryKey, Unique ];

Storage Default
{
<Data name="TeamDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Logo</Value>
</Value>
<Value name="4">
<Value>Manager</Value>
</Value>
</Data>
<DataLocation>^Game.TeamD</DataLocation>
<DefaultData>TeamDefaultData</DefaultData>
<IdLocation>^Game.TeamD</IdLocation>
<IndexLocation>^Game.TeamI</IndexLocation>
<StreamLocation>^Game.TeamS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
