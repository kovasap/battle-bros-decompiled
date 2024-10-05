local gt = this.getroottable();

if (!("World" in gt.Const))
{
	gt.Const.World <- {};
}

if (!("Spawn" in gt.Const.World))
{
	gt.Const.World.Spawn <- {};
}

gt.Const.World.Spawn.Noble <- [
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 11
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 13
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 12
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_02",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 2
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 3
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.ArmoredWardog,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 5
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			}
		]
	},
	{
		MovementSpeedMult = 1.0,
		VisibilityMult = 1.0,
		VisionMult = 1.0,
		Body = "figure_noble_03",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.StandardBearer,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Knight,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			}
		]
	}
];
gt.Const.World.Spawn.NobleCaravan <- [
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 6
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 7
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 9
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 1
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 10
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 3
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Sergeant,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 1
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	},
	{
		Cost = 0,
		MovementSpeedMult = 0.5,
		VisibilityMult = 1.0,
		VisionMult = 0.25,
		Body = "cart_01",
		Troops = [
			{
				Type = this.Const.World.Spawn.Troops.Footman,
				Num = 8
			},
			{
				Type = this.Const.World.Spawn.Troops.Arbalester,
				Num = 4
			},
			{
				Type = this.Const.World.Spawn.Troops.Billman,
				Num = 5
			},
			{
				Type = this.Const.World.Spawn.Troops.Greatsword,
				Num = 2
			},
			{
				Type = this.Const.World.Spawn.Troops.CaravanDonkey,
				Num = 2
			}
		]
	}
];
function onCostCompare( _t1, _t2 )
{
	if (_t1.Cost < _t2.Cost)
	{
		return -1;
	}
	else if (_t1.Cost > _t2.Cost)
	{
		return 1;
	}

	return 0;
}

function calculateCosts( _p )
{
	foreach( p in _p )
	{
		p.Cost <- 0;

		foreach( t in p.Troops )
		{
			p.Cost += t.Type.Cost * t.Num;
		}

		if (!("MovementSpeedMult" in p))
		{
			p.MovementSpeedMult <- 1.0;
		}
	}

	_p.sort(this.onCostCompare);
}

this.calculateCosts(this.Const.World.Spawn.Noble);
this.calculateCosts(this.Const.World.Spawn.NobleCaravan);

