ENT.Type =  "anim"
ENT.Spawnable = true
ENT.PrintName = "Camera"
ENT.Category = "CCTV"
ENT.Base = "base_anim"

function ENT:SetupDataTables ()
    self:NetworkVar ("Entity", 0, "owning_ent")
end