task.delay(1, function()
    local core_gui = game:GetService('CoreGui')
    local kam_gui = core_gui.KamPremiumUI
    for i,v in next, kam_gui:GetChildren() do 
        if v:FindFirstChild('TextBox') then 
            v:Destroy() 
        elseif v:FindFirstChild('TextLabel') and v.TextLabel.Text == 'KamScripts Premium v1.0' then 
            v.Visible = true 
        end  
    end  
end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/konoSubaraship/roblox_scripts/refs/heads/main/cracks/kamiscripts_rivals/backup.lua"))()
