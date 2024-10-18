--■PROJECT OBFUSCATOR
--■BY TITITCOMMUNITY
--■Creator: Bilsx
--(	https://dsc.gg/TITITCOMMUNITY	)
												
local function obfuscate(code)
    local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	
	local randomizeEnc = os.date("%d%m%y")
	local clock = os.time()
	local enc = string.len(key)*math.floor(os.time()/randomizeEnc)
	
	local function unicodeEnc(code)
    local uchar = {}
  	  for _, char in utf8.codes(code) do
     	   -- Replace each character with a corresponding Russian character
        local Uchar = utf8.char(char + enc) -- Shift by 32 for demonstration
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
    
    -- GENERATE ENCRYPTION
		code = [[
--[=[
"\111\204\147\204\149\205\139\98\204\190\205\134\205\129\102\205\146\204\189\204\144\117\205\138\205\138\205\134\115\204\147\205\152\205\155\99\205\146\205\146\204\144\97\205\139\204\148\204\144\116\205\152\205\160\205\146\101\205\140\204\190\204\146\32\98\205\155\205\152\121\204\146\205\157\205\152\32\84\205\157\204\144\205\157\73\205\157\205\145\204\148\84\205\160\205\157\205\144\73\205\157\205\134\84\204\189\204\148\205\144\67\205\128\204\144\205\139\79\205\134\205\152\204\190\77\204\149\204\190\205\155\77\204\147\205\129\205\157\85\205\160\205\146\204\149\78\205\129\205\140\205\152\73\204\190\205\155\205\155\84\204\154\204\146\205\128\89\205\157\205\128\205\129\32\10\9\9\100\105\115\99\111\114\100\32\58\32\100\115\99\46\103\103\47\84\73\84\73\84\67\79\77\77\85\78\73\84\89\10"
]=]--

TITITCOMMUNITY = function(...)
	base = utf8
	aku = ]]..randomizeEnc..[[
	suka = ]]..clock..[[
	kamu = string.len(key)*math.floor(suka/aku)
    local TITITC0MMUNITY = ""
    _ = "]]..unicodeEnc(code)..[["
    for _, concat in base.codes(_) do
        null = utf8.char(concat - kamu)
        TITITC0MMUNITY = TITITC0MMUNITY .. null
    end
    return load(TITITC0MMUNITY)
end
TITITCOMMUNITY("BILSX IS NOOB CODER !!!")()
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

    local function generate_boolean_math()
        local ops = {"and", "or", "not"}
        local values = {"true", "false"}
        local expr = values[math.random(1, 2)]
        for i = 1, math.random(2, 5) do
            local op = ops[math.random(1, #ops)]
            if op == "not" then
                expr = op .. " (" .. expr .. ")"
            else
                expr = "(" .. expr .. ") " .. op .. " " .. values[math.random(1, 2)]
            end
        end
        return "local _ = " .. expr .. "\n"
    end

    -- Revised anti-debugging function
    local anti_debug = string.dump(function()
        local function detect_hooks()
            if debug.gethook() then
                return true
            end
            return false
        end

        local function timing_check()
            local start = os.clock()
            for i = 1, 1000000 do end
            local duration = os.clock() - start
            if duration > 0.5 then  -- Increased threshold
                return true
            end
            return false
        end

        if detect_hooks() or timing_check() then
            return true
        end
    end)

    -- Convert anti_debug function to alphabetic representation
    local alpha_anti_debug = {}
    for i = 1, #anti_debug do
        table.insert(alpha_anti_debug, num_to_alpha(anti_debug:byte(i)))
    end

    -- Add junk code and boolean math to the original script
    local lines = {}
    for line in code:gmatch("[^\r\n]+") do
        table.insert(lines, line)
        if math.random() < 0.3 then  -- 30% chance to add junk after each line
            table.insert(lines, generate_junk_code())
        end
        if math.random() < 0.2 then  -- 20% chance to add boolean math
            table.insert(lines, generate_boolean_math())
        end
    end
    local junk_code = table.concat(lines, "\n")

    -- Dump the bytecode of the junk-filled script
    local bytecode = string.dump(load(junk_code), true)
    local alpha_bytecode = {}
    for i = 1, #bytecode do
        table.insert(alpha_bytecode, num_to_alpha(bytecode:byte(i)))
    end

    -- Create the obfuscated code with anti-debugging, anti-print protection, and control flow obfuscation
local obfuscated=[[key=("]]..key..[[")local a="]]..alphabet..[[" local b=0 local c="" for d=1,#c do b=b*#a+(a:find(c:sub(d,d))-1)end local e={} for f in c:gmatch("[^,]+") do b=0 for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1)end table.insert(e,string.char(b))end local g=table.concat(e) local h="]]..table.concat(alpha_anti_debug,",")..[[" local i="]]..table.concat(alpha_bytecode,",")..[[" local j=load or loadstring if j==print then error("Nice try!")end e={} for f in h:gmatch("[^,]+") do b=0 for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1)end table.insert(e,string.char(b))end g=table.concat(e) local k=j(g) k() local l=true while l do if math.random()>0.5 then l=false else ]]..generate_junk_code()..[[end end e={} for f in i:gmatch("[^,]+") do b=0 for d=1,#f do b=b*#a+(a:find(f:sub(d,d))-1)end table.insert(e,string.char(b))end g=table.concat(e) local m=j(g) return m()]]




    return obfuscated
end

-- Example usage
key = "THIS SCRIPT PROTECTED USING TITITCOMMUNITY OBFUSCATOR. MORE INFO GO https://dsc.gg/TITITCOMMUNITY"
YourScript = [=[
print("Hello, obfuscated world!")
local secret = "This is a secret message"
for i = 1, 10 do
    print(i, secret)
end
]=]

local obfuscated_code = obfuscate(YourScript)
print(obfuscated_code)

-- Test the obfuscated code
load(obfuscated_code)()
