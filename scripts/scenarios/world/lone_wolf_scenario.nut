this.lone_wolf_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
	m = {},
	function create()
	{
		this.m.ID = "scenario.lone_wolf";
		this.m.Name = "Lone Wolf";
		this.m.Description = "[p=c][img]gfx/ui/events/event_35.png[/img][/p][p]You\'ve been traveling alone for a long time, taking part in tourneys and sparring with young nobles. A hedge knight tall as a tree, you never needed anybody for long. Is it true still?\n\n[color=#bcad8c]Lone Wolf:[/color] Start with a single experienced hedge knight and great equipment, but low funds.\n[color=#bcad8c]Elite Few:[/color] Can never have more than 12 men in your roster.\n[color=#bcad8c]Avatar:[/color] If your hedge knight dies, the campaign ends.[/p]";
		this.m.Difficulty = 3;
		this.m.Order = 110;
		this.m.IsFixedLook = true;
	}

	function isValid()
	{
		return this.Const.DLC.Wildmen;
	}

	function onSpawnAssets()
	{
		local roster = this.World.getPlayerRoster();
		local bro;
		bro = roster.create("scripts/entity/tactical/player");
		bro.setStartValuesEx([
			"hedge_knight_background"
		]);
		bro.getBackground().m.RawDescription = "A wandering hedge knight, you were a veteran of jousting and sparring tournaments. You were also a veteran of victory. Tis a scary thought for many, but if it were anything at all that turned your eye toward mercenary work it was boredom. Outwardly you state it is for the coin, but a part of you knows it\'s also for the company.";
		bro.getBackground().buildDescription(true);
		bro.setTitle("the Lone Wolf");
		bro.getSkills().removeByID("trait.survivor");
		bro.getSkills().removeByID("trait.greedy");
		bro.getSkills().removeByID("trait.loyal");
		bro.getSkills().removeByID("trait.disloyal");
		bro.getSkills().add(this.new("scripts/skills/traits/player_character_trait"));
		bro.setPlaceInFormation(4);
		bro.getFlags().set("IsPlayerCharacter", true);
		bro.getSprite("miniboss").setBrush("bust_miniboss_lone_wolf");
		bro.m.HireTime = this.Time.getVirtualTimeF();
		bro.m.PerkPoints = 3;
		bro.m.LevelUps = 3;
		bro.m.Level = 4;
		bro.getBaseProperties().MeleeDefense -= 2;
		bro.m.Talents = [];
		bro.m.Attributes = [];
		local talents = bro.getTalents();
		talents.resize(this.Const.Attributes.COUNT, 0);
		talents[this.Const.Attributes.MeleeDefense] = 2;
		talents[this.Const.Attributes.Fatigue] = 3;
		talents[this.Const.Attributes.MeleeSkill] = 3;
		bro.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);
		local items = bro.getItems();
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Body));
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Head));
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Mainhand));
		items.unequip(items.getItemAtSlot(this.Const.ItemSlot.Offhand));
		items.equip(this.new("scripts/items/armor/sellsword_armor"));
		items.equip(this.new("scripts/items/helmets/bascinet_with_mail"));
		items.equip(this.new("scripts/items/weapons/longsword"));
		this.World.Assets.m.BusinessReputation = 200;
		this.World.Assets.getStash().resize(this.World.Assets.getStash().getCapacity() - 9);
		this.World.Assets.getStash().add(this.new("scripts/items/supplies/smoked_ham_item"));
		this.World.Assets.m.Money = this.World.Assets.m.Money / 2 - (this.World.Assets.getEconomicDifficulty() == 0 ? 0 : 100);
		this.World.Assets.m.ArmorParts = this.World.Assets.m.ArmorParts / 2;
		this.World.Assets.m.Medicine = this.World.Assets.m.Medicine / 3;
		this.World.Assets.m.Ammo = 0;
	}

	function onSpawnPlayer()
	{
		local randomVillage;

		for( local i = 0; i != this.World.EntityManager.getSettlements().len(); i = ++i )
		{
			randomVillage = this.World.EntityManager.getSettlements()[i];

			if (randomVillage.isMilitary() && !randomVillage.isIsolatedFromRoads() && randomVillage.getSize() >= 3 && !randomVillage.isSouthern())
			{
				break;
			}
		}

		local randomVillageTile = randomVillage.getTile();

		do
		{
			local x = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.X - 1), this.Math.min(this.Const.World.Settings.SizeX - 2, randomVillageTile.SquareCoords.X + 1));
			local y = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.Y - 1), this.Math.min(this.Const.World.Settings.SizeY - 2, randomVillageTile.SquareCoords.Y + 1));

			if (!this.World.isValidTileSquare(x, y))
			{
			}
			else
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.Type == this.Const.World.TerrainType.Ocean || tile.Type == this.Const.World.TerrainType.Shore)
				{
				}
				else if (tile.getDistanceTo(randomVillageTile) == 0)
				{
				}
				else if (!tile.HasRoad)
				{
				}
				else
				{
					randomVillageTile = tile;
					break;
				}
			}
		}
		while (1);

		this.World.State.m.Player = this.World.spawnEntity("scripts/entity/world/player_party", randomVillageTile.Coords.X, randomVillageTile.Coords.Y);
		this.World.Assets.updateLook(6);
		this.World.getCamera().setPos(this.World.State.m.Player.getPos());
		this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function ( _tag )
		{
			this.Music.setTrackList([
				"music/noble_02.ogg"
			], this.Const.Music.CrossFadeTime);
			this.World.Events.fire("event.lone_wolf_scenario_intro");
		}, null);
	}

	function onInit()
	{
		this.World.Assets.m.BrothersMax = 12;
	}

	function onCombatFinished()
	{
		local roster = this.World.getPlayerRoster().getAll();

		foreach( bro in roster )
		{
			if (bro.getFlags().get("IsPlayerCharacter"))
			{
				return true;
			}
		}

		return false;
	}

});

