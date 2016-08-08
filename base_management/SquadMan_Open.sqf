  _handle = createDialog "Sqdman_Dialog";
  waitUntil {dialog};
  
  
 _playerGroup = group player;
{
    _Name = name _x;
    _index = lbAdd [1500, format["%1 %2", [_x] call Rank_Abbrev, name _x]];
    /*
    switch (_x select 7) do
    {
      case "Ready": {
        lbSetColor [1500, _index, [1, 1, 1, 1]];
      };
      
      case "Injured": {
        lbSetColor [1500, _index, [1, 0, 0, 1]];
      };
      
      case "Operating": {
        lbSetColor [1500, _index, [0, 1, 0, 1]];
      };
      
      case "Healed": {
        lbSetColor [1500, _index, [1, 1, 1, 1]];
      };  
    }; */
} forEach units _playerGroup;
lbSetCurSel [1500, 0];



