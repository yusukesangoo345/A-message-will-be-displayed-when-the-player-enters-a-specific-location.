-- Function to display message
local function showMessage()
    print("Welcome to the secret area!")
end

-- Get part
local part = script.Parent

-- Set event when player touches
part.Touched:Connect(function(hit)
    local character = hit.Parent
    if character and character:IsA("Model") then
        local player = game.Players:GetPlayerFromCharacter(character)
        if player then
            showMessage()
        end
    end
end)
