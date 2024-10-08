this.bright_trait <- this.inherit("scripts/skills/traits/character_trait", {
	m = {},
	function create()
	{
		this.character_trait.create();
		this.m.ID = "trait.bright";
		this.m.Name = "Bright";
		this.m.Icon = "ui/traits/trait_icon_11.png";
		this.m.Description = "This character has an easier time than most with grasping new concepts and adapting to the situation.";
		this.m.Titles = [
			"the Quick",
			"the Fox",
			"Quickmind",
			"the Bright",
			"the Wise"
		];
		this.m.Excluded = [
			"trait.dumb"
		];
	}

	function getTooltip()
	{
		return [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			},
			{
				id = 10,
				type = "text",
				icon = "ui/icons/special.png",
				text = "[color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] Experience Gain"
			}
		];
	}

	function onUpdate( _properties )
	{
		_properties.XPGainMult *= 1.1;
	}

});

