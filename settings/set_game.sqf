_NATO_AI_SKILL = parseNumber ctrlText 1400;
_NATO_AI_VARIANCE = parseNumber ctrlText 1403;
_NATO_WARCOM = parseNumber ctrlText 1406;
_NATO_AP = parseNumber ctrlText 1413;
_NATO_CP = parseNumber ctrlText 1416;

_CSAT_AI_SKILL = parseNumber ctrlText 1401;
_CSAT_AI_VARIANCE = parseNumber ctrlText 1404;
_CSAT_WARCOM = parseNumber ctrlText 1407;
_CSAT_AP = parseNumber ctrlText 1414;

_AAF_AI_SKILL = 35;
_AAF_AI_VARIANCE = 5;
_AAF_WARCOM = 0;
_AAF_AP = 0;

if (AAF_Active) then {
    _AAF_AI_SKILL = parseNumber ctrlText 1402; 
    _AAF_AI_VARIANCE = parseNumber ctrlText 1405;
    _AAF_WARCOM = parseNumber ctrlText 1408;
    _AAF_AP = parseNumber ctrlText 1415;
};

_WARCOM_Min = parseNumber ctrlText 1409;
_WARCOM_Max = parseNumber ctrlText 1410;
_WARCOM_Dist = parseNumber ctrlText 1411;
_Mission_Dist = parseNumber ctrlText 1412;


// Error checking variables - set to TRUE when it passes all tests.
_ErrorCheck_AI = false;
_ErrorCheck_WARCOM_Count = false;
_ErrorCheck_WARCOM_Chars = false;
_ErrorCheck_AP = false;
_ErrorCheck_CP = false;


// Error checking for AI inputs
if (_NATO_AI_SKILL < 0 || _NATO_AI_SKILL > 100 ||
    _CSAT_AI_SKILL < 0 || _CSAT_AI_SKILL > 100 ||
    _AAF_AI_SKILL < 0  || _AAF_AI_SKILL > 100 || 
    _NATO_AI_VARIANCE < 0 || _NATO_AI_VARIANCE > 100 ||
    _CSAT_AI_VARIANCE < 0 || _CSAT_AI_VARIANCE > 100 ||
    _AAF_AI_VARIANCE < 0  || _AAF_AI_VARIANCE > 100) then {
    hintC "ERROR: AI Skill numbers and variance must be between 0 and 100";
    sleep 0.001;
    hintSilent "";    
} else {
    _ErrorCheck_AI = true;
};
   
// Error checking for WARCOM zone inputs
if (_NATO_WARCOM < 0 || _CSAT_WARCOM < 0 || _AAF_WARCOM < 0 ||
    _NATO_WARCOM + _CSAT_WARCOM + _AAF_WARCOM > MaxWARCOMZones ||
    _CSAT_WARCOM + _AAF_WARCOM <= 0) then {
    
    hintC format ["ERROR: CSAT or AAF must control at least one zone and totals cannot exceed %1 zones.", MaxWARCOMZones];
    sleep 0.001;
    hintSilent "";   
} 
else {
    _ErrorCheck_WARCOM_Count = true;
};


// Error checking for WARCOM characteristics
if (_WARCOM_Min > _WARCOM_Max || _WARCOM_Min < 250 || _WARCOM_Max > 2000) then 
{
    hintC "ERROR: MaxRadius cannot exceed 2000m and MinRadius cannot be less than 250m.  Also, ensure MaxRadius is larger than MinRadius.";
    sleep 0.001;
    hintSilent "";
}
else {
    if (_WARCOM_Dist < 1000 || _Mission_Dist < 1000) then {
        hintC "ERROR: Zones and missions must have a max distance of at least 1000m.";
        sleep 0.001;
        hintSilent "";
    } else {
        _ErrorCheck_WARCOM_Chars = true;
    };    
};

if (_NATO_AP < 0 || _CSAT_AP < 0 || _AAF_AP < 0) then {
    hintC "ERROR: Army Power must be a positive number.";
    sleep 0.001;
    hintSilent "";
}
else {
    _ErrorCheck_AP = true;
};



if (_NATO_CP < 0) then {
    hintC "ERROR: Command Points must be a positive number.";
    sleep 0.001;
    hintSilent "";
}
else {
    _ErrorCheck_CP = true;
};



if (_ErrorCheck_AI && _ErrorCheck_WARCOM_Count && _ErrorCheck_WARCOM_Chars && _ErrorCheck_AP && _ErrorCheck_CP) then
{
    _NATO_AI_SKILL_LOW = _NATO_AI_SKILL - _NATO_AI_VARIANCE max 0;
    _NATO_AI_SKILL_HIGH = _NATO_AI_SKILL + _NATO_AI_VARIANCE min 100;
    NATO_AI_Skill = [_NATO_AI_SKILL_LOW, _NATO_AI_SKILL_HIGH];
    NATO_Zones = _NATO_WARCOM;
    NATO_AP = _NATO_AP;
    NATO_CP = _NATO_CP;
    
    _CSAT_AI_SKILL_LOW = _CSAT_AI_SKILL - _CSAT_AI_VARIANCE max 0;
    _CSAT_AI_SKILL_HIGH = _CSAT_AI_SKILL + _CSAT_AI_VARIANCE min 100;
    CSAT_AI_Skill = [_CSAT_AI_SKILL_LOW, _CSAT_AI_SKILL_HIGH];
    CSAT_Zones = _CSAT_WARCOM;
    CSAT_AP = _CSAT_AP;
    
    _AAF_AI_SKILL_LOW = _AAF_AI_SKILL - _AAF_AI_VARIANCE max 0;
    _AAF_AI_SKILL_HIGH = _AAF_AI_SKILL + _AAF_AI_VARIANCE min 100;
    AAF_AI_Skill = [_AAF_AI_SKILL_LOW, _AAF_AI_SKILL_HIGH];
    AAF_Zones = _AAF_WARCOM;
    AAF_AP =_AAF_AP;
    
    WARCOM_Size = [_WARCOM_Min, _WARCOM_Max];
    WARCOM_Dist = _WARCOM_Dist;
    Mission_Dist = _Mission_Dist;
    
    //player globalchat format["NATO: %1  CSAT: %2  AAF: %3", NATO_AI_Skill, CSAT_AI_Skill, AAF_AI_Skill];
    //player globalchat format["Zones: %1 %2 %3", NATO_Zones, CSAT_Zones, AAF_Zones];
    
    closeDialog 0;
}
else {
    player globalchat "Did not pass all checks.";
};






