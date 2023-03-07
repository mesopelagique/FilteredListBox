Class constructor
	This:C1470.key:=""
	This:C1470.wrapped:=New collection:C1472
	This:C1470.searchText:=""
	
Function get wrapped : Collection
	return This:C1470._wrapped
	
Function set wrapped($new : Collection)
	This:C1470._wrapped:=$new
	This:C1470._filter()
	
Function get searchText : Text
	return This:C1470._searchText
	
Function set searchText($new : Text)
	This:C1470._searchText:=$new
	This:C1470._filter()
	
Function _filter()
	If (Length:C16(String:C10(This:C1470._searchText))=0)
		This:C1470.collection:=This:C1470._wrapped.copy()
	Else 
		This:C1470.collection:=New collection:C1472
		var $value : Variant
		For each ($value; This:C1470._wrapped)
			
			If (Position:C15(This:C1470._searchText; $value[This:C1470.key])>0)  // TODO: REPLACE BY MATCHING FUNCTION
				This:C1470.collection.push($value)
			End if 
			
		End for each 
	End if 