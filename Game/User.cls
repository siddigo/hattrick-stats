Class Game.User Extends %Persistent [ ClassType = persistent ]
{

Property UserID As %Integer;

Index main On UserID [ IdKey, PrimaryKey, Unique ];

Storage Default
{
<Data name="UserDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^Game.UserD</DataLocation>
<DefaultData>UserDefaultData</DefaultData>
<IdLocation>^Game.UserD</IdLocation>
<IndexLocation>^Game.UserI</IndexLocation>
<StreamLocation>^Game.UserS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
