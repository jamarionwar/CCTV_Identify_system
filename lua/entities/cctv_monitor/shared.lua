ENT.Type =  "anim"
ENT.Spawnable = true
ENT.PrintName = "Monitor"
ENT.Category = "CCTV"
ENT.Base = "base_anim"

function ENT:Draw()
    self:DrawModel()

    local Cam =  ents.FindByClass("cctv_camera")[1]


    if not IsValid(Cam) then return end


    local Pos = self:GetPos()
    local Ang = self:getAngles()
    cam.Start3D2D(Pos, Ang, 0.1)
       local CamViewPos = Cam:GetPos()
       local CamViewAng = Cam:GetAngles()

       render.RenderView({

    place = CamViewPos,
    angle - CamViewAng,
    fov = 90,
    aspect = 1,
    x = 0,
    y = 0,
    w = 700,
    H = 820,


       })
    cam.End3D2D()
end