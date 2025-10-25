--yeah i wrote "kami" by accident
local intro = loadstring(game.HttpGet(game, 'https://raw.githubusercontent.com/konoSubaraship/roblox_scripts/refs/heads/main/utility/intro.luau'))() 
intro('Counter Blox (Keybind: RightCtrl)')

local core_gui = game:GetService('CoreGui')
core_gui.ChildAdded:Connect(function(child)
	if child.Name == 'KamScriptsKeyMenu' then 
		child:Destroy() 
	elseif child.Name == 'KamScriptsPremium' then 
		child.Enabled = true 
	end  
end) 

loadstring(game:HttpGet("https://raw.githubusercontent.com/konoSubaraship/roblox_scripts/refs/heads/main/cracks/kamiscripts_counterblox/backup.luau"))()
