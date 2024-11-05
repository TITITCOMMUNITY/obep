--- TITITCOMUNITY SMALL OBFUSCATOR
--- Creator : bilsx.

GO = 0x5a5

FILENAME = "TEST1234"
code =[==[
print(A)
]==]

local function obfuscate(inputString) local kanjiString = "" AYAM = GO for i = 1, #inputString do local charCode = inputString:byte(i) kanjiString = kanjiString .. utf8.char(AYAM + charCode) end return kanjiString end local concat = function(...) return table.concat({...}, "") end local a = "" code = code:gsub("(%-%-%[(=*)%[.-%]%2%])", "") code = code:gsub("(%-%-[^\r\n]*)", "") local function changeString(x) return concat("\"", x:gsub(".", function(d) return "\\" .. string.byte(d) end), "\"") end local function changeString2(x) local x2 = "\"" local x3 = "" for _,__ in x:gmatch("%[(=*)%[(.-)%]%1%]") do x3 = __:gsub(".", function(d) return "\\" .. string.byte(d) end) end return concat(x2, x3, x2) end local function GenerateSomeFluff() local randomTable = { "ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؍ؖؓؒ؟؍ؚؚؓؐ؝؍؏؛�����e�eze����Oeeee�����mg���������e�eze��eee�������e�e�������epevO���O؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ�����e�eze��؊؝؈؉ؙؒ؟؞ؗ؏ؙ؏؍،ؕ،؉ؙ؉ؚ؊ؙ؇؞؇ؓ؊،ؙؚؗ؟ؙؖ؈؉ؓ؈؇؋ؑ؛ؙؔ؇؊؟؋؝؉؟؇؜؇؆؝ؕ؊؊ؐ؝؛؏ؔؕؑؗ؈ؙؓ؍؟ؕ؜ؙؖ؆ؙ؛؞؜؛؟ؙ؝؟ؗؒ؊؛؝؈ؖ،ؖ؋ؘ؎؎،؇ؖ؋ؖؓ؟؍ؘؔ؈ؒؕ؞ؑ؎؜ؑ؆؎ؕ؛،ؗؒؒ؍ؘ؊ؖ؇ؘؐؗؖ؏؊ؘؕؖ؎ؙ؋؝ؗؖ،ؓ؈،؜ؗ؈؈؏ؔؕؗ؍ؚ؍؎؊؟؆؛؎؊ؑ؞؝ؘؙ؉ؗ؏ؚ؞؝؜؋ؚؔ؍؝؝؜ؒؔ؊؍؜ؒؒ؜ؒ؍؊ؘؗ؉ؕؒ؛ؘ؊؋ؒ؉؉؏؎؞؝ؖ؛؛ؒ؎ؐؗؕ،؉؇؈ؖ؏؍؎؈ؑ؞ؕ،ؙؗؒ؊؜ؖؓ؋ؔؑ؛ؐ،؎ؘؖ؟؎؝؉ؐ؆ؚؚ؍؈؜ؘ؇ؑ؟ؘ؋ؒ؜؛؇؈؞؊ؒ؋؛؍؏؜؎؛ؗ؆،ؚؖ؛؎؋؋ؕ؈؏؏؍ؙ،ؖؔ؝ؗ؛ؘ؎ؖ؆ؓ؛ؖؖؓؐ؏ؘؚؗ؉؆؇ؗ؊ؘؖؔ؆؆؍،ؗ؜؊؎ؗ؜ؖ؎؝؊؊ؓ", "؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؍ؖؓؒ؟؍ؚؚؓؐ؝؍؏؛؝؇؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛؎؋؝؏ؗ؞ؕؗ؜ؑ؞ؐ؛ؗ؝ؒ؋؞؝؉؜ؖؑؖ؍ؚ؍ؑ؋؊؍ؔؐ؊؝؈؉ؙؒ؟؞ؗ؏ؙ؏؍،ؕ،؉ؙ؉ؚ؊ؙ؇؞؇ؓ؊،ؙؚؗ؟ؙؖ؈؉ؓ�����e�eze��؇؋ؑ؛ؙؔ؇؊؟؋؝؉؟؇؜؇؆؝ؕ؊؊ؐ؝؛؏ؔؕؑؗ؈ؙؓ؍؟ؕ؜ؙؖ؆ؙ؛؞؜؛؟ؙ؝؟ؗؒ؊؛؝؈ؖ،ؖ؋ؘ؎؎،؇ؖ؋ؖؓ؟؍ؘؔ�����e�eze��؞؝ؖ؛؛ؒ؎ؐؗؕ،؉؇؈ؖ؏؍؎؈ؑ؞ؕ،ؙؗؒ؊؜ؖؓ؋ؔؑ؛ؐ،؎ؘؖ؟؎؝؉ؐ؆ؚؚ؍؈؜ؘ؇ؑ؟ؘ؋ؒ؜؈؈؏؍ؗ؛؉؇؇ؚؑؗؑ", "؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؍ؖؓؒ؟؍ؚؚؓؐ؝؍؏؛؝؇؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛؎؋؝؏ؗ؞ؕؗ؜ؑ؞ؐ؛ؗ؝ؒ؋؞؝؉؜ؖؑؖ؍ؚ؍ؑ؋؊؍ؔؐ؊؝؈؉ؙؒ؟؞ؗ؏ؙ؏؍،ؕ،؉ؙ؉ؚ؊ؙ؇؞؇ؓ؊،ؙؚؗ؟ؙؖ؈؉ؓ؈؇؋ؑ؛ؙؔ؇؊؟؋؝؉؟؇؜؇؆؝ؕ؊؊ؐ؝؛؏ؔؕؑؗ؈ؙؓ؍؟ؕ؜ؙؖ؆ؙ؛؞؜؛؟ؙ؝؟ؗؒ؊؛؝؈ؖ،ؖ؋ؘ؎؎،؇ؖ؋ؖؓ؟؍ؘؔ؈ؒؕ؞ؑ؎؜ؑ؆؎ؕ؛،ؗؒؒ؍ؘ؊ؖ؇ؘؐؗؖ؏؊ؘؕؖ؎ؙ؋؝ؗؖ،ؓ؈،؜ؗ؈؈؏ؔؕؗ؍ؚ؍؎؊؟؆؛؎؊ؑ؞؝ؘؙ؉ؗ؏ؚ؞؝؜؋ؚؔ", "؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؍ؖؓؒ؟؍ؚؚؓؐ؝؍؏؛؝؇؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛؎؋؝؏ؗ؞ؕؗ؜ؑ؞ؐ؛ׅؗ׹׮׹׮׹ר״ײײ׺׳׮׹׾ׅ؝ؒ؋؞؝؉؜ؖؑؖ؍ؚ؍ؑ؋؊؍ؔؐ؊؝؈؉ؙؒ؟؞ؗ؏ؙ؏؍،ؕ،؉ؙ؉ؚ؊ؙ؇؞؇ؓ؊،ؙؚؗ؟ؙؖ؈؉ؓ؈؇؋ؑ؛ؙؔ؇؊؟؋؝؉؟؇؜؇؆؝ؕ؊؊ؐ؝؛؏ؔؕؑؗ؈ؙؓ؍؟ؕ؜ؙؖ؆ؙ؛؞", "؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؍ؖؓؒ؟؍ؚؚؓؐ؝؍؏؛؝؇؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛؎؋؝؏ؗ؞ؕؗ؜ؑ؞ؐ؛ؗ TITITCOMUNITY IN HERE", "CAN BEAT ME? ؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ TITITCOMUNITY IN HERE ؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ؛ؚؚؐ؝؋؎ؙ؍ؔؒؖ؏ؓ؞؝ؘؖ؉ؕ؆،؉ؚ؊ؐ؉؈؟؋ؓ؛ؕ DON'T TOUCH MY CODE �����e�������estring.byte��������O؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛�������e�eze��Oeeee�����mg�����qe���O؞ؓ؈؊ؗ؝؏؇؆ؑ؇،؟؝؜،ؔ؏ؙؓؗؓ؇ؑ؞؞ؘ؍ؙؖ؏ؗ؊ؑ؜؛��utf؎؊ؑ؞؝ؘؙ؉ؗ؏ؚ؞؝؜؋ؚؔ؍؝؝؜ؒؔ؊؍؜ؒؒ؜ؒ؍�f" } local x = math.random(1, #randomTable) if x > (#randomTable / 2) then local randomName = randomTable[x] return concat("(", changeString("TITITCOMUNITY(\"return " .. randomName .. "\")()"), ")\n") elseif x > 3 then return concat("(", changeString("TITITCOMUNITY(\"return " .. randomTable[x] .. "\")()"), ")\n") else return concat("(", changeString("TITITCOMUNITY(\"return " .. randomTable[x] .. "\")()"), ")\n") end end local function GenerateFluff() return GenerateSomeFluff() end local function minify(input) input = input:gsub("%-%-.-\n", "\n") input = input:gsub("%-%-%[%[.-%]%]", "") input = input:gsub("^%s+", ""):gsub("%s+$", "") input = input:gsub("%s+", " ") return input end v1 = obfuscate(code) v1 = changeString(v1) v1 = [[ _T1 = "TITITCOMMUNITY" _T2 = "SUBSCRIBE MY YOUTUBE CHANNEL" _T3 = "DONT PLAY PLAY BOSSQUU, KALAU ANDA NGANTUK TAK SEMPAT NGOPIII AMBIL SAJA BATAKOOOO." _T4 = "KALAU KAMU KEPO SAMA SAIYAAA CARI SAYA" _T5 = "JOIN MY DISCORD https://dsc.gg/TITITCOMMUNITY" _T6 = ]]..GenerateFluff()..[[ _T7 = load _T8 = string.char _T9 = table.concat _T10 = utf32 _T11 = utf8 _T12 = byte _T13 = tonumber _T14 = print _T15 = string _T16 = _T7]]..GenerateFluff()..[[ _T17 = ]]..GenerateFluff()..[[ _T18 =_T7 ]]..GenerateFluff()..[[ _T19 = _T7]]..GenerateFluff()..[[ _T20 = ( 42 * 5 + 54 + 69 )* 2 _T21 = _T7]]..GenerateFluff()..[[ _T22 = _T7(_T6:gsub("\\(%d+)", function(_T18) return _T15.char(_T13(_T18)) end)) _T23 = _T20 // 6 _T24 = "" _T25 = (]]..v1..[[) _T26 = ]]..GenerateFluff()..[[ _T27 = _T7]]..GenerateFluff()..[[ _T28 = _T7(_T25:gsub(_T11.charpattern, function(_T26) local _T16 = _T11.codepoint(_T26) - 0x5A5 _T24 = _T24 .. _T8(_T16) end)) _T29 = ]]..GenerateFluff()..[[ _T30 = _T7(_T17:gsub("\\(%d+)", function(_T18) return _T8(_T13(_T18)) end)) _T31 = ]]..GenerateFluff()..[[ _T32 = ]]..GenerateFluff()..[[ _T33 = _T7(_T26:gsub("\\(%d+)", function(_T18) return _T8(_T13(_T18)) end)) _T34 = _T7]]..GenerateFluff()..[[ _T35 = _T7]]..GenerateFluff()..[[ _T36 = _T7(_T24)() _T37 = _T7(_T26:gsub("\\(%d+)", function(_T18) return _T8(_T13(_T18)) end)) _T38 = ]]..GenerateFluff()..[[ _T39 = _T7(_T31) _T40 = _T36 _T41 = _T7(_T29 .. _T38) _T42 = ]]..GenerateFluff()..[[ _T43 = _T41 _T44 = _T8 _T45 = _T33 _T46 = _T7(_T6) _T47 = _T7(_T42) _T48 = ]]..GenerateFluff()..[[ _T49 = ]]..GenerateFluff()..[[ _T50 = ]]..GenerateFluff()..[[ ]] v1 = minify(v1) v4 = {string.dump(load(v1), true):byte(1,-1)} v4 = (table.concat(v4,[[\]])) 
x = [=[ 
--[[

▀█▀ █ ▀█▀ █ ▀█▀  
░█░ █ ░█░ █ ░█░  

█▀▀ █▀█ █▀▄▀█ █▀▄▀█ █░█ █▄░█ █ ▀█▀ █▄█
█▄▄ █▄█ █░▀░█ █░▀░█ █▄█ █░▀█ █ ░█░ ░█░

o̓͋̕b̾͆́f͒̽̐u͊͊͆s̓͛͘c͒͒̐a͋̔̐t͒͘͠e͌̾̒ b͛͘y̒͘͝ T̐͝͝I͑̔͝T͐͠͝I͆͝T̽̔͐C̀̐͋O͆̾͘M̾͛̕M̓́͝U͒̕͠Ń͌͘I̾͛͛T̒̀̚Ỳ́͝ 
discord : dsc.gg/TITITCOMMUNITY
]]--



















load("\]=]..v4..[=[")() 
]=]


io.output("/storage/emulated/0/Android/data/de.mlauer.luatest/TOPIK/"..FILENAME..".lua")
io.write(x) 
 io.flush()
 io.close()

elapsedTime = app.timeEnd() 
print(string.format("\nTotal: %.0f ms", elapsedTime))
print("SUCCESS OBFUSCATE SCRIPT")

