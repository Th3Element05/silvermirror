	object_const_def

SSAnneRooms1F_MapScripts:
	def_scene_scripts

	def_callbacks

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
	text "My, my"
	line "friends..."
	done

GentlemanPrestonAfterBattleText:
	text "You should be"
	line "nice to friends!"
	done

SSAnneRooms1FGentlemanScript:
	jumptextfaceplayer SSAnneRooms1FGentlemanText
SSAnneRooms1FGentlemanText: 
	text "Ssh! I'm a GLOBAL"
	line "POLICE agent!"

	para "I'm on the trail"
	line "of TEAM ROCKET!"
	done

SSAnneRooms1FLass1Script:
	jumptextfaceplayer SSAnneRooms1FLass1Text
SSAnneRooms1FLass1Text:
	text "We are cruising"
	line "around the world."
	done

SSAnneRooms1FGirlScript:
	jumptextfaceplayer SSAnneRooms1FGirlText
SSAnneRooms1FGirlText:
	text "I always travel"
	line "with WIGGLYTUFF!"
	done

SSAnneRooms1FWigglytuffScript:
	opentext
	writetext SSAnneRooms1FWigglytuffText
	cry CLEFAIRY
	waitbutton
	closetext
	end
SSAnneRooms1FWigglytuffText:
	text "CLEFAIRY: Puup"
	line "pupuu!"
	done

SSAnneRooms1FPokefanMScript:
	jumptextfaceplayer SSAnneRooms1FPokefanMText
SSAnneRooms1FPokefanMText:
	text "A cruise is so"
	line "elegant yet cozy!"
	done

SSAnneRooms1FLass2Script:
	jumptextfaceplayer SSAnneRooms1FLass2Text
SSAnneRooms1FLass2Text:
	text "Waiter, I would"
	line "like a cherry pie"
	cont "please!"
	done

SSAnneRooms1FTMBodySlam:
	itemball TM_BODY_SLAM

SSAnneRooms1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, SS_ANNE_1F, 4
	warp_event 10,  0, SS_ANNE_1F, 5
	warp_event 20,  0, SS_ANNE_1F, 6
	warp_event  0, 10, SS_ANNE_1F, 7
	warp_event 10, 10, SS_ANNE_1F, 8
	warp_event 20, 10, SS_ANNE_1F, 9

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FGentlemanScript, -1
	object_event 13,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassSadie, -1
	object_event 10,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FLass1Script, -1
	object_event 11,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterJimmy, -1
	object_event 22,  1, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FGirlScript, -1
	object_event 23,  1, SPRITE_CLEFAIRY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FWigglytuffScript, -1
	object_event 20,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FPokefanMScript, -1
	object_event  2, 13, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms1FLass2Script, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanEdward, -1
	object_event 22, 13, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanPreston, -1
	object_event 12,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SSAnneRooms1FTMBodySlam, EVENT_SS_ANNE_ROOMS_1F_TM_BODY_SLAM
