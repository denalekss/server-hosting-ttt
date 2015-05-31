ITEM.Name = 'Ghosts Trail'
ITEM.Price = 150
ITEM.Material = 'trails/poltergeist.vmt'

function ITEM:OnEquip(ply, modifications)
	ply.pghostsTrail = util.SpriteTrail(ply, 0, modifications.color, false, 15, 1, 4, 0.125, self.Material)
end

function ITEM:OnHolster(ply)
	SafeRemoveEntity(ply.pghostsTrail)
end

function ITEM:Modify(modifications)
	PS:ShowColorChooser(self, modifications)
end

function ITEM:OnModify(ply, modifications)
	SafeRemoveEntity(ply.pghostsTrail)
	self:OnEquip(ply, modifications)
end
