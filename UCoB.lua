--[[  ULTIMATE COIL OF BAHAMUT  *Click for more info*

**VERY ROUGH BUILD MAY NOT EVEN WORK IN THE FIRST PLACE 
JUST A HEADS UP NEEDS ALOT OF WORK**

Version:		1.0 *Feedback Version*
By:				orozcouscg
Strategy and Reference - http://clees.me/guides/ucob/

What Works:
-	Basic callouts for Twintania
-	Basic Timelines for Fireball stacks
-	Basic functions for detecting buffs for future functions
-	Basic Chat detection for Nael's RP quotes for mechanics.


Needs Work:
-	Timeline needs better timing optimization based on total DPS pushing mechanics


Desired Features:
-	EntityID pos for Twintania, Nael, and Bahamut Prime to provide 
	the different methods to some of the trios.
-	EntityID pos of dragons to layout waymarks automatically for divebombs based on the mesh.
**both may require a mesh to calculate a position???? Need to ask Ace first to find out if this is even possible**


]]

local MarkerLogicDebug = false
local MarkerDelay = 0.5 -- Marker Delay in seconds, 0 = instant, 1 = 1 second, etc
local PulseDelay = 0.25 -- Time in seconds the function will wait before running again

local profile = {
	name = "[Raid][Ultimate]Unending Coils of Bahamut",
	start = "Engage!",
	reset = "reset", -- will be needed to be typed or manually reset for now
	player_thunder = true,
	player_thunder2 = true,
	player_fire = true,
	player_ice = true,
	mark_ignore = "/mk ignore1 <t>",
	mark_ignore2 = "/mk ignore2 <t>",
	marker_one = "/mk attack1 <t>",
	marker_two = "/mk attack2 <t>",
	marker_three = "/mk attack3 <t>",
-- Wings of Salvation Doom Cleanse Order Function **UNDER CONSTRUCTION**
-- end of Wings of Salvation function
--[[ 
grand_octet = function ()
-- detects run script from detect_action



end,
]]


--[[
thunderstruck = function() --basic as fuck again
		
		if (HasBuffs(Player,466)) then
			return true
		end
		
	end,
	]]
	

	--[[timeline = {
		{ post = 10, sound = "Fireball Stack",
			main_image = "Fireball",
			helper_image = "STACK!!!",
			runcode = "SendTextCommand('/party Fireball! STACK!!<se.1> <se.2>')",
		},
		{ post = 105, sound = "Stack Stack Stack",
			main_image = "Fireball and Liquid Hell",
			helper_image = "bait Liquid Hell then run to party for stack",
			runcode = "SendTextCommand('/party Prepare for incoming Fireball! STACK!!<se.1> <se.2>')",
		},
		{ post = 154, sound = "Stack Stack Stack",
			main_image = "Final Fireball",
			helper_image = "bait, stack, DPS!!!",
			runcode = "SendTextCommand('/party Prepare for Incoming Fireball! STACK!! <se.1> <se.2>')",
		},
	},
	]]
	triggers = {
		
		{ 	detect_action = 9898,  --Twister
			detect_delay = 10,
			sound = "Twisters",
			main_image = "Twisters",
			helper_image = "move near end of cast...",
			runcode = "SendTextCommand('/p <se.4> Twisters, Twisters Twisters')",
		},
		{ 	detect_action = 9897,  --Death Sentence (Tank Swap)
			detect_delay = 10,
			sound = "Tank Swap",
			main_image = "Death Sentence",
			helper_image = "Tank Swap",
			runcode = "SendTextCommand('/p <se.2> Tank Swap! Death Sentence')",
		},
		{ 	detect_action = 9910,  --Ravensbeak (Tank Swap)
			detect_delay = 10,
			sound = "Tank Swap",
			main_image = "Ravensbeak",
			helper_image = "Tank Swap",
			runcode = "SendTextCommand('/p <se.4> RavensBeak! Tank Swap')",
		},
		{ 	detect_action = 9902,  --Generate
			detect_delay = 10,
			sound = "Generate",
			main_image = "CALL YOUR SHIT OUT",
			helper_image = "Generate",
			runcode = "SendTextCommand('/p <se.4> <se.1> <se.2> Generate CALLOUT YOUR DESTINATION')",
		},
		{ 	detect_action = 9905,  --Aetheric Profusion **Twintania Engrage**
			detect_delay = 10,
			sound = "Wipe",
			main_image = "Twin Enrage",
			helper_image = "Dead",
			runcode = "SendTextCommand('/p <se.4> YOU ARE FUCKING DONE SON...')",
		},
		{ 	detect_action = 9937,  -- SEVENTH UMBRAL ERA Bahamut Prime Entrance (TANK LB)
			detect_delay = 10,
			sound = "Tank L B",
			main_image = "Bahamut Prime Phase",
			helper_image = "Tank LB and prep for calamitous blaze",
			runcode = "SendTextCommand('/p <se.4> <se.5> <se.1> TANK LB')",
		},
		{ 	detect_action = 9920,  -- Meteor Stream
			detect_delay = 10,
			sound = "Meteor Stream",
			main_image = "Spread",
			helper_image = "Spread out",
			runcode = "SendTextCommand('/p <se.5> Meteor Stream')",
		},
		{ 	detect_action = 9930,  -- Wings Of Salvation
			detect_delay = 10,
			sound = "Clear Doom",
			main_image = "Doom",
			helper_image = "Check your Doom debuff",
			runcode = "SendTextCommand('/p <se.5> <se.2> <se.4> Check your Doom Debuff <= 6 seconds is always first')",
		},
		{ 	detect_action = 9922,  -- Bahamut's Favor
			detect_delay = 10,
			sound = "Two thunders, doom and quote",
			main_image = "Thunders, Doom, Quote",
			helper_image = "Check your Doom debuff",
			runcode = "SendTextCommand('/p <se.5> <se.2> Prepare for 2x Thunderstrucks, RP Quote, 2x Dooms, IN OUT IN IN",
		},
		{ 	detect_action = 9911, -- Heavensfall
			detect_delay = 10,
			sound = "Heavens Fall",
			main_image = "Heavensfall",
			helper_image = "Check your Doom debuff",
			runcode = "SendTextCommand('/p <se.2> Heavensfall INCOMING!!",
		},
		{ 	detect_action = 9965,  -- Morn Afah
			detect_delay = 10,
			sound = "Morn Ah Fah",
			main_image = "Heavensfall",
			helper_image = "Check your Doom debuff",
			runcode = "SendTextCommand('/p <se.2> Morn Afah INCOMING!! MITIGATE!!!!",
		},
		{ 	detect_action = 9906,  -- Twisting Dive (Twintania Dive)
			detect_delay = 10,
			sound = "Twintania Dive",
			main_image = "Twintania Dive",
			helper_image = "Watch Out!",
			runcode = "SendTextCommand('/p <se.1> Twintania's Divebomb INCOMING!!!",
		},
		{ 	detect_action = 9923,  -- Lunar Dive (Nael Dive)
			detect_delay = 10,
			sound = "Nael Dive",
			main_image = "Nael Dive",
			helper_image = "Just don't get hit by it lol christ",
			runcode = "SendTextCommand('/p <se.2> Nael's Divebomb INCOMING!!!')",
		},
		{ 	detect_action = 9953,  -- Megaflare Dive (Bahamut Dive)
			detect_delay = 10,
			sound = "Bahamut Dive",
			main_image = "Bahamut Dive",
			helper_image = "BEWARE!!",
			runcode = "SendTextCommand('/p <se.3> Bahamut Divebomb INCOMING!!!')",
		},
		{ 	detect_action = 1247,  -- Basic Divebomb **not even sure this is even in this fight as far as actionid goes, would need personal or other feedback.
			detect_delay = 10,
			sound = "Divebomb",
			main_image = "Divebomb",
			helper_image = "Be out of the way",
			runcode = "SendTextCommand('/p <se.2>Divebomb INCOMING!!!')",
		},
		{ 	detect_action = 9954,  -- Quickmarch Trio
			detect_delay = 10,
			sound = "Quickmarch Trio",
			main_image = "Quickmarch Trio",
			helper_image = "Bahamut + Nael + Twin line divebomb set. Twister + Dodge Dives Megaflare (3 DPS) + Earth Shaker (2 healers 1 DPS) + Tempest Wing",
			runcode = "SendTextCommand('/p <se.2> <se.3> Quickmarch Trio')",
		},
		{ 	detect_action = 9948,  -- Megaflare
			detect_delay = 10,
			sound = "Megaflare",
			main_image = "Megaflare",
			helper_image = "STACK!!!",
			runcode = "SendTextCommand('/p <se.3> Megaflare Stacks')",
		},
		{ 	detect_action = 9949,  -- Megaflare
			detect_delay = 10,
			sound = "Megaflare",
			main_image = "Megaflare",
			helper_image = "STACK!!!",
			runcode = "SendTextCommand('/p <se.2> Megaflare Stacks')",
		},
		{ 	detect_action = 9941,  -- Flatten **Tankbuster
			detect_delay = 10,
			sound = "Tankbuster",
			main_image = "Flatten",
			helper_image = "Mitigate and Tank CDs",
			runcode = "SendTextCommand('/p <se.1> Flatten Tankbuster')",
		},
		--	 Function detection UNDER CONSTRUCTION**
		--	 Doom detection and markers
		{ 	
			detect_function = "HasBuffs(Player.id,210,0,14)",
			detect_delay = 16,
			sound = "First doom up",  -- not sure if able to to that, yet again need feedback.
			helper_image = "1st Doom",
			runcode = "Player:SetTarget()  SendTextCommand(Sense.currentProfile.marker_three)",
		},
		{ 	detect_function = "HasBuffs(Player.id,210,0,8)",
			detect_delay = 16,
			sound = "Second Doom Up",
			helper_image = "2nd Doom",
			runcode = "Player:SetTarget()  SendTextCommand(Sense.currentProfile.marker_two)",
		},
		{ 	detect_function = "HasBuffs(Player.id,210,0,4)",
			detect_delay = 16,
			sound = "Third Doom Up",
			helper_image = "3rd Doom",
			runcode = "Player:SetTarget()  SendTextCommand(Sense.currentProfile.marker_one)",
		},
		--[[
		{ 	detect_function = "return Sense.currentProfile.grandoctetGRNG()",
			detect_delay = 3,
			sound = "Good Pattern!",
			helper_image = "Good RNG Pattern",
		},
		]]
		-- Nael Chat Mech
		{   detect_chat = "O red moon, scorch mine enemies!",
			sound = "In  Stack",
			main_image = "IN / STACK",
			runcode = "SendTextCommand('/party <se.1> IN, STACK')",
		},
		{	detect_chat = "O red moon, shine the path to conquest!",
			sound = "In then out", main_image = "IN => OUT",
			helper_image = "Lunar Dynamo (IN) Iron Chariot (OUT)",
			runcode = "SendTextCommand('/party <se.2> IN, OUT')",
		},
		{	detect_chat = "Blazing path, lead me to conquest!",
			sound = "Stack then out", main_image = "STACK => OUT",
			helper_image = "Thermionic Beam (STACK) Iron Chariot (OUT)", 
			runcode = "SendTextCommand('/party <se.3> STACK Thermionic, OUT Chariot')",
		},
		{	detect_chat = "O refulgent moon, shine down your light!",
			sound ="Stack then in",
			main_image = "STACK => IN",
			helper_image = "Thermionic Beam (STACK) Lunar Dynamo (IN)",
			runcode = "SendTextCommand('/party <se.4> STACK Thermionic, IN Lunar')",
		},
		{	detect_chat = "From on high I descend, mine enemies to smite!", 
			sound = "Protean then out", 
			main_image = "Clock => OUT",
			helper_image = "Raven's Dive (CLOCK) Iron Chariot (OUT)", 
			runcode = "SendTextCommand('/party <se.5> Protean (CLOCK), Chariot (OUT)')",
		},
		{	detect_chat = "From on high I descend, in blessed light to bask!", 
			sound = "Protean then in", main_image = "Clock Spots => IN",
			helper_image = "Raven's Dive (CLOCK) Lunar Dynamo (IN)", 
			runcode = "SendTextCommand('/party <se.5> Protean (CLOCK), Lunar Dynamo (IN)')", 
		},
		{	detect_chat = "Fleeting light, score the earth with a fiery kiss!", 
			sound = "Divebombs Splash then stack", main_image = "SPLASH => STACK",
			helper_image = "Dalamund Dive (SPLASH) Thermionic Beam (STACK)", 
			runcode = "SendTextCommand('/party <se.3> DIVEBOMBS!! <se.7> DALAMUND SPLASH BEWARE!!, STACK Thermionic')", 
		},
		{	detect_chat = "Fleeting light, outshine the stars for the moon!", 
			sound = "Divebombs Spread then Splash", main_image = "SPREAD => STACK",
			helper_image = "Meteor Stream (SPREAD) Dalamund Dive (Splash)", 
			runcode = "SendTextCommand('/party <se.3> DIVEBOMBS!! <se.8> SPREAD Meteor, BEWARE OF TANK SPLASH FROM DALAMUND!!!')",
		},
		{ 	detect_chat = "orotest",
			detect_delay = 10,
			sound = "Unending Coils Test Confirmed Sound is Operational",
			main_image = "Images Working",
			helper_image = "Goodluck",
		},
	},
}


