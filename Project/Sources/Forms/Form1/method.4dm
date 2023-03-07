

If (Form event code:C388=On Load:K2:1)
	
	
	Form:C1466.value:=cs:C1710.ListBoxModel.new()
	Form:C1466.value.key:="name"
	Form:C1466.value.wrapped:=New collection:C1472(New object:C1471("name"; "Eric"); New object:C1471("name"; "Vincent"))
	
End if 