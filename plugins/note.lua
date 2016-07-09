local function run(msg, matches)
 local text = matches[2]
 if matches[1] == "note" and matches[2] then
   local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local file = io.open("./note/"..msg.from.id..".txt", "w")
  file:write(text)
  file:flush()
  file:close()
  return "با دستور زیر آخرین یادداشت خود را ببینید:\n!mynote\n\nیادداشت شما تغییر کرد به:\n"..text
 end
   
   local note = io.open("./note/"..msg.from.id..".txt", ok_cb, false)
   local mn = file:read("*all")
   if matches[1] == "mynote" then
      mn = note:read("*all")
      return mn
    else
     return "شما یادداشتی ثبت نکرده اید."
  end
end
  
  function problem(dict)
    if dict.advan == nil or dict.advan == "" then
     return "Dont change plugin⚠"
    end
   end

return {
 description = "a plugin for save your note! and see it!",
 usage = {
  "!note [text] : save note",
  "!mynote : show your note",
 },
 advan = {
   "Created by: @janlou",
   "Powered by: @AdvanTM",
   "CopyRight all right reserved",
 },
 patterns = {
  "^[!#/]([Nn]ote) (.*)$",
  "^[!#/]([Mm]ynote)$",
 },
 run = run,
 problem = problem,
}