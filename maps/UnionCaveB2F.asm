	object_const_def
	const UNIONCAVEB2F_LAPRAS

UnionCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, UnionCaveB2FLaprasCallback

UnionCaveB2FLaprasCallback:
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .Appear
	ifequal SATURDAY, .Appear
	ifequal SUNDAY, .Appear
.NoAppear:
	disappear UNIONCAVEB2F_LAPRAS
	endcallback

.Appear:
	appear UNIONCAVEB2F_LAPRAS
	endcallback

UnionCaveLapras:
	faceplayer
	cry LAPRAS
	loadwildmon LAPRAS, 20
	startbattle
	disappear UNIONCAVEB2F_LAPRAS
	setflag ENGINE_UNION_CAVE_LAPRAS
	reloadmapafterbattle
	end

TrainerCooltrainerfLily:
	trainer COOLTRAINERF, LILY, EVENT_BEAT_COOLTRAINERF_LILY, CooltrainerfLilySeenText, CooltrainerfLilyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLilyAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfLilySeenText:
	text "I'm in training."
	line "Care for a round?"
	done

CooltrainerfLilyBeatenText:
	text "Aww, no! You're"
	line "too good for me."
	done

CooltrainerfLilyAfterBattleText:
	text "I'm going to train"
	line "by myself until I"
	cont "improve."
	done

TrainerCooltrainermMiles:
	trainer COOLTRAINERM, MILES, EVENT_BEAT_COOLTRAINERM_MILES, CooltrainermMilesSeenText, CooltrainermMilesBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMilesAfterBattleText
	waitbutton
	closetext
	end

CooltrainermMilesSeenText:
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done

CooltrainermMilesBeatenText:
	text "You've got"
	line "dazzling style!"
	done

CooltrainermMilesAfterBattleText:
	text "Your #MON style"
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done

TrainerCooltrainerfRiver:
	trainer COOLTRAINERF, RIVER, EVENT_BEAT_COOLTRAINERF_RIVER, CooltrainerfRiverSeenText, CooltrainerfRiverBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfRiverAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfRiverSeenText:
	text "If the #MON I"
	line "liked were there,"
	cont "I'd go anywhere."

	para "That's what a real"
	line "trainer does."
	done

CooltrainerfRiverBeatenText:
	text "I'd rather pet my"
	line "babies than this!"
	done

CooltrainerfRiverAfterBattleText:
	text "Just once a week,"
	line "a #MON comes to"
	cont "the water's edge."

	para "I wanted to see"
	line "that #MON…"
	done

UnionCaveB2FElixer:
	itemball ELIXER

UnionCaveB2FHyperPotion:
	itemball HYPER_POTION

UnionCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 31, SPRITE_SURF, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveLapras, EVENT_UNION_CAVE_B2F_LAPRAS
	object_event  5, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLily, -1 ;gwen
	object_event 15, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMiles, -1 ;nick
	object_event  2, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfRiver, -1 ;emma
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FElixer, EVENT_UNION_CAVE_B2F_ELIXER
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FHyperPotion, EVENT_UNION_CAVE_B2F_HYPER_POTION
