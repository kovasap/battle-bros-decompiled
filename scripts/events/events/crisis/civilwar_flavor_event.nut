this.civilwar_flavor_event <- this.inherit("scripts/events/event", {
	m = {},
	function create()
	{
		this.m.ID = "event.crisis.civilwar_flavor";
		this.m.Title = "Along the way...";
		this.m.Cooldown = 7.0 * this.World.getTime().SecondsPerDay;
		this.m.Screens.push({
			ID = "A",
			Text = "{[img]gfx/ui/events/event_22.png[/img]A canopy billowing loosely across leaning tentpoles, given ghostly life by the moans of the men lingering beneath.  You watch as elder healers go from wounded to wounded, but there isn\'t much to be done here. Passing their hands in the shape of aerial rites, these elder healers think it best that these fallen and falling warriors go into the next realm protected from whatever spirits lay beyond. | [img]gfx/ui/events/event_21.png[/img]You come across two men laying by the side of a small road. They kick back at the sight of you, one raising a sword. It wobbles in his hand until he can no longer muster the strength to keep it up.%SPEECH_ON%Just let us die in peace.%SPEECH_OFF%A few more men emerge under the banner of %randomnoblehouse%. They nod and tell you to get on.%SPEECH_ON%Keep it moving, strangers.%SPEECH_OFF% | [img]gfx/ui/events/event_88.png[/img]Both sides of the road are lined with wounded warriors, armored men splayed out, hands draped across their foreheads or clutching the nubs left over from limbs gone missing. In a nearby field there are signs of what battle had brought them to this state of grisly being. This sad lot of men, apparently, \'won\' that fight. | [img]gfx/ui/events/event_22.png[/img]You find a few noblemen of %randomnoblehouse% peering over a sea of skewered and slain men - apparently you just missed some epic battle. Amongst the dead and dying you watch as swordsman pick through the enemy wounded and finish them off. A few guards head you off.%SPEECH_ON%This ain\'t your war. Keep on moving or we\'ll make it yours.%SPEECH_OFF% | [img]gfx/ui/events/event_02.png[/img]You come across a few noblemen standing atop a hill. Guards immediately rush to you, swords drawn.%SPEECH_ON%Do you belong here?%SPEECH_OFF%You look beyond the group to see that scribes are writing down notes. And beyond the scribes lays a scene of incredible destruction, great swathes of dead men from some pointless battle or another.%SPEECH_ON%I asked you a question, stranger.%SPEECH_OFF%You glance back at the guard. The noblemen are also looking down at you now. Shaking your head, you order the %companyname% to get moving before y\'all get into another ordeal. | [img]gfx/ui/events/event_21.png[/img]You come across a woman cleaning the wounds of a well armored man. He\'s got some decent equipment on him, and a pair of very dim eyes stare up at you from the faceguard. Drawing out your sword, you tell the woman to step aside so you can finish the job and collect the goods. She shakes her head.%SPEECH_ON%If it\'s the armor you\'re interested in you\'ll have pay better attention. This man fought under the banner of %randomnoblehouse%, the rest of which stand over that hill yonder. They so much as peer over it while you shake us down, they\'ll be skewering you on stakes and hanging you for the crows.%SPEECH_OFF%Suspicious, you lock eyes with her. The woman doesn\'t so much as flinch, but she does eventually move away from the wounded man.%SPEECH_ON%If you think I\'m lying, then have at it. Go on, take his life and take his gear.%SPEECH_OFF%You shake your head and tell the %companyname% to get going. No more than a few feet further up the road do you see what is seemingly half an army of the noble house\'s men lingering. | [img]gfx/ui/events/event_88.png[/img]A few soldiers hobble past you on the road. Healers are tending to their wounds, and a few women bound after them, sobbing or moaning into their fisted hands. One of the men pauses at the sight of you.%SPEECH_ON%Don\'t try anything, mercenary. The rest of %randomnoblehouse%\'s army marches just yonder.%SPEECH_OFF%You nod and let the wounded troop pass. The army never does appear. | [img]gfx/ui/events/event_07.png[/img]You come across a man being hounded by scoundrels. Seeing you, the thieves quickly take the fallen man\'s boots, pants, and bits of armor and one lopes off with a sword, the blade leveled across raised arms like some heretical thaumaturge carrying a relic of impossible yet brittle power.\n\n When you get to the wounded soldier he raises his hands to the sky, your silhouette no doubt blurred between his splayed fingers. He says something which you do not hear and then he is dead. There is nothing else to take from him. | [img]gfx/ui/events/event_02.png[/img]A wounded man is sitting up against a signpost. He nods at you as you near.%SPEECH_ON%Mercenaries?%SPEECH_OFF%As you get closer, you see the sigil of %randomnoblehouse% stitched across an unfurled and trampled banner. You don\'t answer his question, instead looking around for an ambush or soldiers from his house. There are none. And the man himself has been stripped to his skivvies. He coughs and shifts as though to tilt the pain from one end of his body to the other.%SPEECH_ON%Yeah, I suppose you don\'t have to answer. I\'ll be dead soon anyhow. I\'d feel a lot better if you didn\'t stick around to watch.%SPEECH_OFF%A pleading eye meets yours. With pity, you leave the man to a peaceful, lonely death. | [img]gfx/ui/events/event_16.png[/img]You find a crippled man crawling toward a dead cow. He\'s got the banner of %randomnoblehouse% trailing behind him, a messied and shredded coattail if there ever was one. You watch as he nestls against the bosom of the animal and begins to suck on its teat. He tries each grayed nub in turn, though not a drop of milk is to be had for Death is the driest of counties. Sighing, he flops over and finally sees you.%SPEECH_ON%Ah hell, don\'t look at me like that.%SPEECH_OFF%You offer water and he takes a sip.%SPEECH_ON%Dreadful. I guess I won\'t miss this place much.%SPEECH_OFF%You nod and think to speak, but you notice the man is staring straight ahead, his arms flat at his sides, and a couple of flies got news of his passing before you did. | [img]gfx/ui/events/event_02.png[/img]You come across a naked man clothed only in the torn banner of %randomnoblehouse%. A large black bird is eating his feet. He stares at it, then at you, explaining himself in embarrassment.%SPEECH_ON%It asked if it could have a bite.%SPEECH_OFF%You raise an eyebrow.%SPEECH_ON%And you said yes?%SPEECH_OFF%The man shrugs.%SPEECH_ON%I don\'t remember what I said.%SPEECH_OFF%With a crack, the beak rips off a toe. You look back at the man, but he\'s slowly tilting over, the light faded from his eyes. The bird hops up to his head where there be easier pickings. | [img]gfx/ui/events/event_94.png[/img]Walls of smoke curl beyond the eaves of a burning farmstead. The owners are all dead in the grass. A dog howls wildly and then runs off at the sight of you, as though you were there to finish the job. %randombrother% nods into a pile of weeds.%SPEECH_ON%They didn\'t even spare the youngins.%SPEECH_OFF%You spit and shake your head.%SPEECH_ON%No, they did not.%SPEECH_OFF% | [img]gfx/ui/events/event_30.png[/img]Tufts of grey smoke pipe over a hill. Cresting it, you discover a farmstead ablaze. A few souls hang from a nearby tree. Their necks show signs of desperation - their hands were not bound - and footprints in the earth show that whoever did this probably watched them die. A dead dog is at the base of the tree and another headless mutt swings by its feet. Fresh blood still drips. %randombrother% comes up to your side.%SPEECH_ON%We should get going, sir, before something thinks us the perpetrators here.%SPEECH_OFF% | [img]gfx/ui/events/event_71.png[/img]You come upon a smoldering farmstead. There are bodies amongst the wood, though the charred ruin all looks the same to you. %randombrother% joins you.%SPEECH_ON%Searched the area, sir. Didn\'t find nothin\' worth taking. Whoever did this was quite thorough.%SPEECH_OFF% | [img]gfx/ui/events/event_78.png[/img]%randombrother% points toward the horizon, more particularly toward tufts of smoke wafting lazily over a hillcrest.%SPEECH_ON%Should we go check it out?%SPEECH_OFF%A few riders, well-armed and with lances so long and large you know they seek only one thing - enormous and pitched battles. Not wanting to risk running into those responsible, and whatever army might be with them, you tell the men to stay low and carry on. | [img]gfx/ui/events/event_02.png[/img]A horse ablaze, scattering down the road hawing and crackling like some nightmare fetched from a desert sleep. You watch as the animal buckles and goes headfirst into a ditch where it rolls and pitches, stands, stumbles, and finally goes still.\n\n Turning down the road, you come to find a stable consumed by fires and a nearby hovel burnt to cinders. A few laymen are dead in the grass and their dogs, goats, and sheep and all else is there with them. You\'re not sure which side of the realm\'s war is responsible for this, but you\'ve no desire to stick around and find out. | [img]gfx/ui/events/event_54.png[/img]You come upon a hovel with fires blazing forth from its windows. There\'s a body in the grass, skinned and, by the looks on its face, it was a slow treatment.\n\n Suddenly, the door to the home kicks open and a man on fire stumbles out. He takes one look at you and your men, screams, and simply goes back inside. The roof collapses and whatever terror was born here finally dies. You tell the %companyname% to get moving lest someone, or some large army, come to think it was you who did this. | [img]gfx/ui/events/event_22.png[/img]You come across a soldier standing with his hands tented over the end of a spiked spear. He nods at you.%SPEECH_ON%\'Ello. If I were you, I\'d keep moving.%SPEECH_OFF%Looking around, you ask what the man is doing out here.%SPEECH_ON%Keeping watch for the army of %randomnoble%. We is at war, don\'tcha know?%SPEECH_OFF%He spits and throws his hand out to the horizon.%SPEECH_ON%Rest of the army stands thataway. So I\'d fly like a crooked bee and go around.%SPEECH_OFF%You nod and take the man\'s advice. Sure enough, you eventually skirt around the edge of an enormous military camp. | An old man is founding squatting in the middle of a path. He\'s eating nuts and mushrooms. He looks up at you.%SPEECH_ON%More of %randomnoblehouse%\'s soldiers?%SPEECH_OFF%You shake your head.%SPEECH_ON%Mercenaries.%SPEECH_OFF%The man cocks his head.%SPEECH_ON%Didn\'t know there was a difference.%SPEECH_OFF%You nod.%SPEECH_ON%We do not fly a noble banner.%SPEECH_OFF%The man jaws on a nut.%SPEECH_ON%Ah, yes, pressed into battle by way of gold. You fly the most common banner of all, soldier. Would you like a mushroom?%SPEECH_OFF%He holds one up. It is mushed and muddied. You decline and order the men to get to marching again. | [img]gfx/ui/events/event_37.png[/img]You come across a few men flying the %randomnoblehouse% banner. They\'re yanking dogs at the ends of their leashes, and the dogs are being separated from corpses, leashes of flesh pulled between their teeth and the bodies. Spotting you, one of the soldiers tells you off.%SPEECH_ON%We ain\'t got money for your services, mercenary, but I\'ll put an axe in that dumb face of yours if you don\'t move on.%SPEECH_OFF%There are far, far too many soldiers around to respond to that so you just nod and move on. | [img]gfx/ui/events/event_36.png[/img]You spot a shepherd herding goats along a hillside. He spots you and waves.%SPEECH_ON%This is not the safest place for folks like me.%SPEECH_OFF%He kicks one of the goats along. It bays and blurts and froths, but moves along all the same, clambering and shuffling amongst its brothers. The man shakes his head.%SPEECH_ON%This war between the noble houses has brought so much bloodshed to this land.%SPEECH_OFF%The shepherd boots along another of his flock.%SPEECH_ON%I guess it\'s only a matter of time until they come to me looking for milk, and then for meat, and then for me. Just another warm body thrown into the thresher these nobles call a \'grand honor\' or some such shite.%SPEECH_OFF%You let the man and his herd pass before continuing on yourself. | [img]gfx/ui/events/event_71.png[/img]You come across a man standing aside the ruins of what appear to be his home.%SPEECH_ON%Well, there goes all I had.%SPEECH_OFF%He seems rather calm about the whole affair. He spits and looks around.%SPEECH_ON%Hope they didn\'t take off with my dog.%SPEECH_OFF%The man lets out a sharp whistle, pauses, then nods grimly.%SPEECH_ON%Suppose they did.%SPEECH_OFF%He goes over his charcoaled hovel and begins to kick the wooden frames away.%SPEECH_ON%Excuse me, sir mercenary, I need to rebuild so that those damned %randomnoblehouse% grunts have something else to knock over the next time they come around. By the way, if you ever see a dog, any kind of dog, send it my way. Your company\'s nice, but I prefer the muttly sort of companionship.%SPEECH_OFF%You nod and go on your way. Not far off you do find a dog, but it is in no state to be returned to anyone. | [img]gfx/ui/events/event_30.png[/img]A fire consumes a farmstead, and the pyros responsible are just riding over a hill yonder. When they leave, you rush to the home and come to hear screams inside. The door has been jammed with shut with a wooden post. You kick it aside and instantly fires burst forth and a woman scatters out from the flames. She is in tatters, smoky and charcoaled and ghastly orange. It is too late. She falls into the grass and you can only step away.\n\n The hovel cracks and then collapses. A man barks out to you.%SPEECH_ON%Like what you see, mercenary? Why don\'t you go on and get going.%SPEECH_OFF%It\'s the bannermen of %randomnoblehouse% and there are far too many soldiers to start any sort of battle. You get on going. | The trees that line the path are creaking with ropes weighted with corpses. Every branch has found a use in this vocation - you count at least a dozen bodies swinging, most with sacks over their heads. The house words of %randomnoblehouse% have been carved into the base of the tree. There\'s a sort of haughty confidence in the typography. | [img]gfx/ui/events/event_02.png[/img]A few soldiers of %randomnoblehouse% stand beside a tree. It is caked with blood from treetop to its roots. You can hear the squash of the soldiers\' boots as they step through it.%SPEECH_ON%Say, mercenary, do you think the dead could fertilize new trees?%SPEECH_OFF%The man sounds awfully educated to be a murderous soldier, but really you have no idea what fertilize means. You simply nod. He nods in return.%SPEECH_ON%Yeah, I figured as much. Well, I suppose in a couple years there\'s gonna be a whole forest thataway.%SPEECH_OFF%He points toward some distance, silhouettes of horror stacked high in the grass. The man bursts into laughter. You tell your men to get going before something stupid goes down. | [img]gfx/ui/events/event_02.png[/img]You come to find a few trees along the path have been cut down and their stumps sawed into spikes. This wasn\'t an artistic matter - bodies have been spiked there, grisly and cruel, faces appropriately contorted to the horrors that met them in the end. A few bannermen of %randomnoblehouse% stand nearby, seemingly happy with their work.%SPEECH_ON%Hey, mercenary. \'Wood\' you please kindly move along?%SPEECH_OFF%He laughs and turns to the rest of his men.%SPEECH_ON%Get it?%SPEECH_OFF% | [img]gfx/ui/events/event_95.png[/img]Moving along a path, you come across a bodies all clumped together. They\'re lying face down and naked. Wounds pepper their backs, superficial until they weren\'t. Whoever did this wanted to exact some amount of pain on these poor folks - and those creatures of crueler stock might still be around. You spot a banner of %randomnoblehouse% laying in the mud just nearby. That\'s enough to spur the %companyname% along before it can find trouble. | [img]gfx/ui/events/event_75.png[/img]A few mounds of earth mottle the sides of the path you are on. Some mudworn shovels are nearby, and you can\'t help but notice that a hand is sticking forth from one of the graves. Uncovering it, you find a naked corpse, mouth full of dirt and beetles. You need not uncover the rest to know they\'re in a similar state. | [img]gfx/ui/events/event_02.png[/img]You come to find a body crucified to a signpost with %randomnoblehouse%\'s sigil carved into his forehead. His hands help aide you in finding a nearby town, though his open mouth seems to shout to not go there. | [img]gfx/ui/events/event_88.png[/img]Along the road lay rows of wounded men from one of %randomnoblehouse%\'s armies. You watch as an elderly healer walks the lines, drill and scalpel in hand, tending to those souls who are loudest. He sets himself upon a particularly shrill fellow who is clutching a green and puckered nub where one of his legs used to be.\n\n The healer holds the wounded soldier down and with no trepidation in his trephination he begins to bore a hole into the man\'s skull. You wince at the screams. A moonly fluid seeps from the brainpan, chips of bone coursing along the froth, and as the sickly blue ruin pours over the man\'s face he appears to smile and be at ease, as though peace came by way of an augered and fevered dream. | [img]gfx/ui/events/event_88.png[/img]A few of %randomnoblehouse%\'s bannermen line up to see an elderly healer. You watch as the old man turns his patients this way and that, pressing his thumbs into their flesh, smelling their clothes, their hair, their blood. His summations are scribed into a scroll no one can see, and then he moves the men off to a side. You ask a lieutenant what is going on. He explains.%SPEECH_ON%We are seeing who is still fit to fight. If you are not fit, you go to the left, if you are fit, you go to the right.%SPEECH_OFF%Slowly, you realize not a single man is put to the left. Not even the one-legged or blind or wheezing. The lieutenant grins.%SPEECH_ON%I told the healer my requirements for going to the right and he seems to be following them satisfactorily.%SPEECH_OFF%You ask what those requirements might be. The lieutenant raises an eyebrow.%SPEECH_ON%Why, they must be breathing, of course! Don\'t tell the men that, though. Illusions of relaxation is nothing but decay to an army!%SPEECH_OFF% | [img]gfx/ui/events/event_71.png[/img]A man is found along a path. He\'s missing both his legs, the nubs of their trunks in each hand as though he had no idea how he\'d come to this state. With pitiful eyes, he glances up at you.%SPEECH_ON%What happened?%SPEECH_OFF%You shake your head. Seeing the banner of %randomnoblehouse%, though, you gather that he was attacked in the midst of the war amongst the nobles. The wounded man coughs and a rope of red spurts from one of the stumps. His face goes pale.%SPEECH_ON%Huh, I feel much better now. I think I\'ll do that again.%SPEECH_OFF%He gathers his breath to cough, smiles, and falls over. | [img]gfx/ui/events/event_53.png[/img]You find a few men crawling about naked. They\'re dragging innards and loosely tethered limbs behind them, moaning and groaning like the refuse of a medical ward come alive. One glances up at you, the banner of %randomnoblehouse% stuffed into his mouth.%SPEECH_ON%Please...%SPEECH_OFF%He collapses. Another man grabs onto your boot, but you shake him off and he, too, dies in the moment. The rest stop moving one by one in turn. It appears as though they sought you as a savior and, upon getting the bad news, they died in disappointed union. | [img]gfx/ui/events/event_75.png[/img]A man\'s slathered in blood, setting squat in the middle of a path, naked save for the metal knife he\'s biting down on. He\'s got gore in his hands, and mad lust in his eyes. Bodies lay nearby. Destroyed, demolished in shells of armor that they once depended upon for protection. The insane man glances at them, then at you.%SPEECH_ON%Oh, it was good fight. Oh, it was a good fight. Oh, my sirs, it was a good fight!%SPEECH_OFF%He jumps to his feet and you draw your sword, but the man turns and sprints away. You dare not catch him or his curse. | [img]gfx/ui/events/event_11.png[/img]You come to a tree along the path. There\'s a man talking to a cat, but as you get closer you realize he\'s tied a rope around the fearful feline\'s neck.%SPEECH_ON%Purr, yes, keep purring... all will be well. I\'m sorry you saw the things I did. I love your purring...%SPEECH_OFF%You raise your voice.%SPEECH_ON%Sir?%SPEECH_OFF%The second the man turns around you see that he is a bannerman of %randomnoblehouse%. Seeing its chance, the cat slips its noose and scatters. The man cries out and gives chase. Hopefully, that is the last you see of them both. |[img]gfx/ui/events/event_17.png[/img] You come to a man sitting in the road. He\'s got a dog nestled in his lap, though the mutt\'s head is hanging limp and bloodied. The man looks up at you.%SPEECH_ON%Have you seen my dog? It\'s black, matted, has a white tail. Have you seen my dog?%SPEECH_OFF%The pup he\'s describing is currently in his lap, but you do not say as much. Instead, you shake your head and tell the man a simple \'no.\' He shakes his head in return.%SPEECH_ON%The bannermen of %randomnoblehouse% came by. Destroyed everything. And they took my dog. Say, have you seen my dog?%SPEECH_OFF% | [img]gfx/ui/events/event_30.png[/img]You find a burning cottage beside the path. A few dead bodies are scattered about the grass, some of them quite small. Looking around, you do not find the perpetrators, though the banner of %randomnoblehouse% is flying from the branches of a nearby tree. The war is sparing no one. | [img]gfx/ui/events/event_72.png[/img]You come to find a shepherd standing before a massacre. He\'s crouched, hands balanced over his knees, a cane balanced over his arms, like some fleshen clock with shadows for time. Seeing you, he speaks up and he\'s rather articulate, as though he\'s getting something long on his mind.%SPEECH_ON%Soldiers came by. I said don\'t kill my sheep. They said what sheep. I said nothing. They pushed me down. Went over the hill. Found my sheep. Slaughtered my sheep. Ate my sheep. I should have kept my mouth shut.%SPEECH_OFF%His thumbs twist the ends of his walking staff, but he says nothing more. | [img]gfx/ui/events/event_02.png[/img]You find a man impaled to a tree by the banner pole of his house, %randomnoblehouse%. His eyes stare at the ground before him, at a litter of footprints that seemed to have been standing around long enough to leave deep grooves in the mud. And then he departed and so did they.}",
			Image = "",
			Characters = [],
			Options = [
				{
					Text = "Such is war.",
					function getResult( _event )
					{
						return 0;
					}

				}
			],
			function start( _event )
			{
			}

		});
	}

	function onUpdateScore()
	{
		if (!this.World.FactionManager.isCivilWar())
		{
			return;
		}

		if (!this.World.getTime().IsDaytime)
		{
			return;
		}

		local currentTile = this.World.State.getPlayer().getTile();

		if (!currentTile.HasRoad)
		{
			return;
		}

		if (this.Const.DLC.Desert && currentTile.SquareCoords.Y <= this.World.getMapSize().Y * 0.2)
		{
			return;
		}

		this.m.Score = 5;
	}

	function onPrepare()
	{
	}

	function onPrepareVariables( _vars )
	{
	}

	function onClear()
	{
	}

});