--[[
-- REFERENCE: http://clees.me/guides/ucob/

 PHASE ROTATIONS:
	-- *TWINTANIA PHASE* -- 
	**Twintania repeats the following until she is pushed to 74%
	74%
	- Plummet
	- Twister + Fireball
	- Death Sentence
	
	**Twintania repeats the following until she is pushed to 44%
	44%
	- Liquid Hell (Distance)
	- Generate
	- Liquid Hell (Distance)
	- Death Sentence
	- Generate
	- Twister
	- Plummet
 
	**Twintania repeats the following until she is killed.
	DEATH or ENRAGE
	- Liquid Hell (Distance)
	- Generate x2
	- Liquid Hell (Target)
	- Fireball
	- Death Sentence
	- Double Generate
	- Twister
	- Plummet
	
	3:00 Minute mark Enrage "Twintania Wipe"
	-- *NAEL DEUS DARNUS PHASE* --
	- Dalamud Dive
	- Bahamut’s Claw
	- Bahamut’s Favor
	- Dragons Spawn

	- 2 Thunders + Lunar Dynamo
	- Fire Tether 
Nael RP 11
if nael says “O red moon, scorch mine enemies!“>> Lunar Dynamo > Thermionic Beam
if nael says “O red moon, shine the path to conquest!“>>Lunar Dynamo > Iron Chariot
	- 2 Doom + Light Puddle dance
	- Bahamut’s Claw
	- Fire Tether 
	- 2 Thunders
Nael RP 2
if nael says “Blazing path, lead me to conquest!” >> Thermionic Beam + Iron Chariot
if nael says “O refulgent moon, shine down your light!” >> Thermionic Beam + Lunar Dynamo 
	- 3 Doom + Light Puddle dance
	- Fire Tether 
	- Bahamut’s Claw
Nael RP 3
if nael says “From on high I descend, mine enemies to smite!“>> Raven’s Dive + Iron Chariot
if nael says “From on high I descend, in blessed light to bask!“>> Raven’s Dive + Lunar Dynamo
	- 2 Thunders
	- Fire Tether 
	- 3 Doom + Light Puddle dance
	- Ravensbeak
	- Divebomb marker 1
	- Hypernova
	- Divebomb marker 2
	- Hypernova
	- Divebomb marker 3
Nael RP 4
if nael says “Fleeting light, score the earth with a fiery kiss!“>> Dalamud Dive + Thermionic Beam
if nael says “Fleeting light, outshine the stars for the moon!“>> Meteor Stream + Dalamud Dive
	- Dive 1
	- Nael RP 4 skill 1
	- Dive 2
Nael RP 4 skill 2
	- Dive 3
Dragons Withdraw

Bahamut’s Claw
Nael RP 5 > Nael RP 6
	**Can be any of the previously said quotes.**
	- Ravensbeak
	- Bahamut’s Claw
Megaflare (Enrage)
	
	
	Plan :
	contentid = {
	Twintania - 1482
	Nael_Deus_Darnus - 2612
	Bahamut_Prime - 3210 
	Tail_of_Darkness - 6958
	Fang_of_Light - 6957
	Firehorn - 2630
	Iceclaw - 2630
	
	},
	
	buffid = {
	- 627 - Nuerolink
	- 1435 - Peircing Resistance Down II
	- 1434 - Mana Hypersensitivity
	- 1436 - Pheonix's Blessing
	- 910,210 - Doom
	- 465 - Icebitten
	- 464 - Firescorched
	- 466 - Thunderstruck
	-  - 
	},
	
	instant = {
	
	- 9900,9925 - Fireball
	- 9896 - Plummet
	- 9899 - Twister
	- 9901 - Liquid Hell
	- 9920 - Meteor Stream
	- 9921 - Dalamund Dive
	- 9918 - Raven Dive
	- 9903 - Hatch
	- 9904 - Deep Hatch
	- 9912 - Heavensfall
	- 9909 - Bahamut’s Claw
	- 9915 - Iron Chariot
	- 9916 - Lunar Dynamo
	- 9917 - Thermionic Beam
	- 9919 - Hypernova
	- 9963 - Akh Morn
	- 9966 - Morn Afah
	- 9961 - Teraflare
	- 9960 - Bahamut’s Favor
	- 9970 - Flame's of Rebirth
	- 10037,10039,9969 - Exaflare
	- 9952 - Megaflare Strike
	- 9948,9950 - Megaflare
	- 9945,9946 - Earthshaker
	- 9938 - Calamitous Flame
	- 9939 - Calamitous Blaze
	- 9937 - Seventh Umbral Era
	- 9929 - Deathstorm
	- 9928,9927 - Chain Lighning
	- 9926 - Iceball
	- 10041 - Exaflare Strike
	- 9940 - Flare Breath
	},
	
	channeling = {
	
	- 9897 - Death Sentence 
		CAST: 4s 
		RECAST: 40s
	
	- 9898 - Twister
		CAST: 2s
		RECAST: 20s
	
	- 9902 - Generate
		CAST: 3s
		RECAST: 30s
		
	- 9905 - Aetheric Profusion **TWINTANIA ENRAGE**
		CAST: 5s
		RECAST: 50s
		
	- 9911 - Heavensfall
		CAST: 3s
		RECAST: 30s
		
	- 9922 - Bahamut's Favor
		CAST: 3s
		RECAST: 30s
	--TRIO id's--
	- 9959 - Grand Octet
		CAST: 4s
		RECAST: 40s
	
	- 9958 - Tenstrike
		CAST: 4s
		RECAST: 40s
	
	- 9957 - Heavensfall Trio
		CAST: 4s
		RECAST: 40s
		
	- 9956 - Fellruin Trio
		CAST: 4s
		RECAST: 40s
		
	- 9955 - Blackfire Trio
		CAST: 4s
		RECAST: 40s
		
	- 9954 - Quickmarch Trio
		CAST: 4s
		RECAST: 40s
	--end of trios--
		
	- 9910 - Ravensbeak *Tankbuster, inflicts Piercing Resistance Up II.*
		CAST: 4s
		RECAST: 40s
		
	- 9913 - Thermionic Burst
		CAST: 3s
		RECAST: 30s
	
	- 9914 - Megaflare *Nael Enrage* 
		CAST: 5s
		RECAST: 50s
	
	//Bahamut Prime Megaflares
	- 9947,9949 - Megaflare
		CAST: 3s
		RECAST: 30s
	
	- 9951 - Megaflare
		CAST: 8s
		RECAST: 80s
	//END
	
	
	},
	
	-- NAEL DEUS DARNUS CHAT PATTERNS
Nael’s Quotes:

As many of these moves don’t have AoE markers, you’ll have to use Nael’s unique tell to predict what attacks she will use. 
These tells are present in the form of quotes. Nael’s quotes will appear over her head and in the chatbox, and she will perform a different series of moves depending on her quote. 
Possible quotes are shown below:

- O red moon, scorch my enemies! – Lunar Dynamo > Thermionic Beam
- O red moon, shine the path to conquest! – Lunar Dynamo > Iron Chariot
- Blazing path, lead me to conquest! – Thermionic Beam > Iron Chariot
- O refulgent moon, shine down your light! – Thermionic Beam > Lunar Dynamo
- From on high I descend, mine enemies to smite! – Raven’s Dive > Iron Chariot
- From on high I descend, in blessed light to bask! – Raven’s Dive > Lunar Dynamo
- Fleeting light, score the earth with a fiery kiss! – Dalamud Dive > Thermionic Beam
- Fleeting light, outshine the stars for the moon! – Meteor Stream > Dalamud Dive

These quotes are not entirely random, and are usually present in sets of two throughout the phase (excluding the end). 
I highly recommend either using ACT triggers or have a person in the raid always call out what each quote means.

--EXPLORATIVE USE POSSIBILITY
	Misc.
		notAttackable                   = "Invalid Target",
		targetName                      = "Target Name",
		TargetCastingOnMe           	= "Casting On",
		TargetCastingTime           	= "Casting Time >",

	POSITION Specific: 
		xPos                            = "X Position",
		yPos                            = "Y Position",

	Skillmanager Specific:
		skillbook                 	 	= "SkillBook",
		skillManager                    = "SkillManager",
		skillEditor                  	= "SkillEditor",
		skillEditor_craft              	= "SkillEditor_Crafting",
        skillEditor_gather            	= "SkillEditor_Gathering",
		saveProfile                 	= "Save Profile",
		newProfileName                  = "New Profile",
		skillProfile					= "Skill Profile",
        newProfile                      = "Create New Profile",
		clearProfile					= "Clear Profile",
		skillbookrefresh                = "Refresh Skills",
		targetType                      = "Target",
		stepmin							= "Step >=",
		stepmax							= "Step <",
		durabmin						= "Durability >=",
		durabmax						= "Durability <",
		progrmin						= "Progress >=",
		progrmax						= "Progress <",
		qualitymin						= "Quality >=",
		qualitymax						= "Quality <",
		condition						= "Condition =",
		cpmin							= "CP >=",
		cpmax							= "CP <",
        gpmin							= "GP >=",
		gpmax							= "GP <",
		iqstack							= "InnerQuiet Stack >=",		
		notused							= "NotUsed",
		excellent						= "Excellent",
		good							= "Good",
		normal							= "Normal",
		poor							= "Poor",
        nodeHas						    = "Has Item: ",
		gatherAttemptsMin				= "Attempts Remaining >",
		gatherAttemptsMax				= "Attempts Remaining <=",
        profile                         = "Profile",
		sMmode							= "Attack Mode",
		sMtargetmode					= "Target Mode",
		refreshProfiles                 = "Refresh Profile List",			
        deleteProfile                   = "Delete Current Profile",
        autoetectSkills                 = "Autodetect Skills",
		refreshSkillList                = "Clear & Refresh SkillList",
        skillEditor                     = "Skill Editor",
        enabled                         = "Enabled",
		appliesBuff                     = "Applies (De-)Buff",
        priority                        = "Priority",
        los                  		    = "Needs LineOfSight",
		instacast            		    = "Instant Skill",
		channeled            		    = "Channel Skill",		
		cooldown                        = "Cooldown",
        minRange                        = "MinRange",
        maxRange                        = "MaxRange",
        isGroundTargeted                = "Is GroundTargeted",        
        useOutOfCombat                  = "Use out of Combat",
        playerMoving                    = "Player Moving",
        playerHPGT                      = "Player HP% >",
        playerHPLT                      = "Player HP% <",
        playerPowerGT                   = "Player MP >",
        playerPowerLT                   = "Player MP <",
        playerHas                       = "Player has Buff: like 13,4152,521",
        orPlayerHas                     = "or Player has ",
        playerHasNot                    = "Player has NOT Buff: like 13,4152,521",
		orPlayerCond					= "Player has #Conditions >",
        orPlayerHasNot                  = "or Player has NOT ",
        targetMoving                    = "Target Moving",
        targetHPGT                      = "Target HP% >",
        targetHPLT                      = "Target HP% <",
        targetDistanceGT                = "Target Distance >",
        targetDistanceLT                = "Target Distance <",
        enemiesNearCount                = "Enemies Near Target(Count) >=",
        enemiesNearRange                = "Enemies Near Target(MaxRange) =",
        alliesNearCount                 = "Allies Near Target(Count) >=",
        alliesNearRange                 = "Allies Near Target(MaxRange) =",
        targetHas                       = "Target has Buff : like 13,4152,521",
        orTargetHas                     = "or Target has ",
        targetHasNot                    = "Target has NOT Buff : like 13,4152,521",
        orTargetHasNot                  = "or Target has NOT ",
		prevSkillID						= "Previous Skill ID",
		AdvancedSettings				= "Advanced Settings",
		Fightstyle						= "Fightstyle",
		
		
		--new SKM stuff
		alias							= "Alias",
		cdIsReady						= "CD Is Ready",
		cdNotReady						= "CD Not Ready",
		cdTimeLT						= "CD Time <=",
		cdTimeGT						= "CD Time >=",
		nextSkillPrio					= "Next Skill Prio",
		skmTYPE							= "Action Type",
		skmSTYPE					 	= "Skill Type",
		skmCombat						= "Combat Status",
		skmCHARGE						= "Charge Skill",
		skmLevelMin						= "Level >=",
		skmLevelMax						= "Level <=",
		checkSkill						= "Skill ID",
		isReady 						= "Is Ready",
		isNotReady						= "Is Not Ready",
		cooldownRemainingLTE			= "Cooldown Remaining <=",
		cooldownRemainingGTE			= "Cooldown Remaining >=",
		skmNSkillID						= "Next Skill ID",
		skmCBreak						= "Combo Breaker",
		skmTRG							= "Skill Target",
		skmTRGTYPE						= "Target Role",
		skmNPC							= "Include NPC",
		skmPTRG							= "Player Target",
		skmPGTRG						= "Ground Target",
		skmPPos							= "Position",
		skmTHPCL						= "Target HP >",
		skmTHPCB						= "Target HP <",
		skmTCONTIDS						= "Content ID(s)",
		skmTNCONTIDS					= "Not Content ID(s)",
		skmTCASTID						= "Cast ID(s)",
		skmTCASTTM						= "Cast @ Me",
		skmTCASTTIME					= "Cast Time >",
		skmPTPL							= "Player TP >",
		skmPTPB							= "Player TP <",
		skmPMPPL                		= "Player MP% >",
        skmPMPPB                  		= "Player MP% <",
		skmPAGL							= "Player Aggro % >",
        skmPAGB							= "Player Aggro % <",
		skmMPLock						= "Causes MP Lockout",
		skmMPLocked						= "Lockout Affected",
		skmMPLockPer					= "MP Lockout %",
		skmPTCount						= "Member Count >=",
		skmPTHPL						= "Party HP% >",
		skmPTHPB						= "Party HP% <",
		skmPTMPL						= "Party MP% >",
		skmPTMPB						= "Party MP% <",
		skmPTTPL						= "Party TP >",
		skmPTTPB						= "Party TP <",
		skmHPRIOHP						= "Priority HP % <",
		skmHPRIO1						= "Heal Priority 1",
		skmHPRIO2						= "Heal Priority 2",
		skmHPRIO3						= "Heal Priority 3",
		skmHPRIO4						= "Heal Priority 4",
		skmTECount						= "Enemies >=",
		skmTECount2						= "Enemies <=",
		skmTERange						= "Enemy Range",
		skmTELevel						= "Level Difference",
		skmTACount						= "Allies >=",
		skmTARange						= "Ally Range",
		skmTBuffOwner					= "Buff Owner",
		skmHasBuffs						= "Has Buffs (1+2,3)",
		skmMissBuffs					= "Missing Buffs (1+2,3)",
		skmOrBuffDura					= "Or Buff Dura <=",
		skmAndBuffDura					= "And Buff Dura >",
		skmUnspoiled					= "Unspoiled Node",		
		up								= "UP",
		down							= "DOWN",
		delete							= "DELETE",
		copy							= "COPY",
		paste							= "PASTE",
		
		
		skillDetails					= "Skill Details",
		skillChecks						= "Other Skill Checks",
		basicDetails					= "Basic Details",
		playerHPMPTP					= "Player HP/MP/TP",
		party							= "Party",
		target							= "Target",
		casting							= "Casting",
		healPriority					= "Heal Priority",
		aoe								= "AOE",
		playerBuffs						= "Player Buffs",
		targetBuffs						= "Target Buffs",
	
	chat_ids = {
	
	
	
	},
]]

