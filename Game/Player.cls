Class Game.Player Extends %Persistent [ ClassType = persistent ]
{

Property PlayerID As %Integer;

Property Name As %String;

Property Team As Game.Team(CAPTION = "Game.Team");

Index main On PlayerID [ IdKey, PrimaryKey, Unique ];

Index TeamPlayers On (Team, PlayerID);

Storage Default
{
<Data name="PlayerDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Team</Value>
</Value>
</Data>
<DataLocation>^Game.PlayerD</DataLocation>
<DefaultData>PlayerDefaultData</DefaultData>
<IdLocation>^Game.PlayerD</IdLocation>
<IndexLocation>^Game.PlayerI</IndexLocation>
<StreamLocation>^Game.PlayerS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
