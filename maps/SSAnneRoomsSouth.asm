	object_const_def

SSAnneRoomsSouth_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_NEWMAP, SSAnneRoomsSouthTMCallback
;
;SSAnneRoomsSouthTMCallback: ;this was for if you could buy this TM in celadon
;	checkitem TM_REST
;	iffalse .Skip
;	setevent EVENT_SS_ANNE_ROOMS_SOUTH_TM_REST
;.Skip
;	endcallback

; trainers
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


; rematch trainers
TrainerPokemaniacHorton:
	trainer POKEMANIAC, HORTON, EVENT_BEAT_POKEMANIAC_HORTON, PokemaniacHortonSeenText, PokemaniacHortonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacHortonAfterBattleText
	waitbutton
	closetext
	end

PokemaniacHortonSeenText:
	text "I love battling"
	line "with trainers from"
	cont "around the world!"
	done

PokemaniacHortonBeatenText:
	text "You have some neat"
	line "#MON!"
	done

PokemaniacHortonAfterBattleText:
	text "I take this trip"
	line "as often as I can"
	cont "so I can see new"
	roll "#MON!"
	done

TrainerTeacherKate:
	trainer TEACHER, KATE, EVENT_BEAT_TEACHER_KATE, TeacherKateSeenText, TeacherKateBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TeacherKateAfterBattleText
	waitbutton
	closetext
	end

TeacherKateSeenText:
	text "You like #MON?"

	para "Have a look at"
	line "mine!"
	done

TeacherKateBeatenText:
	text "Aren't they great?"
	done

TeacherKateAfterBattleText:
	text "I love showing off"
	line "my #MON to all"
	cont "of the different"
	roll "trainers we meet!"
	done

TrainerCoupleVicAndTara:
	trainer COUPLE, VICANDTARA, EVENT_BEAT_COUPLE_VICANDTARA, CoupleVicAndTaraSeenText, CoupleVicAndTaraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoupleVicAndTaraAfterBattleText
	waitbutton
	closetext
	end

CoupleVicAndTaraSeenText:
	text "Battling eachother"
	line "all the time gets"
	cont "boring."

	para "Would you like to"
	line "join us?"
	done

CoupleVicAndTaraBeatenText:
	text "We don't need a"
	line "third wheel!"
	done

CoupleVicAndTaraAfterBattleText:
	text "On second thought,"
	line "I think I'll stick"
	cont "to battling with"
	roll "my partner."
	done

TrainerCooltrainerFMia:
	trainer COOLTRAINERF, MIA, EVENT_BEAT_COOLTRAINERF_MIA, CooltrainerFMiaSeenText, CooltrainerFMiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFMiaAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFMiaSeenText:
	text "Don't board the"
	line "S.S.ANNE if you're"
	cont "not ready for a"
	roll "battle!"
	done

CooltrainerFMiaBeatenText:
	text "I guess I wasn't"
	line "ready…"
	done

CooltrainerFMiaAfterBattleText:
	text "I better heal up"
	line "my #MON before"
	cont "another trainer"
	roll "shows up!"
	done

TrainerPokefanMAustin:
	trainer POKEFANM, AUSTIN, EVENT_BEAT_POKEFANM_AUSTIN, PokefanMAustinSeenText, PokefanMAustinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanMAustinAfterBattleText
	waitbutton
	closetext
	end

PokefanMAustinSeenText:
	text "A battle?"
	line "Let's do it!"
	done

PokefanMAustinBeatenText:
	text "What fun!"
	done

PokefanMAustinAfterBattleText:
	text "I don't go seeking"
	line "people to battle,"
	cont "but I'm always"
	roll "ready for one!"
	done


; npc
SSAnneRoomsSouthMachokeScript:
	opentext
	writetext SSAnneRoomsSouthMachokeText
	cry MACHOKE
	waitbutton
	closetext
	end
SSAnneRoomsSouthMachokeText:
	text "MACHOKE: Gwoh!"
	line "Goggoh!"
	done

SSAnneRoomsSouthSuperNerdScript:
	jumptextfaceplayer SSAnneRoomsSouthSuperNerdText
SSAnneRoomsSouthSuperNerdText:
	text "My buddy, MACHOKE,"
	line "is super strong!"

	para "He has enough"
	line "STRENGTH to move"
	cont "big rocks!"
	done

; item balls
SSAnneRoomsSouthTMRest:
	itemball TM_REST

SSAnneRoomsSouthEther:
	itemball ETHER

SSAnneRoomsSouthMaxPotion:
	itemball MAX_POTION

; hidden items
SSAnneB1FHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_SS_ANNE_B1F_HIDDEN_HYPER_POTION

SSAnneRoomsSouth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SS_ANNE_1F, 9  ; 1
	warp_event  3,  7, SS_ANNE_1F, 9  ;2
	warp_event 10,  7, SS_ANNE_1F, 10 ; 3
	warp_event 11,  7, SS_ANNE_1F, 10 ;4
	warp_event 18,  7, SS_ANNE_1F, 11 ; 5
	warp_event 19,  7, SS_ANNE_1F, 11 ;6
	warp_event 26,  7, SS_ANNE_1F, 12 ; 7
	warp_event 27,  7, SS_ANNE_1F, 12 ;8
	warp_event 34,  7, SS_ANNE_1F, 13 ; 9
	warp_event 35,  7, SS_ANNE_1F, 13 ;10

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_ITEM, SSAnneB1FHiddenHyperPotion

	def_object_events
	object_event  0,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorTerrell, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  0,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherArnold, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  8,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorErnest, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 18,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorKent, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 26,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorJeff, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 24,  5, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorGarrett, EVENT_SSANNE_FIRST_VISIT_NPCS
; rematch trainers
	object_event  0,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 2, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerPokemaniacHorton, EVENT_SSANNE_TRAINERS_1B
	object_event  3,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerTeacherKate, EVENT_SSANNE_TRAINERS_1B
	object_event 10,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCoupleVicAndTara, EVENT_SSANNE_TRAINERS_2B
	object_event  9,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCoupleVicAndTara, EVENT_SSANNE_TRAINERS_2B
	object_event 18,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerFMia, EVENT_SSANNE_TRAINERS_3B
	object_event 25,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanMAustin, EVENT_SSANNE_TRAINERS_4B
; npcs
	object_event 33,  4, SPRITE_MACHOKE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsSouthMachokeScript, EVENT_SSANNE_TRAINERS_5B
	object_event 32,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SSAnneRoomsSouthSuperNerdScript, EVENT_SSANNE_TRAINERS_5B
	object_event  9,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsSouthTMRest, EVENT_SS_ANNE_ROOMS_SOUTH_TM_REST
	object_event 16,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsSouthEther, EVENT_SS_ANNE_ROOMS_SOUTH_ETHER
	object_event 34,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRoomsSouthMaxPotion, EVENT_SS_ANNE_ROOMS_SOUTH_MAX_POTION

;.GrayOverYellowOBPalette