local MarkerTable = {
	attack = {
		[1] = "empty",
		[2] = "empty",
		[3] = "empty",
		[4] = "empty",
		[5] = "empty"
	},
	bind = {
		[1] = "empty",
		[2] = "empty",
		[3] = "empty"
	},
	ignore = {
		[1] = "empty",
		[2] = "empty"
	},
	circle = "empty",
	cross = "empty",
	square = "empty",
	triangle = "empty"
}
local MarkerDelayLast = 0
local MarkerLastMark = 0
local EntitiesNeedMarked = {}
local EntitiesNeedRemoved = {}
local EntitiesHistory = {}
local EntitiesHistory2 = {}
local EntitiesMarked = {}
local PreviousTarget = 0
local lastcheck = 0
local lastpulse = 0
local UltimateDoomTable = {}
local function MarkerLogic(tbl)
	if TimeSince(lastpulse) > (PulseDelay * 1000) then
		lastpulse = Now()
		-- Convert Table into friendly variables --
			local MarkerType = tbl.MarkerType or "any"
			local Filters = tbl.Filters
			local AddPlayer = tbl.AddPlayer or false
			local Buffs = table.valid(tbl.Buffs) or false
			local IDs
			local Duration
			local OwnerID
			local Stacks
			local Missing
			if table.valid(tbl.Buffs) then
				IDs = tbl.Buffs.IDs
				Duration = tbl.Buffs.Duration or 0
				OwnerID = tbl.Buffs.OwnerID or 0
				Stacks = tbl.Buffs.Stacks or 0
				Missing = tbl.Buffs.Missing or nil
			end
			local CustomRules = table.valid(CustomRules) or false
			local UltimateDoom
			if table.valid(CustomRules) then
				UltimateDoom = tbl.CustomRules.UltimateDoom or false
			end
		-- End Convert Variables --

		local el = EntityList(Filters..[[,maxdistance=55]]) -- Max distance to have player's target remain on an entity is 55 yalms
		if AddPlayer then
			table.insert(el, Player)
		end

		if table.valid(el) then
			-- Current Filter has valid entities -- 
			for id,entity in pairs(el) do
				-- First lets check to see if we've already done this before --
				if EntitiesNeedMarked[entity.id] == nil and UltimateDoomTable[entity.id] == nil then
					-- First lets check if we have Buffs to check for --
					local pass = false
					if Buffs then
						-- Buffs Table is valid --
						if Missing then
							if MissingBuffs(entity,IDs,Duration,OwnerID,Stacks) then
								pass = true
							end
						else
							if HasBuffs(entity,IDs,Duration,OwnerID,Stacks) then
								pass = true
							end
						end
					else
						-- We don't need to check for Buffs, so we are allowed to continue --
						pass = true
					end

					if pass then
						if EntitiesHistory[entity.id] == nil and EntitiesHistory2[entity.id] == nil then
							if CustomRules then
								-- We have custom rules, so we need to divert the normal process to get the correct results --
								if UltimateDoom and IDs then
									if UltimateDoomTable[entity.id] == nil then 
										for k,v in pairs(entity.buffs) do
											local t = {}
											for w in tostring(IDs):gmatch("%P+") do
												t[tonumber(w)] = true
											end
											if t[v.id] then
												-- We are ending the logic here because we need ALL entities in our custom table first --
												UltimateDoomTable[entity.id] = v.duration
											end
										end
									end
								end
							else
								-- We have passed our above checks, so we can continue with calculating --
								local NeedMarker = true
								if MarkerTable[MarkerType] then
									-- Normal Marker Logic --
									if type(MarkerTable[MarkerType]) == "table" then
										for i,m in ipairs(MarkerTable[MarkerType]) do
											if NeedMarker then
												if m == "empty" then
													MarkerTable[MarkerType][i] = entity.id
													EntitiesNeedMarked[entity.id] = MarkerType..tostring(i)
													NeedMarker = false
												end
											end
										end
									else
										if MarkerTable[MarkerType] == "empty" then
											MarkerTable[MarkerType] = entity.id
											EntitiesNeedMarked[entity.id] = MarkerType
											NeedMarker = false
										end
									end
								elseif MarkerType == "any" then
									-- Use any open marker --
									for key,value in pairs(MarkerTable) do
										if NeedMarker then
											if value == "empty" then
												MarkerTable[key] = entity.id
												EntitiesNeedMarked[entity.id] = key
												NeedMarker = false
											end
										end
									end
									if NeedMarker then
										for key,value in pairs(MarkerTable) do
											if NeedMarker then
												if type(value) == "table" then
													for i,m in pairs(MarkerTable[value]) do
														if NeedMarker then
															if m == "empty" then
																MarkerTable[key][i] = entity.id
																EntitiesNeedMarked[entity.id] = key..tostring(i)
																NeedMarker = false
															end
														end
													end
												end
											end
										end
									end
								end
							end
							if Buffs then
								-- To check if Buffs have worn off, we are adding this to our EntitiesHistory table for calculating later --
								EntitiesHistory[entity.id] = tbl
							else
								EntitiesHistory2[entity.id] = tbl
							end
						end
					else
						-- Entity does not pass our buff checks, check if it was added to EntitiesHistory --
						if Buffs and EntitiesHistory[entity.id] then
							if table.deepcompare(tbl,EntitiesHistory[entity.id]) then
								-- Entity exists in our history, but no longer needs a marker --
								EntitiesNeedRemoved[entity.id] = true
								EntitiesMarked[entity.id] = nil
								EntitiesHistory[entity.id] = nil
								if type(MarkerTable[MarkerType]) == "table" then
									for key,value in pairs(MarkerTable[MarkerType]) do
										if value == entity.id then
											MarkerTable[MarkerType][key] = "empty"
										end
									end
								elseif MarkerTable[MarkerType] == entity.id then
									MarkerTable[MarkerType] = "empty"
								end
							end
						end
					end
				end
			end
		end

		-- We've done many things above:
		--	- Checked if entities met our Filters that were not already added to a current Table
		--		- Checked if it was a CustomRule and added it to:
		--			- UltimateDoomTable
		--		- Added entity to MarkerTable and EntitiesNeedMarked Table if not a Custom Rule

		-- Before we calculate normal tables, we need to pick up on any CustomRule tables so they are caught up --
		if CustomRules then
			if table.valid(UltimateDoomTable) then
				-- We need to iterate through our table sorting value from smallest to largest --
				for entityid,duration in table.pairsbyvalue(UltimateDoomTable) do
					local NeedMarker = true
					if MarkerTable[MarkerType] then
						-- Normal Marker Logic --
						if type(MarkerTable[MarkerType]) == "table" then
							for i,m in ipairs(MarkerTable[MarkerType]) do
								if NeedMarker then
									if m == "empty" then
										MarkerTable[MarkerType][i] = entityid
										EntitiesNeedMarked[entityid] = MarkerType..tostring(i)
										UltimateDoomTable[entityid] = nil
										NeedMarker = false
									end
								end
							end
						else
							if MarkerTable[MarkerType] == "empty" then
								MarkerTable[MarkerType] = entityid
								EntitiesNeedMarked[entityid] = MarkerType
								UltimateDoomTable[entityid] = nil
								NeedMarker = false
							end
						end
					elseif MarkerType == "any" then
						-- Use any open marker --
						for key,value in pairs(MarkerTable) do
							if NeedMarker then
								if value == "empty" then
									MarkerTable[key] = entityid
									EntitiesNeedMarked[entityid] = key
									UltimateDoomTable[entityid] = nil
									NeedMarker = false
								end
							end
						end
						if NeedMarker then
							for key,value in pairs(MarkerTable) do
								if NeedMarker then
									if type(value) == "table" then
										for i,m in pairs(MarkerTable[value]) do
											if NeedMarker then
												if m == "empty" then
													MarkerTable[key][i] = entityid
													EntitiesNeedMarked[entityid] = key..tostring(i)
													UltimateDoomTable[entityid] = nil
													NeedMarker = false
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end

			-- If entities have been marked for removal, it will be executed here --


		-- Now we're ready for marking --
		if table.valid(EntitiesNeedMarked) then
			for entityid,markerid in pairs(EntitiesNeedMarked) do
				if MarkerDelayLast == 0 or MarkerDelayLast == entityid then
					local PlayerTarget = Player:GetTarget()
					if PreviousTarget == 0 then
						-- Start of marking process, record your current target to return to it after you're done marking --
						local entity = EntityList:Get(entityid)
						if entity then
							-- Valid Entity --
							if PlayerTarget then
								PreviousTarget = PlayerTarget.id
							else
								PreviousTarget = Player.id
							end
						else
							-- Entity is no longer Valid --
							EntitiesNeedMarked[entityid] = nil
						end
						Player:SetTarget(entityid)
					end
					if PreviousTarget ~= 0 then -- purposely ended w/o else to continue flow')
						-- We have not finished marking everything --
						if PlayerTarget then
							if MarkerDelayLast == 0 then
								local entity = EntityList:Get(entityid)
								if entity then
									if PlayerTarget.id ~= entityid then
										Player:SetTarget(entityid)
									end
									MarkerDelayLast = entityid
								else
									EntitiesNeedMarked[entityid] = nil
								end
							elseif MarkerDelayLast == entityid and TimeSince(MarkerLastMark) > (MarkerDelay * 1000) then
								if PlayerTarget.id == entityid then
									SendTextCommand([[/marking ]]..markerid..[[ <t>]])
									if FileExists(GetLuaModsPath()..[[Sense\bin\soundengine.exe]]) then
										io.popen(GetLuaModsPath()..[[Sense\bin\soundengine.exe "Marking ]]..PlayerTarget.name..[[with ]]..markerid..[["]])
									end
									EntitiesMarked[entityid] = markerid
									EntitiesNeedMarked[entityid] = nil
									MarkerLastMark = Now()
									MarkerDelayLast = 0
								else
									local entity = EntityList:Get(entityid)
									if entity then
										if PlayerTarget.id ~= entityid then
											Player:SetTarget(entityid)
										end
										MarkerDelayLast = entityid
									else
										EntitiesNeedMarked[entityid] = nil
									end
								end
							end
						end
					end
				end
			end
		elseif table.valid(EntitiesNeedRemoved) then
			for entityid,none in pairs(EntitiesNeedRemoved) do
				if MarkerDelayLast == 0 or MarkerDelayLast == entityid then
					local PlayerTarget = Player:GetTarget()
					if PreviousTarget == 0 then
						-- Start of marking process, record your current target to return to it after you're done marking --
						local entity = EntityList:Get(entityid)
						if entity then
							-- Valid Entity --
							if PlayerTarget then
								PreviousTarget = PlayerTarget.id
							else
								PreviousTarget = Player.id
							end
						else
							-- Entity is no longer Valid --
							EntitiesNeedRemoved[entityid] = nil
						end
						Player:SetTarget(entityid)
					end
					if PreviousTarget ~= 0 then -- purposely ended w/o else to continue flow')
						-- We have not finished marking everything --
						if PlayerTarget then
							if MarkerDelayLast == 0 then
								local entity = EntityList:Get(entityid)
								if entity then
									if PlayerTarget.id ~= entityid then
										Player:SetTarget(entityid)
									end
									MarkerDelayLast = entityid
								else
									EntitiesNeedRemoved[entityid] = nil
								end
							elseif MarkerDelayLast == entityid and TimeSince(MarkerLastMark) > (MarkerDelay * 1000) then
								if PlayerTarget.id == entityid then
									SendTextCommand([[/marking clear <t>]])
									if FileExists(GetLuaModsPath()..[[Sense\bin\soundengine.exe]]) then
										io.popen(GetLuaModsPath()..[[Sense\bin\soundengine.exe "Removing Marker from ]]..PlayerTarget.name..[["]])
									end
									EntitiesNeedRemoved[entityid] = nil
									MarkerLastMark = Now()
									MarkerDelayLast = 0
								else
									local entity = EntityList:Get(entityid)
									if entity then
										if PlayerTarget.id ~= entityid then
											Player:SetTarget(entityid)
										end
										MarkerDelayLast = entityid
									else
										EntitiesNeedRemoved[entityid] = nil
									end
								end
							end
						end
					end
				end
			end
		else
			-- All Entities have been marked, time to return back to the original target if still valid --
			if PreviousTarget ~= 0 then
				local CheckTarget = EntityList:Get(PreviousTarget)
				if CheckTarget and CheckTarget.targetable then
					-- Entity still exists, just need to set target again --
					Player:SetTarget(PreviousTarget)
					PreviousTarget = 0
				else
					-- Previous Target is no longer valid, time to improvise --
					if Player.role == 4 then
						-- You're a healer, so lets set your current target to lowest HP% party member --
						local el = EntityList:Get([[myparty,targetable,alive]])
						if table.valid(el) then
							local lowesthp = 0
							local hpp = 100
							for id, party in pairs(el) do
								if party.hp.percent < hpp then
									lowesthp = party.id
									hpp = party.hp.percent
								end
							end
							if lowesthp ~= 0 then
								Player:SetTarget(lowesthp)
								PreviousTarget = 0
							end
						end
					else
						-- You're either a DPS or a tank, so setting your target to nearest entity --
						local el = EntityList([[type=2,targetable,attackable,alive,nearest]])
						if table.valid(el) then
							for id,entity in pairs(el) do
								Player:SetTarget(entity.id)
								PreviousTarget = 0
							end
						end
					end
				end
			end
		end

		-- Above we did:
		--	- We completed CustomRules, and EntitiesNeedMarked tables so they are empty
		--	- marked all entities that met the requirements
		--	- Added all marked entities to EntitiesMarked Table
		--
		-- We now have tables:
		--	- EntitiesMarked - which will be emptied as EntitiesHistory/EntitiesHistory2 get processed
		--	- EntitiesHistory - we're using this to recheck entities that were marked because of a sensitive condition, like buffs
		--	- EntitiesHistory2 - we're using this to check the rest of the entities marked
		--	- MarkerTable - was used only to handover the marker type over to EntitiesNeedMarked

		if table.valid(EntitiesHistory2) then
			local tbl = {}
			local remove = {}
			local el = EntityList("targetable,alive")
			table.insert(el, Player)
			if table.valid(el) then
				for id,entity in pairs(el) do
					if EntitiesHistory2[entity.id] then tbl[entity.id] = true end
				end
				for k,v in pairs(EntitiesHistory2) do
					if tbl[k] == nil then
						remove[k] = true
					end
				end
			else
				for k,v in pairs(EntitiesHistory2) do
					remove[k] = true
				end
			end
			if table.valid(remove) then
				for k,v in pairs(remove) do
					for i,e in pairs(MarkerTable) do
						if type(e) == "table" then
							for a,b in pairs(e) do
								if b == k then
									MarkerTable[i][a] = "empty"
								end
							end
						else
							if e == k then
								MarkerTable[i] = "empty"
							end
						end
					end
					EntitiesMarked[k] = nil
					if PreviousTarget == k then PreviousTarget = nil end
					EntitiesHistory2[k] = nil
				end
			end
		end
		if MarkerLogicDebug then
			if TimeSince(lastcheck) > 1000 then
				lastcheck = Now()
				ml_gui.showconsole = true
				d("filters: "..tostring(Filters))
				d("MarkerTable:")
				table.print(MarkerTable)
				d("EntitiesNeedMarked:")
				table.print(EntitiesNeedMarked)
				d("UltimateDoomTable:")
				table.print(UltimateDoomTable)
				d("EntitiesMarked:")
				table.print(EntitiesMarked)
				d("EntitiesHistory:")
				table.print(EntitiesHistory)
				d("EntitiesHistory2:")
				table.print(EntitiesHistory2)
				d("EntitiesNeedRemoved:")
				table.print(EntitiesNeedRemoved)
				d("PreviousTarget: "..tostring(PreviousTarget))
				if Player:GetTarget() then
					d("Player:GetTarget().id: "..tostring(Player:GetTarget().id))
				end
				d("MarkerDelayLast: "..tostring(MarkerDelayLast))
			end
		end
	end
