local forgehelp = {}

forgehelp.swing = function(...)
  local args = ...
  warn(" {FORGEHELP MODULE} module.swing > ",game:GetService("HttpService"):JSONEncode(args),"typeof value parsed:",typeof(args))
  
  if not typeof(args)=="table" then return end if args[2] then return end
  if args[1]==1 then args[1]="Pickaxe" end
  if args[1]==2 then args[1]="Weapon" end
  if not args[1] or (args[1]~="Weapon" or args[1]~="Pickaxe") then return end
  game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ToolService"):WaitForChild("RF"):WaitForChild("ToolActivated"):InvokeServer(unpack(args))
end

return forgehelp
