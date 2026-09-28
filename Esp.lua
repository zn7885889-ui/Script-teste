local Players = game:GetService("Players")

local player = Players.LocalPlayer
local animalsFolder = workspace:WaitForChild("Animals")

local function addESP(animal)
	if not animal:IsA("Model") then
		return
	end

	if animal:FindFirstChild("TestESP") then
		return
	end

	local highlight = Instance.new("Highlight")
	highlight.Name = "TestESP"
	highlight.Adornee = animal
	highlight.FillTransparency = 0.5
	highlight.OutlineTransparency = 0
	highlight.Parent = animal
end

for _, animal in ipairs(animalsFolder:GetChildren()) do
	addESP(animal)
end

animalsFolder.ChildAdded:Connect(addESP)
