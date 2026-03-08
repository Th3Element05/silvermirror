	object_const_def

DragonsDenB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCooltrainerMJake:
	trainer COOLTRAINERM, JAKE, EVENT_BEAT_COOLTRAINERM_JAKE, CooltrainerMJakeSeenText, CooltrainerMJakeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMJakeAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMJakeSeenText:
	text "You! How dare you"
	line "enter uninvited!"
	done

CooltrainerMJakeBeatenText:
	text "S-strong!"
	done

CooltrainerMJakeAfterBattleText:
	text "The shrine ahead"
	line "is home to the"
	cont "MASTERs of our"
	roll "dragon-user clan."

	para "You're not allowed"
	line "to just go in!"
	done

TrainerCooltrainerFReena:
	trainer COOLTRAINERF, REENA1, EVENT_BEAT_COOLTRAINERF_REENA, CooltrainerFReenaSeenText, CooltrainerFReenaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFReenaAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFReenaSeenText:
	text "You shouldn't be"
	line "in here!"
	done

CooltrainerFReenaBeatenText:
	text "Oh yikes, I lost!"
	done

CooltrainerFReenaAfterBattleText:
	text "Soon I'm going to"
	line "get permission"
	cont "from our MASTER to"
	roll "use dragons."

	para "When I do, I'm"
	line "going to become an"
	cont "admirable dragon"
	roll "trainer and gain"
	cont "our MASTER's"
	roll "approval."
	done

TrainerTwinsAmyandMay1:
	trainer TWINS, AMYANDMAY, EVENT_BEAT_TWINS_AMYANDMAY, TwinsAmyandMaySeenText, TwinsAmyandMayBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TwinsAmyandMay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAmyandMay2:
	trainer TWINS, AMYANDMAY, EVENT_BEAT_TWINS_AMYANDMAY, TwinsAmyandMaySeenText, TwinsAmyandMayBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TwinsAmyandMay2AfterBattleText
	waitbutton
	closetext
	end

TwinsAmyandMaySeenText:
	text "It's a stranger we"
	line "don't know."
	done

TwinsAmyandMayBeatenText:
	text "Who are you?"
	done

TwinsAmyandMay1AfterBattleText:
	text "It was like having"
	line "to battle LANCE."
	done

TwinsAmyandMay2AfterBattleText:
	text "We'll tell on you."

	para "MASTER will be"
	line "angry with you."
	done

DragonShrineSignpost:
	jumptext DragonShrineSignpostText
DragonShrineSignpostText:
	text "DRAGON SHRINE"

	para "A shrine honoring"
	line "the dragon #MON"
	cont "said to have lived"
	roll "in DRAGON's DEN."
	done

; hidden items
DragonsDenB1FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

; itemballs
DragonsDenB1FCalcium:
	itemball CALCIUM

DragonsDenB1FMaxElixer:
	itemball MAX_ELIXER

DragonsDenB1FTMDragonPulse:
	itemball TM_DRAGON_PULSE

DragonsDenB1FDragonFang:
	itemball DRAGON_FANG

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3
	warp_event 19, 27, DRAGON_SHRINE, 1

	def_coord_events

	def_bg_events
	bg_event 18, 22, BGEVENT_READ, DragonShrineSignpost
	bg_event 33, 29, BGEVENT_ITEM, DragonsDenB1FHiddenMaxRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 20,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMJake, -1
	object_event  8,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFReena, -1
	object_event  4, 17, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandMay1, -1
	object_event  4, 18, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandMay2, -1
	object_event 30,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FCalcium, EVENT_DRAGONS_DEN_B1F_CALCIUM
	object_event 20, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FTMDragonPulse, EVENT_DRAGONS_DEN_B1F_TM_DRAGON_PULSE
	object_event  5, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FMaxElixer, EVENT_DRAGONS_DEN_B1F_MAX_ELIXER
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DragonsDenB1FDragonFang, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
