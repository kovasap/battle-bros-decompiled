this.ai_attack_swing <- this.inherit("scripts/ai/tactical/behavior", {
	m = {
		TargetTile = null,
		PossibleSkills = [
			"actives.swing",
			"actives.shatter",
			"actives.tail_slam",
			"actives.sweep",
			"actives.ghost_swing"
		],
		Skill = null,
		MinTargets = 2
	},
	function create()
	{
		this.m.ID = this.Const.AI.Behavior.ID.Swing;
		this.m.Order = this.Const.AI.Behavior.Order.Swing;
		this.behavior.create();
	}

	function onEvaluate( _entity )
	{
		this.m.TargetTile = null;
		this.m.Skill = null;
		local score = this.getProperties().BehaviorMult[this.m.ID];

		if (_entity.getActionPoints() < this.Const.Movement.AutoEndTurnBelowAP)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (_entity.getMoraleState() == this.Const.MoraleState.Fleeing)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		if (!this.getAgent().hasVisibleOpponent())
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.Skill = this.selectSkill(this.m.PossibleSkills);

		if (this.m.Skill == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		score = score * this.getFatigueScoreMult(this.m.Skill);
		local targets = this.queryTargetsInMeleeRange();

		if (targets.len() < this.m.MinTargets)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		local bestTarget = this.getBestTarget(_entity, this.m.Skill, targets);

		if (bestTarget.Target == null)
		{
			return this.Const.AI.Behavior.Score.Zero;
		}

		this.m.TargetTile = bestTarget.Target.getTile();
		return this.Const.AI.Behavior.Score.Swing * bestTarget.Score * score;
	}

	function onExecute( _entity )
	{
		if (this.m.IsFirstExecuted)
		{
			this.getAgent().adjustCameraToTarget(this.m.TargetTile);
			this.m.IsFirstExecuted = false;
			return false;
		}

		if (this.m.TargetTile != null && this.m.TargetTile.IsOccupiedByActor)
		{
			if (this.Const.AI.VerboseMode && !this.m.TargetTile.IsEmpty)
			{
				this.logInfo("* " + _entity.getName() + ": Using Swing against " + this.m.TargetTile.getEntity().getName() + "!");
			}

			this.m.Skill.use(this.m.TargetTile);

			if (_entity.isAlive() && this.m.Skill.getDelay() != 0)
			{
				this.getAgent().declareEvaluationDelay(this.m.Skill.getDelay());
			}

			if (_entity.isAlive() && (!_entity.isHiddenToPlayer() || this.m.TargetTile.IsVisibleForPlayer))
			{
				this.getAgent().declareAction();
			}

			this.m.TargetTile = null;
		}

		return true;
	}

	function getBestTarget( _entity, _skill, _targets )
	{
		local ourTile = _entity.getTile();
		local bestTarget;
		local bestScore = 0.0;
		local bestCombinedValue = 0.0;

		foreach( target in _targets )
		{
			if (_skill.onVerifyTarget(_entity.getTile(), target.getTile()))
			{
				local score = 1.0;
				local combinedValue = this.queryTargetValue(_entity, target, _skill);
				local targetTile = target.getTile();
				local dir = ourTile.getDirectionTo(target.getTile());
				local dir_left = dir - 1 >= 0 ? dir - 1 : this.Const.Direction.COUNT - 1;
				local dir_farleft = dir_left - 1 >= 0 ? dir_left - 1 : this.Const.Direction.COUNT - 1;

				if (ourTile.hasNextTile(dir_left))
				{
					local tile = ourTile.getNextTile(dir_left);

					if (this.Math.abs(tile.Level - ourTile.Level) <= 1 && tile.IsOccupiedByActor)
					{
						if (tile.getEntity().isAlliedWith(_entity))
						{
							combinedValue = combinedValue - (1.0 - this.getProperties().TargetPriorityHittingAlliesMult) * tile.getEntity().getCurrentProperties().TargetAttractionMult;
						}
						else
						{
							combinedValue = combinedValue + this.queryTargetValue(_entity, tile.getEntity(), _skill);
							score = score + 1.0;
						}
					}
				}

				if (ourTile.hasNextTile(dir_farleft))
				{
					local tile = ourTile.getNextTile(dir_farleft);

					if (this.Math.abs(tile.Level - ourTile.Level) <= 1 && tile.IsOccupiedByActor)
					{
						if (tile.getEntity().isAlliedWith(_entity))
						{
							combinedValue = combinedValue - (1.0 - this.getProperties().TargetPriorityHittingAlliesMult) * tile.getEntity().getCurrentProperties().TargetAttractionMult;
						}
						else
						{
							combinedValue = combinedValue + this.queryTargetValue(_entity, tile.getEntity(), _skill);
							score = score + 1.0;
						}
					}
				}

				for( ; score < this.m.MinTargets;  )
				{
				}

				if (score > bestScore || score == bestScore && combinedValue > bestCombinedValue)
				{
					bestTarget = target;
					bestCombinedValue = combinedValue;
					bestScore = score;
				}
			}
		}

		local score = this.Math.maxf(0.0, bestCombinedValue / 2.0);
		return {
			Target = bestTarget,
			Score = score
		};
	}

});