end

--[[
Sign Types:
 - attack
 - bind
 - ignore
 - circle
 - cross
 - square
 - triangle
 ]]

function profile.OnUpdate()
	if Player.localmapid == 733 then
		-- The Unending Coil of Bahamut (Ultimate) --
		local MarkerTable = {
			MarkerType = "attack", -- attack,bind,ignore,circle,cross,square,triangle
			Filters = "myparty,alive", -- example: "type=2,targetable,attackable,alive"
			AddPlayer = true, -- use only if you need to crosscheck yourself with other entities
			Buffs = {
				IDs = "910,210", -- example: "910,210". [,] = or / [+] = and
				Duration = nil, -- example: 5 means duration is > 5 seconds
				OwnerID = nil, -- OwnerID, a number not a table
				Stacks = nil, -- buff stacks, doesn't happen that much
				Missing = nil -- true == MissingBuffs, false == HasBuffs
			},
			CustomRules = {
				UltimateDoom = true -- Marks players in order of duration from lowest duration to highest
			}
		}
		MarkerLogic(MarkerTable) -- Doom-

		local MarkerTable = { MarkerType = "bind", Filters = "myparty,alive", AddPlayer = true, Buffs = { IDs = "466" } }
		MarkerLogic(MarkerTable) -- Thunderstruck
	end
	-- MarkerLogic({ MarkerType = "attack", Filters = "myparty,alive", AddPlayer = true, Buffs = { IDs = "48" } }) -- Food Test
	-- MarkerLogic({ MarkerType = "attack", Filters = "type=2,targetable,attackable,alive,contentid=5777" }) -- Entity Test
	-- MarkerLogic({MarkerType = "attack", Filters = "type=2,targetable,attackable,alive,incombat", Buffs = { IDs = "1200,1201" }, CustomRules = { UltimateDoom = true }}) -- Caustic Bite / Stormbite test
end

RegisterEventHandler("Gameloop.Update", profile.OnUpdate)

return profile
