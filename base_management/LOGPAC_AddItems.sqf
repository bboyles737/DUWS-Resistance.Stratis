// Dialog interfaces
_TypeSelect = 2100;
_ItemSelect = 2101;
_NumberRequest = 1400;
_TotalCost = 1005;

_Type = lbCurSel _TypeSelect;
_ClassArray = (LOGPAC_Dialog_Helper select _Type) select 1;
_CostMultiplier = (LOGPAC_Dialog_Helper select _Type) select 2;
_Item = _ClassArray select (lbCurSel _ItemSelect);
_QtyRequested = parseNumber ctrlText _NumberRequest;

// Find the closest base to the player's location and use the Ammo Crate for that base.
_Distance = 999999;
_Selected_AmmoCrate = "";
{
    _BaseLocn = _x select 0;
    _DistToBase = player distance _BaseLocn;
    if (_DistToBase < _Distance) then 
    {
        _Distance = _DistToBase;
        _Selected_AmmoCrate = _x select 1;
    };
} forEach NATO_BaseArray;

// Disallows negative numbers
if (_QtyRequested < 0) then {
    _QtyRequested = 0;        
    player globalchat "Invalid number.";
}
else {
    // Total cost:
    _Cost = _Item select 2;
    _TotalCost = _Cost * _QtyRequested * _CostMultiplier;
    
    if (_TotalCost > NATO_CP) then {
        ["Insufficient CP"] call HUD_Error_Msg;
    }
    else 
    {    
        player globalchat format ["Total cost: %1", _TotalCost];

        _RequestType = (LOGPAC_Dialog_Helper select _Type) select 3;

        switch (_RequestType) do {
            case WeaponType: {      _Selected_AmmoCrate addWeaponCargo   [_Item select 1, _QtyRequested]; };        
            case ItemType1: {       _Selected_AmmoCrate addItemCargo     [_Item select 1, _QtyRequested]; };        
            case BackpackType: {    _Selected_AmmoCrate addBackpackCargo [_Item select 1, _QtyRequested]; };        
            case MagazineType: {    _Selected_AmmoCrate addMagazineCargo [_Item select 1, _QtyRequested]; };
            };    
        
        
        NATO_CP = NATO_CP - _TotalCost;
        [] call Update_CP;
        gamelogic1 globalchat format ["Item added to base: %1 x %2", _QtyRequested, _Item select 0];
    };
};
