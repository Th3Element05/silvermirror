	object_const_def

SSAnneRoomsNorth_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_NEWMAP, SSAnneRoomsNorthTMCallback
;
;SSAnneRoomsNorthTMCallback: ;this was for if you could buy this TM in celadon
;	checkitem TM_BODY_SLAM
;	iffalse .Skip
;	setevent EVENT_SS_ANNE_ROOMS_NORTH_TM_BODY_SLAM
;.Skip
;	endcallback


; first trip trainers
TrainerLassSadie:
	trainer LASS, SADIE, EVENT_BEAT_LASS_SADIE, LassSadieSeenText, LassSadieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassSadieAfterBattleText
	waitbutton
	closetext
	end

LassSadieSeenText:
	text "I collected these"
	line "#MON from all"
	cont "around the world!"
	done

LassSadieBeatenText:
	text "Oh no!"
	line "I went around the"
	cont "world for these!"
	done

LassSadieAfterBattleText:
	text "You hurt my poor"
	line "worldly #MON!"

	para "I demand that you"
	line "heal them at a"
	cont "#MON CENTER!"
	done

TrainerYoungsterJimmy:
	trainer YOUNGSTER, JIMMY, EVENT_BEAT_YOUNGSTER_JIMMY, YoungsterJimmySeenText, YoungsterJimmyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterJimmyAfterBattleText
	waitbutton
	closetext
	end

YoungsterJimmySeenText:
	text "I love #MON!"
	line "Do you?"
	done

YoungsterJimmyBeatenText:
	text "Wow! "
	line "You're great!"
	done

YoungsterJimmyAfterBattleText:
	text "Let me be your"
	line "friend, OK?"

	para "Then we can trade"
	line "#MON!"
	done

TrainerGentlemanEdward:
	trainer GENTLEMAN, EDWARD, EVENT_BEAT_GENTLEMAN_EDWARD, GentlemanEdwardSeenText, GentlemanEdwardBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanEdwardAfterBattleText
	waitbutton
	closetext
	end

GentlemanEdwardSeenText:
	text "You pup! How dare"
	line "you barge in!"
	done

GentlemanEdwardBeatenText:
	text "Humph!"
	line "You rude child!"
	done

GentlemanEdwardAfterBattleText:
	text "I wish to be left"
	line "alone! Get out!"
	done

TrainerGentlemanPreston:
	trainer GENTLEMAN, PRESTON, EVENT_BEAT_GENTLEMAN_PRESTON, GentlemanPrestonSeenText, GentlemanPrestonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanPrestonAfterBattleText
	waitbutton
	closetext
	end

GentlemanPrestonSeenText:
	text "I travel alone"
	line "on my journeys!"

	para "My #MON are my"
	line "only friends!"
	done

GentlemanPrestonBeatenText:
	text "My, my friends…"
	done

GentlemanPrestonAfterBattleText:
	text "You should be"
	line "nice to friends!"
	done


; rematch trainers
TrainerCooltrainerMAndre:
	trainer COOLTRAINERM, ANDRE, EVENT_BEAT_COOLTRAINERM_ANDRE, CooltrainerMAndreSeenText, CooltrainerMAndreBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMAndreAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMAndreSeenText:
	text "Battle me so I"
	line "can show off for"
	cont "my girl!"
	done

CooltrainerMAndreBeatenText:
	text "…"
	line "Show off…"
	done

CooltrainerMAndreAfterBattleText:
	text "Maybe I should"
	line "just be relaxing."
	done

TrainerGentlemanBlake:
	trainer GENTLEMAN, BLAKE, EVENT_BEAT_GENTLEMAN_BLAKE, GentlemanBlakeSeenText, GentlemanBlakeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanBlakeAfterBattleText
	waitbutton
	closetext
	end

GentlemanBlakeSeenText:
	text "Flourish the"
	line "pinky!"
	done

GentlemanBlakeBeatenText:
	text "Fiddlesticks!"
	done

GentlemanBlakeAfterBattleText:
	text "I won this trip"
	line "from a contest on"
	cont "the radio."

	para "I'm only pretending"
	line "to be fancy."
	done

TrainerBurglarBarry:
	trainer BURGLAR, BARRY, EVENT_BEAT_BURGLAR_BARRY, BurglarBarrySeenText, BurglarBarryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BurglarBarryAfterBattleText
	waitbutton
	closetext
	end

BurglarBarrySeenText:
	text "!"
	done

BurglarBarryBeatenText:
	text "…"
	done

BurglarBarryAfterBattleText:
	text "This really is my"
	line "room!"

	para "I can enjoy going"
	line "on vacation, too!"
	done

TrainerMediumChel:
	trainer MEDIUM, CHEL, EVENT_BEAT_MEDIUM_CHEL, MediumChelSeenText, MediumChelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumChelAfterBattleText
	waitbutton
	closetext
	end

MediumChelSeenText:
	text "Boo!"
	done

MediumChelBeatenText:
	text "Boo…"
	done

MediumChelAfterBattleText:
	text "My granddaughter"
	line "is taking me on"
	cont "this cruise!"

	para "Its a little rich"
	line "for my taste, but"
	cont "I enjoy spending"
	roll "time with her!"
	done

