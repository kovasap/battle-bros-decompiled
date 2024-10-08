this.ai_flee <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		TargetTile = null,
		AttemptsThisTurn = 0
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.Flee;
		this.m.Order = this.Const.AI.Behavior.Order.Flee;
		this.behavior.create();
	}

	function onEvaluate( _entity )
	{
		this.m.TargetTile = null;

		if (_entity.getMoraleState() != this.Const.MoraleState.Fleeing)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (_entity.getCurrentProperties().IsRooted)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (_entity.getActionPoints() < this.Const.Movement.AutoEndTurnBelowAP)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (this.m.AttemptsThisTurn >= this.Const.AI.Agent.MaxFleeAttemptsPerTurn)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (!_entity.isPlayerControlled() && !this.getAgent().hasKnownOpponent())
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (!_entity.getTile().hasZoneOfControlOtherThan(_entity.getAlliedFactions()) && this.getAgent().getBehavior(this.Const.AI.Behavior.ID.Retreat) != null && this.getAgent().getBehavior(this.Const.AI.Behavior.ID.Retreat).getScore() > 0)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.TargetTile = this.findFleeToPosition(_entity);

		if (this.m.TargetTile != null && this.m.TargetTile.IsEmpty)
		{
			return this.Const.AI.Behavior.Score.Flee;
		}
		else
		{
			return this.Const.AI.Behavior.Score.Zero;
		}
	}

	function onBeforeExecute( _entity )
	{
		++this.m.AttemptsThisTurn;
	}

	function onTurnStarted()
	{
		this.m.AttemptsThisTurn = 0;
	}

	function onExecute( _entity )
	{
		if (this.m.TargetTile != null)
		{
			local navigator = this.Tactical.getNavigator();

			if (this.m.IsFirstExecuted)
			{
				this.getAgent().getOrders().IsRetreating = true;
				local settings = navigator.createSettings();
				settings.ActionPointCosts = _entity.getActionPointCosts();
				settings.FatigueCosts = _entity.getFatigueCosts();
				settings.FatigueCostFactor = this.Const.Movement.FatigueCostFactor;
				settings.ActionPointCostPerLevel = _entity.getLevelActionPointCost();
				settings.FatigueCostPerLevel = _entity.getLevelFatigueCost();
				settings.AllowZoneOfControlPassing = true;
				settings.ZoneOfControlCost = this.Const.AI.Behavior.ZoneOfControlAPPenalty * 2;
				settings.AlliedFactions = _entity.getAlliedFactions();
				settings.Faction = _entity.getFaction();

				if (this.Const.AI.VerboseMode)
				{
					this.logInfo("* " + this.getAgent().getActor().getName() + ": Fleeing.");
				}

				navigator.findPath(_entity.getTile(), this.m.TargetTile, settings, 0);

				if (this.Const.AI.PathfindingDebugMode)
				{
					navigator.buildVisualisation(_entity, settings, _entity.getActionPoints(), _entity.getFatigueMax() - _entity.getFatigue());
				}

				local movement = navigator.getCostForPath(_entity, settings, _entity.getActionPoints(), _entity.getFatigueMax() - _entity.getFatigue());
				this.m.Agent.adjustCameraToDestination(movement.End);

				if (this.Tactical.State.getStrategicProperties() != null && this.Tactical.State.getStrategicProperties().IsArenaMode)
				{
					this.Sound.play(this.Const.Sound.ArenaFlee[this.Math.rand(0, this.Const.Sound.ArenaFlee.len() - 1)], this.Const.Sound.Volume.Tactical * this.Const.Sound.Volume.Arena);
				}

				this.m.IsFirstExecuted = false;
			}

			if (!navigator.travel(_entity, _entity.getActionPoints(), _entity.getFatigueMax() - _entity.getFatigue()))
			{
				if (_entity.isAlive())
				{
					if (_entity.isPlayerControlled())
					{
						_entity.setDirty(true);
					}

					if (!_entity.isHiddenToPlayer())
					{
						this.getAgent().declareAction();
					}
				}

				this.m.TargetTile = null;
				return true;
			}
			else
			{
				return false;
			}
		}

		this.getAgent().setFinished(true);
		return true;
	}

	function findFleeToPosition( _entity )
	{
		local targets = [];

		if (_entity.isPlayerControlled())
		{
			local actors = this.Tactical.TurnSequenceBar.getAllEntities();

			foreach( a in actors )
			{
				if (a.isAlliedWith(_entity))
				{
					continue;
				}

				targets.push(a);
			}
		}
		else
		{
			local actors = this.m.Agent.getKnownOpponents();

			foreach( a in actors )
			{
				if (a.Actor.isNull())
				{
					continue;
				}

				targets.push(a.Actor);
			}
		}

		local dirs = [
			{
				Dir = 0,
				Score = 0
			},
			{
				Dir = 1,
				Score = 0
			},
			{
				Dir = 2,
				Score = 0
			},
			{
				Dir = 3,
				Score = 0
			},
			{
				Dir = 4,
				Score = 0
			},
			{
				Dir = 5,
				Score = 0
			}
		];
		local myTile = _entity.getTile();

		foreach( t in targets )
		{
			local dir = myTile.getDirectionTo(t.getTile());
			local dir_left = dir - 1 >= 0 ? dir - 1 : this.Const.Direction.COUNT - 1;
			local dir_farleft = dir - 2 >= 0 ? dir - 2 : this.Const.Direction.COUNT - 2;
			local dir_right = dir + 1 < this.Const.Direction.COUNT ? dir + 1 : 0;
			local dir_farright = dir + 2 < this.Const.Direction.COUNT ? dir + 2 : 1;
			dirs[dir].Score += 4;
			dirs[dir_left].Score += 3;
			dirs[dir_farleft].Score += 1;
			dirs[dir_right].Score += 3;
			dirs[dir_farright].Score += 1;
		}

		dirs.sort(this.onSortByLowestScore);
		local navigator = this.Tactical.getNavigator();
		local settings = navigator.createSettings();
		settings.ActionPointCosts = _entity.getActionPointCosts();
		settings.FatigueCosts = _entity.getFatigueCosts();
		settings.FatigueCostFactor = this.Const.Movement.FatigueCostFactor;
		settings.ActionPointCostPerLevel = _entity.getLevelActionPointCost();
		settings.FatigueCostPerLevel = _entity.getLevelFatigueCost();
		settings.AllowZoneOfControlPassing = true;
		settings.ZoneOfControlCost = this.Const.AI.Behavior.ZoneOfControlAPPenalty * 2;
		settings.AlliedFactions = _entity.getAlliedFactions();
		settings.Faction = _entity.getFaction();

		foreach( d in dirs )
		{
			for( local i = 0; i < this.Const.AI.Behavior.FleeMaxAttemptsPerDirection; i = ++i )
			{
				local x = myTile.X;
				local y = myTile.Y;
				local steps = this.Math.rand(5, 7);
				x = x + this.Const.DirectionStep[d.Dir][0] * steps;
				y = y + this.Const.DirectionStep[d.Dir][1] * steps;

				if (!this.Tactical.isValidTile(x, y))
				{
				}
				else
				{
					local tile = this.Tactical.getTile(x, y);

					if (!tile.IsEmpty)
					{
					}
					else if (!navigator.findPath(myTile, tile, settings, 0))
					{
					}
					else
					{
						local movementCosts = navigator.getCostForPath(_entity, settings, _entity.getActionPoints(), _entity.getFatigueMax() - _entity.getFatigue());

						if (movementCosts.Tiles == 0 || movementCosts.End.isSameTileAs(myTile))
						{
						}
						else
						{
							return tile;
						}
					}
				}
			}
		}

		return null;
	}

	function onSortByLowestScore( _d1, _d2 )
	{
		if (_d1.Score > _d2.Score)
		{
			return 1;
		}
		else if (_d1.Score < _d2.Score)
		{
			return -1;
		}

		return 0;
	}

});

