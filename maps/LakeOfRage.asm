	object_const_def
;	const LAKEOFRAGE_WESLEY
	const LAKEOFRAGE_MAGIKARP
	const LAKEOFRAGE_CLAIR

LakeOfRage_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LakeOfRageFlypointCallback
;	callback MAPCALLBACK_OBJECTS, LakeOfRageWesleyCallback

LakeOfRageFlypointCallback:
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	endcallback

;LakeOfRageWesleyCallback:
;	readvar VAR_WEEKDAY
;	ifequal WEDNESDAY, .WesleyAppears
;	disappear LAKEOFRAGE_WESLEY
;	endcallback
;
;.WesleyAppears:
;	appear LAKEOFRAGE_WESLEY
;	endcallback

;WesleyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
;	iftrue WesleyWednesdayScript
;	readvar VAR_WEEKDAY
;	ifnotequal WEDNESDAY, WesleyNotWednesdayScript
;	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
;	iftrue .MetWesley
;	writetext MeetWesleyText
;	promptbutton
;	setevent EVENT_MET_WESLEY_OF_WEDNESDAY
;.MetWesley:
;	writetext WesleyGivesGiftText
;	promptbutton
;	verbosegiveitem BLACKBELT_I
;	iffalse WesleyDoneScript
;	setevent EVENT_GOT_BLACKBELT_FROM_WESLEY
;	writetext WesleyGaveGiftText
;	waitbutton
;	closetext
;	end

;WesleyWednesdayScript:
;	writetext WesleyWednesdayText
;	waitbutton
;WesleyDoneScript:
;	closetext
;	end

;WesleyNotWednesdayScript:
;	writetext WesleyNotWednesdayText
;	waitbutton
;	closetext
;	end

;MeetWesleyText:
;	text "WESLEY: Well, how"
;	line "do you do?"
;
;	para "Seeing as how it's"
;	line "Wednesday today,"
;	cont "I'm WESLEY of"
;	roll "Wednesday."
;	done

;WesleyGivesGiftText:
;	text "Pleased to meet"
;	line "you. Please take a"
;	cont "souvenir."
;	done

;WesleyGaveGiftText:
;	text "WESLEY: BLACKBELT"
;	line "beefs up the power"
;	cont "of fighting moves."
;	done

;WesleyWednesdayText:
;	text "WESLEY: Since you"
;	line "found me, you must"
;	cont "have met my broth-"
;	roll "ers and sisters."
;
;	para "Or did you just"
;	line "get lucky?"
;	done

;WesleyNotWednesdayText:
;	text "WESLEY: Today's"
;	line "not Wednesday."
;	cont "That's too bad."
;	done

; magikarp
GoldMagikarp:
	faceplayer
	opentext
	writetext LakeOfRageMagikarpCryText
	pause 15
	cry MAGIKARP
	closetext
	loadwildmon MAGIKARP, 20
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	ifequal LOSE, .NotBeaten ;why is this here?
	disappear LAKEOFRAGE_MAGIKARP
.NotBeaten:                 ;why is this here?
	reloadmapafterbattle
;	special CheckBattleCaughtResult ; check catch result to respawn if you kill it?
;	iffalse .NoCatch
;	setflag ENGINE_PLAYER_CAUGHT_MAGIKARP ;ENGINE_PLAYER_CAUGHT_ZAPDOS
;.NoCatch
;	checkevent EVENT_DEFEATED_GOLD_MAGIKARP
;	iftrue .SecondChance
	opentext
	giveitem GOLD_SCALE
	waitsfx
	writetext LakeOfRageGotGoldScaleText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
;	appear LAKEOFRAGE_CLAIR
	setevent EVENT_DEFEATED_GOLD_MAGIKARP
;.SecondChance
	end

LakeOfRageMagikarpCryText:
	ntag "MAGIKARP:"
	text "Karp?"
	done

LakeOfRageGotGoldScaleText:
	text "<PLAYER> obtained a"
	line "GOLD SCALE."
	done

; clair
LakeOfRageClairScript:
	checkevent EVENT_TALKED_TO_CLAIR_AT_LAKE_OF_RAGE
	iftrue .NeedMoreBadges
