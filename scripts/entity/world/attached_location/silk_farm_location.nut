this.silk_farm_location <- this.inherit("scripts/entity/world/attached_location", {
	m = {},
	function create()
	{
		this.attached_location.create();
		this.m.Name = "Silk Farm";
		this.m.ID = "attached_location.silk_farm";
		this.m.Description = "In these huts the precious silk is spun from cocoons of small insects by secret methods.";
		this.m.Sprite = "world_silk_01";
		this.m.SpriteDestroyed = "world_silk_01_ruins";
	}

	function onBuild()
	{
		local myTile = this.getTile();
		myTile.setBrush("world_desert_0" + this.Math.rand(6, 9));
		return true;
	}

	function onUpdateProduce( _list )
	{
		_list.push("trade/silk_item");
	}

	function onUpdateDraftList( _list )
	{
		if (!this.isActive())
		{
			return;
		}

		_list.push("daytaler_southern_background");
		_list.push("daytaler_southern_background");
	}

	function onUpdateShopList( _id, _list )
	{
		if (_id == "building.marketplace")
		{
			_list.push({
				R = 0,
				P = 1.0,
				S = "trade/silk_item"
			});
		}
	}

});

