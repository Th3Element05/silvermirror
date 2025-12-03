	object_const_def

SSAnneRoomsB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SSAnneRoomsB1FTMCallback

SSAnneRoomsB1FTMCallback:
	checkitem TM_REST
	iffalse .Skip
	setevent EVENT_SS_ANNE_ROOMS_B1F_TM_REST
.Skip
	endcallback

TrainerSailorTerrell:
	trainer SAILOR, TERRELL, EVENT_BEAT_SAILOR_TERRELL, SailorTerrellSeenText, SailorTerrellBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorTerrellAfterBattleText
	waitbutton
	closetext
	end

SailorTerrellSeenText:
	text "Matey, you're"
	line "walking the plank"
	cont "if you lose!"
	done

SailorTerrellBeatenText:
	text "Argh!"
	line "Beaten by a kid!"
	done

SailorTerrellAfterBattleText:
	text "Jellyfish some-"
	line "times drift into"
	cont "the ship."
	done

TrainerFisherArnold:
	trainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherArnoldAfterBattleText
	waitbutton
	closetext
	end

FisherArnoldSeenText:
	text "Hello stranger!"
	line "Stop and chat!"

	para "All my #MON"
	line "are from the sea!"
	done

FisherArnoldBeatenText:
	text "Darn!"
	line "I let that one"
	cont "get away!"
	done

FisherArnoldAfterBattleText:
	text "I was going to"
	line "make you my"
	cont "assistant too!"
	done

TrainerSailorErnest:
	trainer SAILOR, ERNEST, EVENT_BEAT_SAILOR_ERNEST, SailorErnestSeenText, SailorErnestBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorErnestAfterBattleText
	waitbutton
	closetext
	end

SailorErnestSeenText:
	text "Us sailors have"
	line "#MON too!"
	done

SailorErnestBeatenText:
	text "OK, "
	line "you're not bad."
	done

SailorErnestAfterBattleText:
	text "We caught all our"
	line "#MON while"
	cont "out at sea!"
	done

TrainerSailorKent:
	trainer SAILOR, KENT, EVENT_BEAT_SAILOR_KENT, SailorKentSeenText, SailorKentBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorKentAfterBattleText
	waitbutton
	closetext
	end

SailorKentSeenText:
	text "I like feisty"
	line "kids like you!"
	done

SailorKentBeatenText:
	text "Argh!"
	line "Lost it!"
	done

SailorKentAfterBattleText:
	text "Sea #MON live"
	line "in deep water."
	cont "You'll need a ROD!"
	done

TrainerSailorJeff:
	trainer SAILOR, JEFF, EVENT_BEAT_SAILOR_JEFF, SailorJeffSeenText, SailorJeffBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorJeffAfterBattleText
	waitbutton
	closetext
	end

SailorJeffSeenText:
	text "My sailor's pride"
	line "is at stake!"
	done

SailorJeffBeatenText:
	text "Your"
	line "spirit sank me!"
	done

SailorJeffAfterBattleText:
	text "Did you see the"
	line "FISHING GURU in"
	cont "VERMILION CITY?"
	done

TrainerSailorGarrett:
	trainer SAILOR, GARRETT, EVENT_BEAT_SAILOR_GARRETT, SailorGarrettSeenText, SailorGarrettBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorGarrettAfterBattleText
	waitbutton
	closetext
	end

SailorGarrettSeenText:
	text "You know what they"
	line "say about sailors"
	cont "and fighting!"
	done

SailorGarrettBeatenText:
	text "Right!"
	line "Good fight, mate!"
	done

SailorGarrettAfterBattleText:
	text "Haha! Want to be"
	line "a sailor, mate?"
	done

; npc
SSAnneRoomsB1FMachokeScript:
	opentext
	writetext SSAnneRoomsB1FMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end
SSAnneRoomsB1FMachokeText:
	text "MACHOKE: Gwoh!"
	line "Goggoh!"
	done

SSAnneRoomsB1FSuperNerdScript:
	jumptextfaceplayer SSAnneRoomsB1FSuperNerdText
SSAnneRoomsB1FSuperNerdText:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done

; item balls
SSAnneRoomsB1FTMRest:
	itemball TM_REST

SSAnneRoomsB1FEther:
	itemball ETHER

SSAnneRoomsB1FMaxPotion:
	itemball MAX_POTION

; hidden items
SSAnneB1FHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_SS_ANNE_B1F_HIDDEN_HYPER_POTION

SSAnneRoomsB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SS_ANNE_1F, 10 ; 1
	warp_event  3,  7, SS_ANNE_1F, 10 ; 2
	warp_event 12,  7, SS_ANNE_1F, 11 ; 3
	warp_event 13,  7, SS_ANNE_1F, 11 ; 4
	warp_event  2, 19, SS_ANNE_1F, 12 ; 5
	warp_event  3, 19, SS_ANNE_1F, 12 ; 6
; dummy room 4
	warp_event 12, 19, SS_ANNE_1F, 13 ; 7
	warp_event 13, 19, SS_ANNE_1F, 13 ; 8
	warp_event  2, 31, SS_ANNE_1F, 14 ; 9
	warp_event  3, 31, SS_ANNE_1F, 14 ; 10

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_ITEM, SSAnneB1FHiddenHyperPotion

	def_object_events
	object_event  0,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorTerrell, -1
	object_event  0,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherArnold, -1
	object_event 12,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorErnest, -1
	object_event  2, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorKent, -1
	object_event 12, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorJeff, -1
	object_event 10, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorGarrett, -1
	object_event  1, 28, SPRITE_MACHOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsB1FMachokeScript, -1
	object_event  0, 29, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsB1FSuperNerdScript, -1
	object_event 10,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsB1FTMRest, EVENT_SS_ANNE_ROOMS_B1F_TM_REST
	object_event  0, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsB1FEther, EVENT_SS_ANNE_ROOMS_B1F_ETHER
	object_event  2, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsB1FMaxPotion, EVENT_SS_ANNE_ROOMS_B1F_MAX_POTION

;.GrayOverYellowOBPalette