;	faceplayer
	opentext
	writetext LakeOfRageClairFirstText
	promptbutton
	faceplayer
	writetext LakeOfRageClairIntroText
	waitbutton
	closetext
	pause 5
	turnobject LAKEOFRAGE_CLAIR, UP
	opentext
	writetext LakeOfRageClairMagikarpText
	waitbutton
	closetext
	pause 10
	setevent EVENT_TALKED_TO_CLAIR_AT_LAKE_OF_RAGE
.NeedMoreBadges
	faceplayer
	opentext
	writetext LakeOfRageClairChallengeText
	promptbutton
	readvar VAR_BADGES
	ifequal NUM_BADGES - 1, .EnoughBadges
	writetext LakeOfRageClairStayLongerText
	waitbutton
	closetext
	turnobject LAKEOFRAGE_CLAIR, UP
	applymovement PLAYER, LakeOfRagePlayerStepsDownMovement
	opentext
	writetext LakeOfRageGetMoreBadgesText
	waitbutton
	closetext
	end

.EnoughBadges
	writetext LakeOfRageClairReturnsToGymText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal UP, .StraightDown
	applymovement LAKEOFRAGE_CLAIR, LakeOfRageClairStepsLeftMovement
.StraightDown
	applymovement LAKEOFRAGE_CLAIR, LakeOfRageClairLeaveMovement
	disappear LAKEOFRAGE_CLAIR
	setevent EVENT_CLAIR_RETURNED_TO_GYM
	end

LakeOfRageClairFirstText:
	text "They say LAKE OF"
	line "RAGE was created"
	cont "by a rampaging"
	roll "GYARADOS."

	para "But these days it"
	line "is just full of"
	cont "weak MAGIKARP."
	done

LakeOfRageClairIntroText:
	text "You're <PLAYER>?"

	para "You look like a"
	line "#MON trainer."

	para "Nice to meet you.@"

	text_promptbutton
	ntag "CLAIR:"
	text "I'm CLAIR, the"
	line "GYM LEADER from"
	cont "BLACKTHORN CITY."
	done

LakeOfRageClairMagikarpText:
	ntag "CLAIR:"
	text "MAGIKARP…"

	para "They are a weak"
	line "#MON, and yet…"

	para "If you have the"
	line "discipline and the"
	cont "patience to train"
	roll "them anyway…"

	para "There is a lot of"
	line "potential in that"
	cont "pathetic fish."
	done

LakeOfRageClairChallengeText:
	ntag "CLAIR:"
	text "I suppose want a"
	line "GYM BADGE?"
	done

LakeOfRageClairStayLongerText:
	ntag "CLAIR:"
	text "You don't look"
	line "like you're ready"
	cont "to challenge me."

	para "I think I'll stay"
	line "here a bit longer."
	done

LakeOfRageGetMoreBadgesText:
	text "<PLAYER> should"
	line "return here with"
	cont "more GYM BADGEs."
	done

LakeOfRageClairReturnsToGymText:
	ntag "CLAIR:"
	text "Alright, meet me"
	line "back at my GYM in"
	cont "BLACKTHORN CITY."

	para "We'll have our"
	line "battle there."
	done

LakeOfRageClairStepsLeftMovement:
	step LEFT
	step_end

LakeOfRageClairLeaveMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
LakeOfRagePlayerStepsDownMovement:
	step DOWN
	step_end

; trainers
TrainerFisherMarco:
	trainer FISHER, MARCO, EVENT_BEAT_FISHER_MARCO, FisherMarcoSeenText, FisherMarcoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherMarcoAfterBattleText
	waitbutton
	closetext
	end

FisherMarcoSeenText:
	text "Let me battle with"
	line "the #MON I just"
	cont "caught!"
	done

FisherMarcoBeatenText:
	text "I might be an ex-"
	line "pert angler, but"
	cont "I stink as a #-"
	roll "MON trainer…"
	done

FisherMarcoAfterBattleText:
	text "I won't lose as an"
	line "angler! I catch"
	cont "#MON all day."
	done

TrainerFisherArchie:
	trainer FISHER, ARCHIE, EVENT_BEAT_FISHER_ARCHIE, FisherArchieSeenText, FisherArchieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherArchieAfterBattleText
	waitbutton
	closetext
	end

FisherArchieSeenText:
	text "No matter what I"
	line "do, all I catch"
	cont "are the same #-"
	roll "MON…"
	done

