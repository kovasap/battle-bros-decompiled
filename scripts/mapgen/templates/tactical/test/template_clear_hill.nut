this.template_clear_hill <- this.inherit("scripts/mapgen/tactical_template", {
	m = {},
	function init()
	{
		this.m.Name = "tactical.clear_hill";
		this.m.MinX = 6;
		this.m.MinY = 6;
	}

	function fill( _rect, _properties, _pass = 1 )
	{
		local grassTile = this.MapGen.get("tactical.tile.grass1");
		local earthTile = this.MapGen.get("tactical.tile.earth1");

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
					local r = this.Math.rand(0, 100);

					if (x == _rect.X || x == _rect.X + _rect.W - 1 || y == _rect.Y || y == _rect.Y + _rect.H - 1)
					{
						if (tile.Level < 2)
						{
							if (r < 75)
							{
								tile.Level = 0;
							}
							else
							{
								tile.Level = 1;
							}
						}
					}
					else if (x <= _rect.X + 1 || x >= _rect.X + _rect.W - 2 || y <= _rect.Y + 1 || y >= _rect.Y + _rect.H - 2)
					{
						if (tile.Level < 2)
						{
							if (r < 50)
							{
								tile.Level = 1;
							}
							else
							{
								tile.Level = 2;
							}
						}
					}
					else if (r < 90)
					{
						tile.Level = 3;
					}
					else
					{
						tile.Level = 2;
					}

					if (this.Math.rand(0, 100) > 60)
					{
						earthTile.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = true
						}, _properties);
					}
					else
					{
						grassTile.fill({
							X = x,
							Y = y,
							W = 1,
							H = 1,
							IsEmpty = true
						}, _properties);
					}
				}
			}
		}
	}

});

