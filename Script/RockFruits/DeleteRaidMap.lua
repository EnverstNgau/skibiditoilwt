for _, obj in pairs(workspace.Island:FindFirstChild("เกาะ ดันเจี้ยน"):GetChildren()) do
    if obj:IsA("BasePart") then
        obj.Transparency = 1
        obj.CanCollide = false
    elseif obj:IsA("Model") then
        for _, part in pairs(obj:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 1
                part.CanCollide = false
            end
        end
    end
end
