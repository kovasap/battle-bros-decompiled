this.campfire_main_dialog_module <- this.inherit("scripts/ui/screens/ui_module", {
	m = {},
	function create()
	{
		this.m.ID = "MainDialogModule";
		this.ui_module.create();
	}

	function destroy()
	{
		this.ui_module.destroy();
	}

	function clear()
	{
	}

	function queryData()
	{
		local myTile = this.World.State.getPlayer().getTile();
		local night = !this.World.getTime().IsDaytime;
		local type = myTile.TacticalType == this.Const.World.TerrainTacticalType.DesertHills ? this.Const.World.TerrainType.Desert : myTile.Type;
		local shield = this.World.Assets.getBannerID() < 10 ? "0" + this.World.Assets.getBannerID() : this.World.Assets.getBannerID();
		local result = {
			Title = "Retinue",
			SubTitle = "Manage your retinue of non-combat followers",
			Assets = this.UIDataHelper.convertAssetsInformationToUIData(),
			Background = this.Const.World.TerrainSettlementImages[type].Background + (night ? "_night" : "") + ".jpg",
			BackgroundCenter = "ui/campfire/campfire_tents_01.png",
			BackgroundLeft = "ui/campfire/shield_" + shield + ".png",
			BackgroundRight = null,
			Cart = "ui/campfire/cart_0" + (this.World.Retinue.getInventoryUpgrades() + 1),
			Fire = "ui/campfire/fire_01.png",
			Mood = this.Const.World.TerrainSettlementImages[type].Mood != null ? this.Const.World.TerrainSettlementImages[type].Mood + ".png" : null,
			Foreground = this.Const.World.TerrainSettlementImages[type].Foreground != null ? this.Const.World.TerrainSettlementImages[type].Foreground + ".png" : null
		};
		result.Slots <- this.World.Retinue.getCurrentFollowersForUI();
		return result;
	}

	function showDialogPopup( _title, _text, _okCallback, _cancelCallback, _isMonologue = false )
	{
		if (!this.DialogScreen.isVisible() && !this.DialogScreen.isAnimating())
		{
			this.m.Parent.hide();
			this.DialogScreen.show(_title, _text, this.onDialogHidden.bindenv(this), _okCallback, _cancelCallback, _isMonologue);
			this.World.State.getMenuStack().push(function ()
			{
				this.DialogScreen.hide();
				this.World.State.m.CampfireScreen.show();
			}, function ()
			{
				return !this.DialogScreen.isAnimating();
			});
		}
	}

	function onCartClicked()
	{
		if (this.World.Retinue.getInventoryUpgrades() < this.Const.World.InventoryUpgradeCosts.len())
		{
			if (this.World.Assets.getMoney() >= this.Const.World.InventoryUpgradeCosts[this.World.Retinue.getInventoryUpgrades()])
			{
				this.showDialogPopup(this.Const.Strings.InventoryUpgradeHeader[this.World.Retinue.getInventoryUpgrades()], "You can choose to " + this.Const.Strings.InventoryUpgradeText[this.World.Retinue.getInventoryUpgrades()] + " in order to gain 27 more inventory slots for the cost of " + this.Const.Strings.InventoryUpgradeCosts[this.World.Retinue.getInventoryUpgrades()] + " crowns. Is this what you want to do?", this.onUpgradeInventorySpace.bindenv(this), null);
			}
			else
			{
				this.showDialogPopup(this.Const.Strings.InventoryUpgradeHeader[this.World.Retinue.getInventoryUpgrades()], "Sadly, you can not afford the " + this.Const.Strings.InventoryUpgradeCosts[this.World.Retinue.getInventoryUpgrades()] + " crowns necessary to " + this.Const.Strings.InventoryUpgradeText[this.World.Retinue.getInventoryUpgrades()] + " and gain more inventory space at this time.", null, null, true);
			}
		}
	}

	function onUpgradeInventorySpace()
	{
		this.World.Assets.addMoney(-this.Const.World.InventoryUpgradeCosts[this.World.Retinue.getInventoryUpgrades()]);
		this.World.Retinue.upgradeInventory();
	}

	function onDialogHidden()
	{
		this.World.State.getMenuStack().pop();
	}

	function onLeaveButtonPressed()
	{
		this.m.Parent.onModuleClosed();
	}

});

