this.gem_mine_location <- this.inherit("scripts/entity/world/attached_location", {
	m = {},
	function create()
	{
		this.attached_location.create();
		this.m.Name = "Gem Mine";
		this.m.ID = "attached_location.gem_mine";
		this.m.Description = "The shiny gems found in this mine are usually brought directly to the next settlement in well-guarded caravans for further refinement.";
		this.m.Sprite = "world_gem_mine_01";
		this.m.SpriteDestroyed = "world_gem_mine_01_ruins";
	}

	function getSounds( _all = true )
	{
		local r = [];

		if (this.World.getTime().IsDaytime)
		{
			r = [
				{
					File = "ambience/settlement/mines_00.wav",
					Volume = 1.25,
					Pitch = 1.0
				},
				{
					File = "ambience/settlement/mines_01.wav",
					Volume = 1.25,
					Pitch = 1.0
				},
				{
					File = "ambience/settlement/mines_shoveling_00.wav",
					Volume = 1.25,
					Pitch = 1.0
				},
				{
					File = "ambience/settlement/mines_shoveling_01.wav",
					Volume = 1.25,
					Pitch = 1.0
				},
				{
					File = "ambience/settlement/mines_shoveling_02.wav",
					Volume = 1.25,
					Pitch = 1.0
				},
				{
					File = "ambience/settlement/mines_shoveling_03.wav",
					Volume = 1.25,
					Pitch = 1.0
				}
			];

			foreach( s in r )
			{
				s.Volume *= this.Const.Sound.Volume.Ambience / this.Const.Sound.Volume.AmbienceOutsideSettlement;
			}
		}

		return r;
	}

	function onUpdateProduce( _list )
	{
		_list.push("trade/uncut_gems_item");
	}

	function onUpdateDraftList( _list )
	{
		if (!this.isActive())
		{
			return;
		}

		_list.push("miner_background");
		_list.push("miner_background");
		_list.push("miner_background");
		_list.push("sellsword_background");
		_list.push("caravan_hand_background");
		_list.push("thief_background");
	}

	function onUpdateShopList( _id, _list )
	{
		if (_id == "building.marketplace")
		{
			_list.push({
				R = 20,
				P = 1.0,
				S = "weapons/pickaxe"
			});
			_list.push({
				R = 90,
				P = 1.0,
				S = "weapons/military_pick"
			});
			_list.push({
				R = 0,
				P = 1.0,
				S = "trade/uncut_gems_item"
			});
		}
		else if (_id == "building.specialized_trader")
		{
		}
	}

});

