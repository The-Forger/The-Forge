local forgehelp = {}
local warn = function(...) warn("[FORGEHELP] >",...)

forgehelp.encode = function(a)
  return game:GetService("HttpService"):JSONEncode(a)
end
  
forgehelp.swing = function(...)
  local args = ...
  warn("module.swing > ",forgehelp.encode(args),"typeof value parsed:",typeof(args))
  
  if not typeof(args)=="table" then return end if #args>1 or #args==0 then return end
  warn(1)
  if args[1]==1 then args[1]="Pickaxe" end
  if args[1]==2 then args[1]="Weapon" end
  warn(2,forgehelp.encode(args))
  if not args[1] or (args[1]~="Weapon" or args[1]~="Pickaxe") then return end
  warn(3)
  game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RF"):WaitForChild("ToolActivated"):InvokeServer(unpack(args))
end

return forgehelp