FisherArchieBeatenText:
	text "My line's all"
	line "tangled up…"
	done

FisherArchieAfterBattleText:
	text "Why can't I catch"
	line "any good #MON?"
	done

TrainerCooltrainermKevin:
	trainer COOLTRAINERM, KEVIN, EVENT_BEAT_COOLTRAINERM_KEVIN, CooltrainermKevinSeenText, CooltrainermKevinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainermKevinAfterBattleText
	waitbutton
	closetext
	end

CooltrainermKevinSeenText:
	text "If a trainer spots"
	line "another trainer,"
	cont "he has to make a"
	roll "challenge."
	done

CooltrainermKevinBeatenText:
	text "Whew…"
	line "Good battle."
	done

CooltrainermKevinAfterBattleText:
	text "#MON and their"
	line "trainer become"
	cont "powerful through"
	roll "constant battling."
	done

TrainerCooltrainerfCara:
	trainer COOLTRAINERF, CARA, EVENT_BEAT_COOLTRAINERF_CARA, CooltrainerfCaraSeenText, CooltrainerfCaraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCaraAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfCaraSeenText:
	text "I heard a rare"
	line "MAGIKARP was seen"
	cont "in the lake."
	done
;
;	text "What happened to"
;	line "the red GYARADOS?"
;
;	para "It's gone?"
;
;	para "Oh, darn. I came"
;	line "here for nothing?"
;
;	para "I know--let's"
;	line "battle!"
;	done

CooltrainerfCaraBeatenText:
	text "Good going!"
	done

CooltrainerfCaraAfterBattleText:
	text "Come to think of"
	line "it, I've seen a"
	cont "pink BUTTERFREE."
	done

LakeOfRageSuperNerdScript:
	jumptextfaceplayer LakeOfRageSuperNerdText
LakeOfRageSuperNerdText:
	text "I heard this lake"
	line "was made by ram-"
	cont "paging GYARADOS."
	done

LakeOfRageCooltrainerFScript:
	jumptextfaceplayer LakeOfRageCooltrainerFText
LakeOfRageCooltrainerFText:
	text "Did my eyes de-"
	line "ceive me? I saw a"
	cont "gold MAGIKARP in"
	line "the lake…"

	para "But MAGIKARP are"
	line "usually orange."
	done

;LakeOfRageGrampsScript:
;	faceplayer
;	opentext
;	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
;	iftrue .ClearedRocketHideout
;	writetext LakeOfRageGrampsText
;	waitbutton
;	closetext
;	end
;
;.ClearedRocketHideout:
;	writetext LakeOfRageGrampsText_ClearedRocketHideout
;	waitbutton
;	closetext
;	end
;
;LakeOfRageGrampsText:
;	text "The GYARADOS are"
;	line "angry!"
;
;	para "It's a bad omen!"
;	done
;
;LakeOfRageGrampsText_ClearedRocketHideout:
;	text "Hahah! The MAGI-"
;	line "KARP are biting!"
;	done

LakeOfRageSign:
	jumptext LakeOfRageSignText
LakeOfRageSignText:
	text "LAKE OF RAGE"
;	line "also known as"
;	cont "GYARADOS LAKE."
	done

MagikarpHouseSignScript:
	opentext
	writetext FishingGurusHouseSignText
;	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
;	iftrue .MagikarpLengthRecord
;	waitbutton
;	closetext
;	end
;
.MagikarpLengthRecord:
	promptbutton
	special MagikarpHouseSign
	closetext
	end

FishingGurusHouseSignText:
	text "FISHING GURU's"
	line "HOUSE"
	done

LakeOfRageHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_LAKE_OF_RAGE_HIDDEN_FULL_RESTORE

LakeOfRageHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_LAKE_OF_RAGE_HIDDEN_RARE_CANDY

LakeOfRageHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_LAKE_OF_RAGE_HIDDEN_MAX_POTION

LakeOfRageElixer:
	itemball ELIXER

;LakeOfRageTMDetect:
;	itemball TM_DETECT

LakeOfRage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, LakeOfRageSign
	bg_event 25, 31, BGEVENT_READ, MagikarpHouseSignScript
	bg_event 11, 28, BGEVENT_ITEM, LakeOfRageHiddenFullRestore
	bg_event  4,  3, BGEVENT_ITEM, LakeOfRageHiddenRareCandy
	bg_event 35,  4, BGEVENT_ITEM, LakeOfRageHiddenMaxPotion

	def_object_events
