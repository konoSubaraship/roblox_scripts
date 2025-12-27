local RunService = game:GetService('RunService') 
local Players = game:GetService('Players') 

local LocalPlayer = Players.LocalPlayer 
local Camera = workspace.CurrentCamera

local CharacterController = {} 
do 
    CharacterController.parts_cache = {} 
    CharacterController.noclip_active = false
    CharacterController.noclip_feature = false

    function CharacterController:SetNoclip(state, feature)
        if state then 
            if self.noclip_active then 
                return 
            end 

            self.parts_cache = {}

            for _, bodyPart in next, LocalPlayer.Character:GetDescendants() do 
                if bodyPart:IsA('BasePart') and bodyPart.CanCollide then 
                    table.insert(self.parts_cache, bodyPart)
                end 
            end 

            self.noclip_active = task.spawn(function() 
                while task.wait() do 
                    for _, bodyPart in next, self.parts_cache do
                        bodyPart.CanCollide = false 
                    end
                end  
            end)
        else 
            if not self.noclip_active then 
                return 
            elseif self.noclip_feature and not feature then  
                return 
            end 

            task.cancel(self.noclip_active)
            self.noclip_active = false

            for _, bodyPart in next, self.parts_cache do
                bodyPart.CanCollide = true 
            end
        end 
    end 
end 

local MoveController = {} 
do
    MoveController.active_move = nil
    MoveController.is_moving = false
    MoveController.has_arrived = false
    MoveController.saved_humanoid = nil
    MoveController.hold_cframe = nil

    RunService.Heartbeat:Connect(function()
        if MoveController.hold_cframe then
            local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            if not hrp then return end
            hrp.Velocity =  Vector3.zero
            hrp.RotVelocity = Vector3.zero
            hrp.CFrame = MoveController.hold_cframe
        end
    end)

    function MoveController:MoveTo(targetPos, speed) 
        self.hold_cframe = nil
        local rootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
        local humanoid = rootPart and LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
        if not rootPart or not humanoid then return end

        if self.active_move then
            self:CancelMove()
        end

        if typeof(targetPos) == 'Vector3' then
            targetPos = CFrame.new(targetPos)
        elseif typeof(targetPos) == 'Instance' and targetPos:IsA('BasePart') then 
            targetPos = targetPos.CFrame
        elseif typeof(targetPos) ~= 'CFrame' then 
            return 
        end

        self.saved_humanoid = humanoid
        humanoid.WalkSpeed = 0 
        humanoid.JumpPower = 0 
        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        CharacterController:SetNoclip(true) 

        self.is_moving = true
        self.has_arrived = false

        local moveSpeed = speed or 30

        self.active_move = task.spawn(function()
            while self.is_moving do

                local character = LocalPlayer.Character
                local currentRootPart = character and character:FindFirstChild('HumanoidRootPart')
                
                if not currentRootPart then
                    self.is_moving = false
                    break
                end

                local currentPos = currentRootPart.Position
                local targetPosition = targetPos.Position
                local direction = (targetPosition - currentPos)
                local distance = direction.Magnitude

                if distance < 3 then
                    self.has_arrived = true
                    self.is_moving = false
                    break
                end

                moveSpeed = speed
                local deltaTime = RunService.Heartbeat:Wait()
                local step = math.min(moveSpeed * deltaTime, distance)
                local newPos = currentPos + (direction.Unit * step)

                currentRootPart.Velocity = Vector3.zero
                currentRootPart.RotVelocity = Vector3.zero
                currentRootPart.CFrame = CFrame.new(newPos, targetPosition)
            end
        end)
    end 

    function MoveController:CancelMove() 
        self.is_moving = false
        self.has_arrived = false
        self.hold_cframe = nil

        if self.active_move then
            task.cancel(self.active_move)
            self.active_move = nil
        end

        CharacterController:SetNoclip(false) 

        local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            humanoid.WalkSpeed = 16
            humanoid.JumpPower = 50
            humanoid:ChangeState(Enum.HumanoidStateType.Running)
            Camera.CameraSubject = humanoid
        end
    end 
end

return MoveController
