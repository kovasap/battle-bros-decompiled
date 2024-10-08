this.tactical_steppe <- this.inherit("scripts/mapgen/tactical_template", {
	m = {},
	function init()
	{
		this.m.Name = "tactical.steppe";
		this.m.MinX = 32;
		this.m.MinY = 32;
	}

	function fill( _rect, _properties, _pass = 1 )
	{
		local steppeTile1 = this.MapGen.get("tactical.tile.steppe1");
		local steppeTile2 = this.MapGen.get("tactical.tile.steppe2");
		local steppeTile3 = this.MapGen.get("tactical.tile.steppe3");
		this.addRoads(_rect, _properties);
		local templates = [];
		local steppePatch = this.MapGen.get("tactical.patch.steppe");
		local dryPatch = this.MapGen.get("tactical.patch.dry");
		templates.push(steppePatch);
		templates.push(steppePatch);
		templates.push(steppePatch);
		templates.push(steppePatch);
		templates.push(steppePatch);
		templates.push(dryPatch);
		local patches = 12;

		while (patches != 0)
		{
			patches = --patches;
			local selectedTemplate = templates[this.Math.rand(0, templates.len() - 1)];
			local sizeX = this.Math.rand(this.Math.max(selectedTemplate.getMinX(), this.Math.min(selectedTemplate.getMaxX(), 8)), this.Math.min(selectedTemplate.getMaxX(), 16));
			local sizeY = this.Math.rand(this.Math.max(selectedTemplate.getMinY(), this.Math.min(selectedTemplate.getMaxY(), 8)), this.Math.min(selectedTemplate.getMaxY(), 16));
			local rect = {
				X = 0,
				Y = 0,
				W = sizeX,
				H = sizeY,
				IsEmpty = false
			};
			rect.X = this.Math.rand(1, _rect.W - sizeX);
			rect.Y = this.Math.rand(1, _rect.H - sizeY);
			selectedTemplate.fill(rect, _properties);
		}

		local bumpyChance = 100;

		for( local x = _rect.X; x < _rect.X + _rect.W; x = ++x )
		{
			for( local y = _rect.Y; y < _rect.Y + _rect.H; y = ++y )
			{
				local tile = this.Tactical.getTileSquare(x, y);

				if (tile.Type != 0)
				{
				}
				else
				{
					local n = 0;

					if (this.Tactical.isValidTileSquare(x - 1, y) && this.Tactical.getTileSquare(x - 1, y).Level == 1)
					{
						n = ++n;
					}

					if (this.Tactical.isValidTileSquare(x - 1, y + 1) && this.Tactical.getTileSquare(x - 1, y + 1).Level == 1)
					{
						n = ++n;
					}

					if (this.Tactical.isValidTileSquare(x, y - 1) && this.Tactical.getTileSquare(x, y - 1).Level == 1)
					{
						n = ++n;
					}

					tile.Level = 0;
					local r = this.Math.rand(1, 3);

					if (r == 1)
					{
						steppeTile1.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = false
						}, _properties);
					}
					else if (r == 2)
					{
						steppeTile2.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = false
						}, _properties);
					}
					else if (r == 3)
					{
						steppeTile3.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = false
						}, _properties);
					}
				}
			}
		}

		this.makeBordersImpassable(_rect);
	}

	function campify( _rect, _properties )
	{
		local steppeTile1 = this.MapGen.get("tactical.tile.steppe3");
		local steppeTile2 = this.MapGen.get("tactical.tile.steppe4");
		local steppeTile3 = this.MapGen.get("tactical.tile.steppe5");
		local centerTile = this.Tactical.getTileSquare(_rect.X + _rect.W / 2 + _properties.ShiftX, _rect.Y + _rect.H / 2 + _properties.ShiftY);
		local radius = this.Const.Tactical.Settings.CampRadius + _properties.AdditionalRadius;

		for( local x = _rect.X; x < _rect.X + _rect.W; x = ++x )
		{
			for( local y = _rect.Y; y < _rect.Y + _rect.H; y = ++y )
			{
				local tile = this.Tactical.getTileSquare(x, y);
				local d = centerTile.getDistanceTo(tile);

				if (d > radius)
				{
				}
				else
				{
					tile.Level = 0;

					if (this.Math.rand(1, 100) <= 50)
					{
						tile.Type = 0;
						tile.clear();
						steppeTile1.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = false
						}, null);
					}
				}
			}
		}
	}

});

