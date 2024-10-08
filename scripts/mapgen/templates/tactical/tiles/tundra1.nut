this.tundra1 <- this.inherit("scripts/mapgen/tactical_template", {
	m = {
		Details = [
			"tundra_flowers_01",
			"tundra_flowers_02",
			"tundra_flowers_03",
			"tundra_flowers_04",
			"tundra_flowers_05",
			"tundra_flowers_06",
			"tundra_flowers_07",
			"tundra_flowers_08",
			"tundra_flowers_09",
			"tundra_grass_01",
			"tundra_grass_02",
			"tundra_grass_03",
			"tundra_grass_04",
			"tundra_grass_05",
			"tundra_grass_06"
		],
		DetailsGrass = [
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
		ChanceToSpawnDetails = 35,
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
		this.m.Name = "tactical.tile.tundra1";
		this.m.MinX = 1;
		this.m.MinY = 1;
		local t = this.createTileTransition();
		t.setBlendIntoSockets(true);
		t.setBrush(this.Const.Direction.N, "transition_tundra_01_N");
		t.setBrush(this.Const.Direction.NE, "transition_tundra_01_NE");
		t.setBrush(this.Const.Direction.SE, "transition_tundra_01_SE");
		t.setBrush(this.Const.Direction.S, "transition_tundra_01_S");
		t.setBrush(this.Const.Direction.SW, "transition_tundra_01_SW");
		t.setBrush(this.Const.Direction.NW, "transition_tundra_01_NW");
		t.setSocket("socket_earth");
		this.Tactical.setTransitions("tile_tundra_01", t);
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
		tile.BlendPriority = this.Const.Tactical.TileBlendPriority.Tundra1;
		tile.IsBadTerrain = false;
		tile.setBrush("tile_tundra_01");
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
			if (this.Math.rand(1, 100) <= 20)
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

