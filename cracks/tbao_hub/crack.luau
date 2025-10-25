local intro = loadstring(game.HttpGet(game, 'https://raw.githubusercontent.com/konoSubaraship/roblox_scripts/refs/heads/main/utility/intro.luau'))() 
intro('Fish It (Cracked)')

local core_gui = game:GetService('CoreGui')
task.delay(3, function()
	local validate_button = nil
	for i,v in next, core_gui.RobloxGui.WindUI.KeySystem:GetDescendants() do
		if v:IsA('TextBox') then 
			v.Text = 'nzqtrclyoa'
			firesignal(v.FocusLost, true)
		elseif v:IsA('TextButton') then 
			if v.Frame.TextLabel.Text == 'Submit' then 
				validate_button = v
				print(v)
			end  
		end  
	end 
	local func = getconnections(validate_button.MouseButton1Up)[1].Function 
	func()
end)
loadstring(game.HttpGet(game, 'https://raw.githubusercontent.com/konoSubaraship/roblox_scripts/refs/heads/main/cracks/tbao_hub/backup.lua'))()
