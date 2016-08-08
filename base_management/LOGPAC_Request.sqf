_handle = createDialog "LOGPAC_Request_Dialog";  
waitUntil {dialog};

Current_Class_Selection = -1;

// Dialog interfaces
_TypeSelect = 2100;
_ItemSelect = 2101;
_UnitCost = 1002;
_NumberRequest = 1400;
_TotalCost = 1005;


// Type of support request
{
    _index = lbAdd[_TypeSelect, _x select 0];
} forEach LOGPAC_Dialog_Helper; 
lbSetCurSel [_TypeSelect, 0];
_SelectedArray = [];

Counter = 0;

while {dialog} do
{  
    _Type = lbCurSel _TypeSelect;
    _CostMultiplier = (LOGPAC_Dialog_Helper select _Type) select 2;        
    
    // If the user has changed the class, generates sub menus appropriately
    if (Current_Class_Selection != _Type) then {
        _SelectedArray = LOGPAC_Dialog_Helper select _Type;
        
        // Replaces old item types with the items from the newly selected class        
        lbClear _ItemSelect;        
        {
            _Cost = (_x select 2) * _CostMultiplier;
            _ItemString = (_x select 0) + "  (" + str(_Cost) + "CP)";            
            _index = lbAdd[_ItemSelect, _ItemString];
        } forEach (_SelectedArray select 1);
        lbSetCurSel [_ItemSelect, 0];
        
        Current_Class_Selection = _Type;        
    };
    
    // Calculate the unit cost of the item
    _CurrentItem = lbCurSel _ItemSelect;
    _CurrentItemArray = (_SelectedArray select 1) select _CurrentItem;    
    _Cost = (_CurrentItemArray select 2) * _CostMultiplier;    
    ctrlSetText [_UnitCost, str(_Cost)];
    
    // Read number requested by the player
    _QtyRequested = parseNumber ctrlText _NumberRequest;
    
    // Disallows negative numbers
    if (_QtyRequested < 0) then {
        _QtyRequested = 0;        
    };
    
    // Calculate the total cost
    ctrlSetText [_TotalCost, str(_Cost * _QtyRequested)];
    
    sleep 0.1;  
    counter = counter + 1;
};
