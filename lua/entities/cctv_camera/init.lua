AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

 function ENT:Initialize()
      self:SetModel  ("models/ares/video_camera_angle.mdl")
      self:SetMoveType(MOVETYPE_VPHYSICS)
      self:SetSolid(SOLID_VPHYSICS)
      self:PhysicsInit (SOLID_VPHYSICS)

      self:PhysWake()
 end

 local owner = self.dt.owning_ent
  if owner then
    for k, v in pairs(ents.FindByClass("cctv_monitor")) do
         if  v:GetOwner() == owner then
            v:SetCCTVCamera(self)
         end
        end
 end

  local phys = self:GetPhysicsObject()
  if IsValid(phys) then
     phys:EnableMotion(false)
  end