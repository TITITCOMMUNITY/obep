--■PROJECT OBFUSCATOR (Enhanced Secure Loader)
--■BY TITITCOMMUNITY
--■Creator: Bilsx

local function obfuscate(code,key)
    local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local randomizeEnc = tonumber(os.date("%d%m%y")) + #key
    local clock = os.time() %1000000
    local enc = string.len(key) * math.floor(clock / randomizeEnc)
    math.randomseed(clock)

    local function unicodeEnc(code)
        local uchar = {}
        for _, char in utf8.codes(code) do
            local Uchar = utf8.char(char + enc)
            table.insert(uchar, Uchar)
        end
        return table.concat(uchar)
    end

    local function random_string(length)
        local result = ""
        for i = 1, length do
            result = result .. alphabet:sub(math.random(1, #alphabet), math.random(1, #alphabet))
        end
        return result
    end

    local function num_to_alpha(num)
        local result = ""
        repeat
            num, r = math.floor(num / #alphabet), (num % #alphabet) + 1
            result = alphabet:sub(r, r) .. result
        until num == 0
        return result
    end

    code = [[
--[=[
"\84\105\84\73\84\67\111\109\109\117\110\105\116\121"
]=]--

-- Deklarasi fungsi utama yang akan memuat kode
local function TITITCOMMUNITY(...)
    local base = utf8
    local aku = ]] .. randomizeEnc .. [[
    local suka = ]] .. clock .. [[
    local kamu = string.len(key) * math.floor(suka / aku)
    local TITITC0MMUNITY = ""
    local _ = "]] .. unicodeEnc(code) .. [["
    
    for _, concat in base.codes(_) do
        local null = utf8.char(concat - kamu)
        TITITC0MMUNITY = TITITC0MMUNITY .. null
    end
    return load(TITITC0MMUNITY)
end
return TITITCOMMUNITY("Script secure check completed.")()
]]

    local function generate_junk_code()
        local junk = {
            "do local _ = 1 end\n",
            "if false then print('Unreachable') end\n",
            "for _ = 1, 0 do end\n",
            "local " .. random_string(5) .. " = {}\n",
            "repeat until true\n",
            "while false do end\n",
            "if math.random() < 0 then print('Impossible') end\n"
        }
        return junk[math.random(1, #junk)]
    end

    -- Advanced Anti-Debugging dengan beberapa deteksi
    local anti_debug = string.dump(function()
        local function detect_hooks()
            if debug.gethook() then return true end
            return false
        end
        local function timing_check()
            local start = os.clock()
            for i = 1, 1000000 do end
            local duration = os.clock() - start
            if duration > 0.5 then return true end
            return false
        end
        local function checksum_check(code)
            local checksum = 0
            for i = 1, #code do
                checksum = checksum + code:byte(i)
            end
            return checksum
        end

        if detect_hooks() or timing_check() or checksum_check(" .. code .. ") ~= " .. checksum_check(code) .. " then
            return true
        end
    end)

    local alpha_anti_debug = {}
    for i = 1, #anti_debug do
        table.insert(alpha_anti_debug, num_to_alpha(anti_debug:byte(i)))
    end

    local lines = {}
    for line in code:gmatch("[^\r\n]+") do
        table.insert(lines, line)
    end
    local junk_code = table.concat(lines, "\n")

    -- Encrypt bytecode dump dan buat lapisan ganda
    local bytecode = string.dump(load(junk_code), true)
    local alpha_bytecode = {}
    for i = 1, #bytecode do
        table.insert(alpha_bytecode, num_to_alpha(bytecode:byte(i)))
    end

    local obfuscated = [[
key=("]] .. key .. [[") local a="]] .. alphabet .. [[" local b=0 local c="" 
for d=1,#c do b=b*#a+(a:find(c:sub(d,d))-1) end 
local e={} 
for f in c:gmatch("[^,]+") do 
    b=0 
    for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1) end 
    table.insert(e, string.char(b)) 
end 
local g=table.concat(e) 
local h="]] .. table.concat(alpha_anti_debug, ",") .. [[" 
local i="]] .. table.concat(alpha_bytecode, ",") .. [[" 
local j=load or loadstring 
if j==print then error("Nice try!") end 
e={} 
for f in h:gmatch("[^,]+") do 
    b=0 
    for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1) end 
    table.insert(e,string.char(b)) 
end 
g=table.concat(e) 
local k=j(g) 
k() 
local l=true 
local function m(n) 
    if math.random() > 0.5 then 
        return n() 
    else 
        ]] .. generate_junk_code() .. [[ 
        return m(n) 
    end 
end 
e={} 
for f in i:gmatch("[^,]+") do 
    b=0 
    for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1) end 
    table.insert(e, string.char(b)) 
end 
g=table.concat(e) 
local o=j(g) 
return m(o)
]]

    return obfuscated
end

-- Contoh penggunaan
math.randomseed(os.time())  -- Menambahkan seed acak yang dinamis
key = "PROTECTED BY TITITCOMMUNITY OBFUSCATOR. CHECK MORE INFO https://dsc.gg/TITITCOMMUNITY"
YourScript = [=[
print("Script is running securely with enhanced obfuscation.")
]=]

local obfuscated_code = obfuscate(YourScript,key)
print(obfuscated_code)

-- Tes kode obfuscated
load(obfuscated_code)()
