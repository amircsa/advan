local function run(msg, matches)
   local telegram = 'http://telegram.me/'..matches[2]..'\n@'..matches[2]
   --return telegram
   if matches[1] == 'tele1' and matches[2] then
       return telegram
    end
    
    local telegram2 = '❶ http://telegram.me/'..matches[2]..'\n@'..matches[2]..'\n\n❷ http://telegram.me/'..matches[3]..'\n@'..matches[3]
    if matches[1] == 'tele2' and matches[2] and matches[3] then
        return telegram2
    end
    
    local teleg3 = '❶ http://telegram.me/'..matches[2]..'\n@'..matches[2]..'\n\n❷ http://telegram.me/'..matches[3]..'\n@'..matches[3]..'\n\n❸ http://telegram.me/'..matches[4]..'\n@'..matches[4]
    if matches[1] == 'tele3' and matches[2] and matches[3] and matches[4] then
        return teleg3
    end
    
    local telegr4 = '❶ http://telegram.me/'..matches[2]..'\n@'..matches[2]..'\n\n❷ http://telegram.me/'..matches[3]..'\n@'..matches[3]..'\n\n❸ http://telegram.me/'..matches[4]..'\n@'..matches[4]..'\n\n❹ http://telegram.me/'..matches[5]..'\n@'..matches[5]
    if matches[1] == 'tele4' and matches[2] and matches[3] and matches [4] and matches [5] then
        return telegr4
    end
    
    local te5 = '❶ http://telegram.me/'..matches[2]..'\n@'..matches[2]..'\n\n❷ http://telegram.me/'..matches[3]..'\n@'..matches[3]..'\n\n❸ http://telegram.me/'..matches[4]..'\n@'..matches[4]..'\n\n❹ http://telegram.me/'..matches[5]..'\n@'..matches[5]..'\n\n❺ http://telegram.me/'..matches[6]..'\n@'..matches[6]
    if matches[1] == 'tele5' and matches[2] and matches[3] and matches[4] and matches[5] and matches[6] then
        return te5
    end
end
return {
advan = {
"Created by: @janlou",
"Powered by: @AdvanTM",
"⚠️CopyRight all right reserved⚠",
  },
patterns = {
    "(tele1) (.*)",
    "(tele2) (.*) (.*)",
    "(tele3) (.*) (.*) (.*)",
    "(tele4) (.*) (.*) (.*) (.*)",
    "(tele5) (.*) (.*) (.*) (.*) (.*)"
},
run = run
}