TrainerLassElena:
	trainer LASS, ELENA, EVENT_BEAT_LASS_ELENA, LassElenaSeenText, LassElenaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassElenaAfterBattleText
	waitbutton
	closetext
	end

LassElenaSeenText:
	text "Mother! Someone's"
	line "in our room!"
	done

LassElenaBeatenText:
	text "Hmph!"
	done

LassElenaAfterBattleText:
	text "You really should"
	line "knock before you"
	cont "enter!"
	done

TrainerPokefanFAudrey:
	trainer POKEFANF, AUDREY, EVENT_BEAT_POKEFANF_AUDREY, PokefanFAudreySeenText, PokefanFAudreyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanFAudreyAfterBattleText
	waitbutton
	closetext
	end

PokefanFAudreySeenText:
	text "Oh! A visitor!"
	done

PokefanFAudreyBeatenText:
	text "Good battle!"
	done

PokefanFAudreyAfterBattleText:
	text "This is my daugh-"
	line "ter's first trip on"
	cont "the S.S.ANNE."

	para "She's not used to"
	line "all the trainers"
	cont "we get to meet at"
	roll "each stop!"
	done


; npcs
SSAnneRoomsNorthGentlemanScript:
	jumptextfaceplayer SSAnneRoomsNorthGentlemanText
SSAnneRoomsNorthGentlemanText:
	text "Ssh! I'm a GLOBAL"
	line "POLICE agent!"

	para "I'm on the trail"
	line "of TEAM ROCKET!"
	done

SSAnneRoomsNorthLass1Script:
	checkevent EVENT_SSANNE_FIRST_VISIT_NPCS
	iffalse .FirstVisit
	jumptextfaceplayer SSAnneRoomsNorthLass1Text2
.FirstVisit
	jumptextfaceplayer SSAnneRoomsNorthLass1Text1

SSAnneRoomsNorthLass1Text1:
	text "We are cruising"
	line "around the world."
	done

SSAnneRoomsNorthLass1Text2:
	text "The S.S.ANNE lets"
	line "trainers aboard"
	cont "whenever it docks."

	para "You get to meet so"
	line "many interesting"
	cont "people when you"
	roll "ride on S.S.ANNE!"
	done

SSAnneRoomsNorthGirlScript:
	jumptextfaceplayer SSAnneRoomsNorthGirlText
SSAnneRoomsNorthGirlText:
	text "I always travel"
	line "with CLEFAIRY!"
	done

SSAnneRoomsNorthClefairyScript:
	opentext
	writetext SSAnneRoomsNorthClefairyText
	cry CLEFAIRY
	waitbutton
	closetext
	end
SSAnneRoomsNorthClefairyText:
	ntag "CLEFAIRY:"
	text "Puup"
	line "pupuu!"
	done

SSAnneRoomsNorthPokefanMScript:
	jumptextfaceplayer SSAnneRoomsNorthPokefanMText
SSAnneRoomsNorthPokefanMText:
	text "A cruise is so"
	line "elegant yet cozy!"
	done

SSAnneRoomsNorthLass2Script:
	jumptextfaceplayer SSAnneRoomsNorthLass2Text
SSAnneRoomsNorthLass2Text:
	text "Waiter, I would"
	line "like a cherry pie"
	cont "please!"
	done


; itemballs
SSAnneRoomsNorthTMBodySlam:
	itemball TM_BODY_SLAM


SSAnneRoomsNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  1, SS_ANNE_1F, 4 ; 1
	warp_event  8,  1, SS_ANNE_1F, 5 ; 2
	warp_event 16,  1, SS_ANNE_1F, 6 ; 3
	warp_event 24,  1, SS_ANNE_1F, 7 ; 4
	warp_event 32,  1, SS_ANNE_1F, 8 ; 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassSadie, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterJimmy, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 25,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanEdward, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 34,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanPreston, EVENT_SSANNE_FIRST_VISIT_NPCS
; rematch trainers
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerMAndre, EVENT_SSANNE_TRAINERS_1A
	object_event 18,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanBlake, EVENT_SSANNE_TRAINERS_3A
	object_event 18,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerBurglarBarry, EVENT_SSANNE_TRAINERS_3C
	object_event 25,  4, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerMediumChel, EVENT_SSANNE_TRAINERS_4A
	object_event 35,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassElena, EVENT_SSANNE_TRAINERS_5A
	object_event 33,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, TrainerPokefanFAudrey, EVENT_SSANNE_TRAINERS_5A
; npcs
	object_event 27,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthLass2Script, -1
	object_event 11,  2, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthClefairyScript, EVENT_SSANNE_TRAINERS_2A
	object_event 10,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthGirlScript, EVENT_SSANNE_TRAINERS_2A
	object_event 17,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthGentlemanScript, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  0,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthLass1Script, -1
	object_event  8,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsNorthPokefanMScript, -1
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsNorthTMBodySlam, EVENT_SS_ANNE_ROOMS_NORTH_TM_BODY_SLAM

;.PinkOverYellowOBPalette
