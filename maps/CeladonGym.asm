	object_const_def

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ERIKA
	iftrue .FightDone
	writetext ErikaIntroText
	waitbutton
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_COOLTRAINERF_GWEN
	setevent EVENT_BEAT_LASS_CORA
	setevent EVENT_BEAT_BEAUTY_STEPH
	setevent EVENT_BEAT_PICNICKER_SHARON
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_LASS_ZOEY
	opentext
	writetext PlayerReceivedRainbowbadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
	promptbutton
	writetext ErikaExplainRainbowbadgeText
	promptbutton
	; fallthrough
.FightDone:
	checkevent EVENT_GOT_TM21_GIGA_DRAIN
	iftrue .GotGigaDrain
	verbosegiveitem TM_GIGA_DRAIN
	setevent EVENT_GOT_TM21_GIGA_DRAIN
	writetext ErikaExplainTMText
	waitbutton
	closetext
	end
.GotGigaDrain:
	writetext ErikaAfterBattleText
	waitbutton
	closetext
	end

ErikaIntroText:
	text "Hello. Lovely"
	line "weather isn't it?"
	cont "It's so pleasant."

	para "...Oh dear..."
	line "I must have dozed"
	cont "off. Welcome."

	para "My name is ERIKA."
	line "I am the LEADER"
	cont "of CELADON GYM."

	para "I teach the art of"
	line "flower arranging."
	cont "My #MON are of"
	cont "the grass-type."

	para "Oh, I'm sorry, I"
	line "had no idea that"
	cont "you wished to"
	cont "challenge me."

	para "Very well, but I"
	line "shall not lose."
	done

ErikaBeatenText:
	text "Oh!"
	line "I concede defeat."

	para "You are remarkably"
	line "strong."

	para "I must confer you"
	line "the RAINBOWBADGE."
	done

PlayerReceivedRainbowbadgeText:
	text "<PLAYER> received"
	line "RAINBOWBADGE."
	done

ErikaExplainRainbowbadgeText:
	text "The RAINBOWBADGE"
	line "will make #MON"
	cont "up to L50 obey."

;	para "It also allows"
;	line "#MON to use"
;	cont "the move STRENGTH"
;	cont "to move boulders."
;
	para "Please also take"
	line "this with you."
	done

ErikaExplainTMText:
	text "TM21 contains"
	line "GIGA DRAIN."

	para "Half the damage"
	line "it inflicts is"
	cont "drained to heal"
	cont "your #MON!"
	done

ErikaAfterBattleText:
	text "You are cataloging"
	line "#MON? I must"
	cont "say I'm impressed."

	para "I would never"
	line "collect #MON"
	cont "if they were"
	cont "unattractive."
	done

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetext
	end

BeautyVictoriaSeenText:
	text "Pleased to meet"
	line "you. My hobby is"
	cont "#MON training."
	done

BeautyVictoriaBeatenText:
	text "Oh!"
	line "Splendid!"
	done

BeautyVictoriaAfterBattleText:
	text "I have a blind"
	line "date coming up."
	cont "I have to learn"
	cont "to be polite."
	done

TrainerCooltrainerFGwen:
	trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerFGwenSeenText, CooltrainerFGwenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFGwenAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFGwenSeenText:
	text "Welcome to"
	line "CELADON GYM!"

	para "You better not"
	line "underestimate"
	cont "girl power!"
	done

CooltrainerFGwenBeatenText:
	text "Oh!"
	line "Beaten!"
	done

CooltrainerFGwenAfterBattleText:
	text "I didn't bring my"
	line "best #MON!"

	para "Wait 'til next"
	line "time!"
	done

TrainerLassCora:
	trainer LASS, CORA, EVENT_BEAT_LASS_CORA, LassCoraSeenText, LassCoraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassCoraAfterBattleText
	waitbutton
	closetext
	end

LassCoraSeenText:
	text "Don't bring any"
	line "bugs or fire"
	cont "#MON in here!"
	done

LassCoraBeatenText:
	text "Oh!"
	line "You!"
	done

LassCoraAfterBattleText:
	text "Our LEADER, ERIKA,"
	line "might be quiet,"
	cont "but she's also"
	cont "very skilled!"
	done

TrainerBeautySteph:
	trainer BEAUTY, STEPH, EVENT_BEAT_BEAUTY_STEPH, BeautyStephSeenText, BeautyStephBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautyStephAfterBattleText
	waitbutton
	closetext
	end

BeautyStephSeenText:
	text "Look at my grass"
	line "#MON!"

	para "They're so easy"
	line "to raise!"
	done

BeautyStephBeatenText:
	text "No!"
	done

BeautyStephAfterBattleText:
	text "We only use grass-"
	line "type #MON at"
	cont "our GYM!"

	para "We also use them"
	line "for making flower"
	cont "arrangements!"
	done

TrainerPicnickerSharon:
	trainer PICNICKER, SHARON, EVENT_BEAT_PICNICKER_SHARON, PicnickerSharonSeenText, PicnickerSharonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerSharonAfterBattleText
	waitbutton
	closetext
	end

PicnickerSharonSeenText:
	text "Aren't you the"
	line "peeping Tom?"
	done

PicnickerSharonBeatenText:
	text "I'm"
	line "in shock!"
	done

PicnickerSharonAfterBattleText:
	text "Oh, you weren't"
	line "peeping? We get a"
	cont "lot of gawkers!"
	done

TrainerBeautyJulia:
	trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautyJuliaAfterBattleText
	waitbutton
	closetext
	end

BeautyJuliaSeenText:
	text "I was getting"
	line "bored."
	done

BeautyJuliaBeatenText:
	text "My"
	line "makeup!"
	done

BeautyJuliaAfterBattleText:
	text "Grass-type #MON"
	line "are tough against"
	cont "the water-type!"

	para "They also have an"
	line "edge on rock and"
	cont "ground #MON!"
	done

TrainerLassZoey:
	trainer LASS, ZOEY, EVENT_BEAT_LASS_ZOEY, LassZoeySeenText, LassZoeyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassZoeyAfterBattleText
	waitbutton
	closetext
	end

LassZoeySeenText:
	text "Hey!"

	para "You are not"
	line "allowed in here!"
	done

LassZoeyBeatenText:
	text "You're"
	line "too rough!"
	done

LassZoeyAfterBattleText:
	text "Bleaah!"
	line "I hope ERIKA"
	cont "wipes you out!"
	done

CeladonGymStatue:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  4,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  3,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBeautyVictoria, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFGwen, -1
	object_event  6,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassCora, -1
	object_event  1,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerBeautySteph, -1
	object_event  9,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerSharon, -1
	object_event  7, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulia, -1
	object_event  2, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerLassZoey, -1
