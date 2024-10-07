AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

 function ENT:Initialize()
      self:SetModel  ("models/props_phx/rt_screen.mdl")
      self:SetMoveType(MOVETYPE_VPHYSICS)
      self:SetSolid(SOLID_VPHYSICS)
      self:PhysicsInit (SOLID_VPHYSICS)

      self:PhysWake()
 end

 