;	object_event  2,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesleyScript, EVENT_LAKE_OF_RAGE_WESLEY_OF_WEDNESDAY
	object_event 22, 20, SPRITE_MAGIKARP_SWIM, SPRITEMOVEDATA_SWIM_WANDER, 2, 1, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, GoldMagikarp, EVENT_LAKE_OF_RAGE_GOLD_MAGIKARP
	object_event 21, 28, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LakeOfRageClairScript, EVENT_CLAIR_RETURNED_TO_GYM ;EVENT_LAKE_OF_RAGE_CLAIR
	object_event 36, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageSuperNerdScript, -1
	object_event 30, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageCooltrainerFScript, -1
;	object_event 20, 26, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageGrampsScript, -1
	object_event 24, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherMarco, -1 ;andre ;EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 32, 20, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherArchie, -1 ;raymond ;EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  4, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermKevin, -1 ;aaron ;EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 36,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCooltrainerfCara, -1 ;lois ;EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  5,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageElixer, EVENT_LAKE_OF_RAGE_ELIXER
;	object_event 35,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageTMDetect, EVENT_LAKE_OF_RAGE_TM_DETECT

;LakeOfRageLanceScript:
;	checkevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
;	iftrue .AskAgainForHelp
;	opentext
;	writetext LakeOfRageLanceForcedToEvolveText
;	promptbutton
;	faceplayer
;	writetext LakeOfRageLanceIntroText
;	yesorno
;	iffalse .RefusedToHelp
;.AgreedToHelp:
;	writetext LakeOfRageLanceRadioSignalText
;	waitbutton
;	closetext
;	playsound SFX_WARP_TO
;	applymovement LAKEOFRAGE_LANCE, LakeOfRageLanceTeleportIntoSkyMovement
;	disappear LAKEOFRAGE_LANCE
;	clearevent EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
;	setevent EVENT_DECIDED_TO_HELP_LANCE
;	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS
;	end
;
;.RefusedToHelp:
;	writetext LakeOfRageLanceRefusedText
;	waitbutton
;	closetext
;	setevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
;	end

;.AskAgainForHelp:
;	faceplayer
;	opentext
;	writetext LakeOfRageLanceAskHelpText
;	yesorno
;	iffalse .RefusedToHelp
;	sjump .AgreedToHelp

;LakeOfRageLanceForcedToEvolveText:
;	text "This lake is full"
;	line "of GYARADOS but"
;	cont "nothing else…"
;
;	para "So the MAGIKARP"
;	line "are being forced"
;	cont "to evolve…"
;	done

;LakeOfRageLanceIntroText:
;	text "Did you come here"
;	line "because of the"
;	cont "rumors?"
;
;	para "You're <PLAYER>?"
;	line "I'm LANCE, a"
;	cont "trainer like you."
;
;	para "I heard some ru-"
;	line "mors, so I came to"
;	cont "investigate…"
;
;	para "I saw the way you"
;	line "battled earlier,"
;	cont "<PLAY_G>."
;
;	para "I can tell that"
;	line "you're a trainer"
;
;	para "with considerable"
;	line "skill."
;
;	para "If you don't mind,"
;	line "could you help me"
;	cont "investigate?"
;	done

;LakeOfRageLanceRadioSignalText:
;	text "LANCE: Excellent!"
;
;	para "It seems that the"
;	line "LAKE's MAGIKARP"
;
;	para "are being forced"
;	line "to evolve."
;
;	para "A mysterious radio"
;	line "broadcast coming"
;
;	para "from MAHOGANY is"
;	line "the cause."
;
;	para "I'll be waiting"
;	line "for you, <PLAY_G>."
;	done

;LakeOfRageLanceRefusedText:
;	text "Oh… Well, if you"
;	line "change your mind,"
;	cont "please help me."
;	done

;LakeOfRageLanceAskHelpText:
;	text "LANCE: Hm? Are you"
;	line "going to help me?"
;	done

;LakeOfRageLanceTeleportIntoSkyMovement:
;	teleport_from
;	step_end