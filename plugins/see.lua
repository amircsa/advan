local function run(msg, matches)

if not is_admin(msg) then
 local fuse = 'فرستنده: '..msg.from.print_name..'\n اسم گروه: '..msg.to.print_name..'\n گروه: '..msg.to.id..'\n\n متن پیام: \n'..matches[1]
 local fuses = '!printf user#id'..msg.from.id
  local text = matches[1]
  local chat = "chat#id"..131820439
--your group id
  local sends = send_msg(chat, fuse, ok_cb, false)
 end
 end
return {
description = "See chats in groups",
usage = "Chats :|",
advan = {
"Created by: @janlou",
"Powered by: @AdvanTM",
"CopyRight all right reserved",
},
patterns = {
"^(.*)$"
},
run = run
}
--Line 7 & 5 are important.