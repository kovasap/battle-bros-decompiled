this.tundra4 <- this.inherit("scripts/mapgen/tactical_template", {
	m = {
		Details = [
			"tundra_grass_01",
			"tundra_grass_02",
			"tundra_grass_03",
			"tundra_grass_04",
			"tundra_grass_05",
			"tundra_grass_06"
		],
		DetailsStones = [
			"tundra_stone_detail_01",
			"tundra_stone_detail_02",
			"tundra_stone_detail_11",
			"tundra_stone_detail_12"
		],
		ChanceToSpawnDetails = 40,
		LimitOfSpawnedDetails = 4,
		Objects = [
			"entity/tactical/objects/tundra_boulder1",
			"entity/tactical/objects/tundra_boulder2",
			"entity/tactical/objects/tree_needle1",
			"entity/tactical/objects/tree_needle2",
			"entity/tactical/objects/tree_needle1",
			"entity/tactical/objects/tree_needle2",
			"entity/tactical/objects/tundra_brush",
			"entity/tactical/objects/tundra_brush",
			"entity/tactical/objects/tundra_brush",
			"entity/tactical/objects/tundra_brush"
		],
		ChanceToSpawnObject = 4
	},
	function init()
	{
		this.m.Name = "tactical.tile.tundra4";
		this.m.MinX = 1;
		this.m.MinY = 1;
		local t = this.createTileTransition();
		t.setBlendIntoSockets(true);
		t.setBrush(this.Const.Direction.N, "transition_tundra_04_N");
		t.setBrush(this.Const.Direction.NE, "transition_tundra_04_NE");
		t.setBrush(this.Const.Direction.SE, "transition_tundra_04_SE");
		t.setBrush(this.Const.Direction.S, "transition_tundra_04_S");
		t.setBrush(this.Const.Direction.SW, "transition_tundra_04_SW");
		t.setBrush(this.Const.Direction.NW, "transition_tundra_04_NW");
		t.setSocket("socket_earth");
		this.Tactical.setTransitions("tile_tundra_04", t);
	}

	function onFirstPass( _rect )
	{
		local tile = this.Tactical.getTileSquare(_rect.X, _rect.Y);

		if (tile.Type != 0)
		{
			return;
		}

		tile.Type = this.Const.Tactical.TerrainType.FlatGround;
		tile.Subtype = this.Const.Tactical.TerrainSubtype.Tundra;
		tile.BlendPriority = this.Const.Tactical.TileBlendPriority.Tundra4;
		tile.IsBadTerrain = false;
		tile.setBrush("tile_tundra_04");
		local n = 0;

		if (this.Math.rand(0, 100) < this.m.ChanceToSpawnObject)
		{
			if (!tile.hasNextTile(this.Const.Direction.S) || tile.getNextTile(this.Const.Direction.S).IsEmpty)
			{
				tile.spawnObject(this.m.Objects[this.Math.rand(0, this.m.Objects.len() - 1)]);
			}
		}
		else if (this.Math.rand(1, 100) <= this.m.ChanceToSpawnDetails)
		{
			if (this.Math.rand(1, 100) <= 25)
			{
				tile.spawnDetail(this.m.DetailsStones[this.Math.rand(0, this.m.DetailsStones.len() - 1)]);
			}
			else if (this.Math.rand(1, 100) <= 50)
			{
				tile.spawnDetail(this.m.Details[this.Math.rand(0, this.m.Details.len() - 1)]);
			}
			else
			{
				for( local n = 0; this.Math.rand(0, 100) < this.m.ChanceToSpawnDetails && n++ < this.m.LimitOfSpawnedDetails;  )
				{
					local i = this.Math.rand(0, this.m.Details.len() - 1);
					tile.spawnDetail(this.m.Details[i]);
				}
			}
		}
	}

});

