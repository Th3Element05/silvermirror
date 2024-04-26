	object_const_def
	const PEWTER_MUSEUM_1F_SCIENTIST_1
	const PEWTER_MUSEUM_1F_SCIENTIST_2
	const PEWTER_MUSEUM_1F_SCIENTIST_3
	const PEWTER_MUSEUM_1F_GRAMPS
	const PEWTER_MUSEUM_1F_OLD_AMBER

PewterMuseum1F_MapScripts:
	def_scene_scripts
	scene_script PewterMuseum1FNoop1Scene, SCENE_PEWTER_MUSEUM_1F_NOOP
	scene_script PewterMuseum1FNoop2Scene, SCENE_PEWTER_MUSEUM_1F_RECEPTION_PAYED

	def_callbacks

PewterMuseum1FNoop1Scene:
PewterMuseum1FNoop2Scene:
	end

ReceptionScene:
	turnobject PLAYER, RIGHT
	jump PewterMuseum1F_Reception_Scientist_Script
	end

PewterMuseum1F_Reception_Scientist_Script:
	faceplayer
	opentext
	checkscene
	iftrue .AlreadyPayed
	readvar VAR_FACING
	ifequal DOWN, .DontSneakIn
	ifequal LEFT, .DontSneakIn
	writetext PewterMuseum1F_Scientist_ReceptionText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 50
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 50
	special PlaceMoneyTopRight
	writetext PewterMuseum1F_Scientist_TicketThankYouText
	waitbutton
	closetext
	setscene SCENE_PEWTER_MUSEUM_1F_RECEPTION_PAYED
	end

.NotEnoughMoney:
	writetext PewterMuseum1F_Scientist_NotEnoughMoneyText
	waitbutton
	closetext
	applymovement PLAYER, MovementData_Player_Walks_Museum_Entrance
	end

.Refused:
	writetext PewterMuseum1F_Scientist_ComeAgainText
	waitbutton
	closetext
	turnobject PEWTER_MUSEUM_1F_SCIENTIST_1, LEFT
	applymovement PLAYER, MovementData_Player_Walks_Museum_Entrance
	end

.DontSneakIn:
	writetext PewterMuseum1F_Scientist_ReceptionBackWayText
	waitbutton
	closetext
	turnobject PEWTER_MUSEUM_1F_SCIENTIST_1, LEFT
	end

.AlreadyPayed:
	jumptext PewterMuseum1F_Scientist_TakeYourTimeText
	end

PewterMuseum1F_Fossil_Scientist_Script:
	jumptextfaceplayer PewterMuseum1F_Scientist_PrideAndJoyText
	end

PewterMuseum1F_Old_Amber_Scientist_Script:
	faceplayer
	opentext
	checkevent EVENT_PEWTER_MUSEUM_OBTAINED_OLD_AMBER
	iftrue .GotAmber
	writetext PewterMuseum1F_Scientist_TakeTheAmberText
	waitbutton
	disappear PEWTER_MUSEUM_1F_OLD_AMBER
	setevent EVENT_PEWTER_MUSEUM_OBTAINED_OLD_AMBER
	verbosegiveitem OLD_AMBER
	writetext PewterMuseum1F_CinnabarIslandText
	waitbutton
	closetext
	end

.GotAmber
	jumptext PewterMuseum1F_CinnabarIslandText

PewterMuseum1F_Amber_Script:
	jumptext PewterMuseum1F_AmberText

PewterMuseum1F_Gramps_Script:
	faceplayer
	opentext
	writetext PewterMuseum1F_Gramps_Text
	waitbutton
	closetext
	turnobject PEWTER_MUSEUM_1F_GRAMPS, UP
	end

PewterMuseum1FKabutopsFossilDisplay:
	refreshscreen
	trainerpic KABUTOPS_FOSSIL
	waitbutton
	closepokepic
	opentext
	writetext KabutopsFossilDisplayText
	waitbutton
	closetext
	end

PewterMuseum1FAerodactylFossilDisplay:
	refreshscreen
	trainerpic AERODACTYL_FOSSIL
	waitbutton
	closepokepic
	opentext
	writetext AerodactylFossilDisplayText
	waitbutton
	closetext
	end

PewterMuseum1F_Scientist_ReceptionBackWayText:
	text "Hey!"

	para "You can't sneak in"
	line "through the back!"

	para "You can't view the"
	line "exhibits from here"
	cont "anyway."
	done

PewterMuseum1F_Scientist_PrideAndJoyText:
	text "We found two"
	line "fossils of rare,"
	cont "extinct #MON!"

	para "They are the pride"
	line "and joy of the"
	cont "MUSEUM!"
	done

PewterMuseum1F_Scientist_TakeTheAmberText:
	text "Ssh! I think that"
	line "this chunk of"
	cont "AMBER contains"
	cont "#MON DNA!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So, I would like"
	line "to ask a favor."

	para "Take this to a"
	line "#MON LAB and"
	cont "get it examined!"

	para "I hear there is a"
	line "good team of"
	cont "researchers on"
	cont "CINNABAR ISLAND!"
	done

PewterMuseum1F_CinnabarIslandText:
	text "I hear there is a"
	line "good team of"
	cont "researchers on"
	cont "CINNABAR ISLAND!"
	done

PewterMuseum1F_AmberText:
	text "AMBER is fossil-"
	line "ized tree sap."
	
	para "The AMBER here is"
	line "clear and gold!"
	done

PewterMuseum1F_Scientist_ReceptionText:
	text "Welcome!"
	
	para "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "view the exhibits?"
	done

PewterMuseum1F_Scientist_ComeAgainText:
	text "Come again!"
	done

PewterMuseum1F_Scientist_TicketThankYouText:
	text "That's ¥50 then,"
	line "thank you!"
	done

PewterMuseum1F_Scientist_NotEnoughMoneyText:
	text "You don't have"
	line "enough money!"
	done

PewterMuseum1F_Scientist_TakeYourTimeText:
	text "Please take plenty"
	line "of time to enjoy"
	cont "the exhibit!"
	done

PewterMuseum1F_Gramps_Text:
	text "My, my, what an"
	line "impressive fossil!"
	done

KabutopsFossilDisplayText:
	text "KABUTOPS FOSSIL"

	para "A primitive and"
	line "rare #MON."
	done

AerodactylFossilDisplayText:
	text "AERODACTYL FOSSIL"

	para "A primitive and"
	line "rare #MON."
	done

MovementData_Player_Walks_Museum_Entrance:
	step DOWN
	step_end

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1

	def_coord_events
	coord_event  9,  4, SCENE_DEFAULT, ReceptionScene
	coord_event 10,  4, SCENE_DEFAULT, ReceptionScene

	def_bg_events
	bg_event  3,  6, BGEVENT_READ, PewterMuseum1FKabutopsFossilDisplay
	bg_event  3,  3, BGEVENT_READ, PewterMuseum1FAerodactylFossilDisplay

	def_object_events
	object_event 12,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Reception_Scientist_Script, -1
	object_event 15,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Old_Amber_Scientist_Script, -1
	object_event 17,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Fossil_Scientist_Script, -1
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Gramps_Script, -1
	object_event 16,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PewterMuseum1F_Amber_Script, EVENT_PEWTER_MUSEUM_OBTAINED_OLD_AMBER

