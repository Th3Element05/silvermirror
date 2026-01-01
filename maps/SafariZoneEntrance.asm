	object_const_def
	const SAFARIZONEENTRANCE_OFFICER
	const SAFARIZONEENTRANCE_OFFICER2
	const SAFARIZONEENTRANCE_OFFICER3

SafariZoneEntrance_MapScripts:
	def_scene_scripts
	scene_script SafariZoneEntranceNoop1Scene, SCENE_SAFARIZONEENTRANCE_NOTHING
	scene_script LeaveSafariEarly, SCENE_SAFARIZONEENTRANCE_LEAVE_SAFARI_EARLY

	def_callbacks

SafariZoneEntranceNoop1Scene:
	end

LeaveSafariEarly:
	sdefer .LeavingSafariEarly

.SafariIsRunning: ; unreferenced
	setscene SCENE_SAFARIZONEENTRANCE_LEAVE_SAFARI_EARLY
	endcallback

.LeavingSafariEarly
	turnobject SAFARIZONEENTRANCE_OFFICER3, RIGHT
	applymovement PLAYER, MovementData_PlayerTriestoLeaveSafari
	opentext
	writetext SafariZoneEntranceMainOfficer_Text5
	yesorno
	iffalse .SafariZoneEntranceMainOfficer_Notleaving
	clearflag ENGINE_SAFARI_ZONE
	writetext SafariZoneEntranceMainOfficer_Text7
	waitbutton
	closetext
	applymovement PLAYER, MovementData_PlayerLeaveSafari
	applymovement SAFARIZONEENTRANCE_OFFICER3, MovementData_Officer2_Leave
	opentext
	writetext SafariZoneEntranceMainOfficer_Text8
	waitbutton
	closetext
	setevent EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_ACTIVE
	clearevent EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_NOT_ACTIVE
	setscene SCENE_SAFARIZONEENTRANCE_NOTHING
	appear SAFARIZONEENTRANCE_OFFICER2
	pause 1
	disappear SAFARIZONEENTRANCE_OFFICER3
	end

.SafariZoneEntranceMainOfficer_Notleaving:
	writetext SafariZoneEntranceMainOfficer_Text6
	waitbutton
	closetext
	applymovement PLAYER, MovementData_PlayerReEntersSafari
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
	warpfacing UP, SAFARI_ZONE_AREA_1, 18, 27
	end

SafariZoneEntranceMainOfficerScript:
	faceplayer
	opentext
	writetext SafariZoneEntranceMainOfficer_Text
	yesorno
	iffalse .SafariZoneEntranceMainOfficer_Declined
	readvar VAR_BOXSPACE
	ifequal 0, .BoxFull
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NotEnoughMoney
	setflag ENGINE_SAFARI_ZONE
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 500
	writetext SafariZoneEntranceMainOfficer_Text3
	promptbutton
	writetext SafariZoneEntranceReceivedBalls_Text
	playsound SFX_ITEM
	waitsfx
	writetext SafariZoneEntranceMainOfficer_Text4
	waitbutton
	closetext
	setscene SCENE_SAFARIZONEENTRANCE_LEAVE_SAFARI_EARLY
	special GiveSafariBalls
	scall .SafariZoneEntrance_EnterSafari
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	waitsfx
;silvermirror random NPCs
	setevent EVENT_SAFARI_ZONE_AREA_1_NPC1
	setevent EVENT_SAFARI_ZONE_AREA_1_NPC2
	setevent EVENT_SAFARI_ZONE_AREA_1_NPC3
	setevent EVENT_SAFARI_ZONE_AREA_2_NPC1
	setevent EVENT_SAFARI_ZONE_AREA_2_NPC2
	setevent EVENT_SAFARI_ZONE_AREA_2_NPC3
	setevent EVENT_SAFARI_ZONE_AREA_3_NPC1
	setevent EVENT_SAFARI_ZONE_AREA_3_NPC2
	setevent EVENT_SAFARI_ZONE_AREA_3_NPC3
	setevent EVENT_SAFARI_ZONE_AREA_4_NPC1
	setevent EVENT_SAFARI_ZONE_AREA_4_NPC2
	scall SafariZoneArea1NPCs
	scall SafariZoneArea2NPCs
	scall SafariZoneArea3NPCs
	scall SafariZoneArea4NPCs
;silvermirror random NPCs
	warpfacing UP, SAFARI_ZONE_AREA_1, 18, 27
	setevent EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_NOT_ACTIVE
	clearevent EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_ACTIVE
	end

.BoxFull:
	writetext SafariZoneBoxFullText
	waitbutton
	closetext
	end

.SafariZoneEntrance_EnterSafari:
	applymovement SAFARIZONEENTRANCE_OFFICER2, MovementData_Officer2
	applymovement PLAYER, MovementData_PlayerEnterSafari
	end

.SafariZoneEntranceMainOfficer_Declined:
	writetext SafariZoneEntranceMainOfficer_Text2
	waitbutton
	closetext
	end

.NotEnoughMoney
	writetext SafariZoneEntranceMainOfficer_NotEnoughMoneyText
	waitbutton
	closetext
	end

SafariZoneArea1NPCs:
	random 4
	ifequal 1, .Area1NPC1
	ifequal 2, .Area1NPC2
	ifequal 3, .Area1NPC3
	end
.Area1NPC1
	clearevent EVENT_SAFARI_ZONE_AREA_1_NPC1
	end
.Area1NPC2
	clearevent EVENT_SAFARI_ZONE_AREA_1_NPC2
	end
.Area1NPC3
	clearevent EVENT_SAFARI_ZONE_AREA_1_NPC3
	end

SafariZoneArea2NPCs:
	random 4
	ifequal 1, .Area2NPC1
	ifequal 2, .Area2NPC2
	ifequal 3, .Area2NPC3
	end
.Area2NPC1
	clearevent EVENT_SAFARI_ZONE_AREA_2_NPC1
	end
.Area2NPC2
	clearevent EVENT_SAFARI_ZONE_AREA_2_NPC2
	end
.Area2NPC3
	clearevent EVENT_SAFARI_ZONE_AREA_2_NPC3
	end

SafariZoneArea3NPCs:
	random 4
	ifequal 1, .Area3NPC1
	ifequal 2, .Area3NPC2
	ifequal 3, .Area3NPC3
	end
.Area3NPC1
	clearevent EVENT_SAFARI_ZONE_AREA_3_NPC1
	end
.Area3NPC2
	clearevent EVENT_SAFARI_ZONE_AREA_3_NPC2
	end
.Area3NPC3
	clearevent EVENT_SAFARI_ZONE_AREA_3_NPC3
	end

SafariZoneArea4NPCs:
	random 3
	ifequal 1, .Area4NPC1
	ifequal 2, .Area4NPC2
	end
.Area4NPC1
	clearevent EVENT_SAFARI_ZONE_AREA_4_NPC1
	end
.Area4NPC2
	clearevent EVENT_SAFARI_ZONE_AREA_4_NPC2
	end

SafariZoneEntranceOfficerScript:
	faceplayer
	opentext
	writetext SafariZoneEntranceOfficer_Text
	yesorno
	iffalse SafariZoneEntranceOfficer_NotFirstTime
	writetext SafariZoneEntranceOfficer_Text3
	checkevent EVENT_GOT_HM03_SURF
	iftrue .FoundSecretHouse
	promptbutton
	writetext SafariZoneEntranceOfficer_Text4
.FoundSecretHouse
	waitbutton
	closetext
	turnobject SAFARIZONEENTRANCE_OFFICER, RIGHT
	end

SafariZoneEntranceOfficer_NotFirstTime:
	writetext SafariZoneEntranceOfficer_Text2
	waitbutton
	closetext
	end

MovementData_Officer2:
	step UP
	step LEFT
	turn_head RIGHT
	step_end

MovementData_PlayerEnterSafari:
	step UP
	step UP
	step UP
	step_end

MovementData_PlayerTriestoLeaveSafari:
	step DOWN
	turn_head LEFT
	step_end

MovementData_PlayerLeaveSafari:
	step DOWN
	step DOWN
	turn_head UP
	step_end

MovementData_Officer2_Leave:
	step RIGHT
	step DOWN
	step_end

MovementData_PlayerReEntersSafari:
	step UP
	step_end

SafariZoneEntranceOfficer_Text:
	text "Hi! Is it your"
	line "first time here at"
	cont "the SAFARI ZONE?"
	done

SafariZoneEntranceOfficer_Text2:
	text "Have fun at the"
	line "SAFARI ZONE!"
	done

SafariZoneEntranceOfficer_Text3:
	text "SAFARI ZONE has 4"
	line "areas for you to"
	cont "explore."
	
	para "Each area has"
	line "different kinds"
	cont "of #MON."
	
	para "Use the SAFARI"
	line "BALLs we provide"
	cont "to catch whatever"
	cont "#MON you want!"
	
	para "When you run out"
	line "of time or SAFARI"
	cont "BALLs, it's game"
	cont "over for you!"
	
	para "Before you enter,"
	line "make sure you have"
	cont "room in your PC"
	cont "for new #MON!"
	done

SafariZoneEntranceOfficer_Text4:
	text "We're running an"
	line "event right now!"

	para "Find the SECRET"
	line "HOUSE and you win"
	cont "a free HM03!"
	done

SafariZoneEntranceMainOfficer_Text:
	text "Welcome to the"
	line "SAFARI ZONE!"
	
	para "For just ¥500,"
	line "you can catch all"
	cont "the #MON you"
	cont "want in the park!"
	
	para "Would you like to"
	line "play?"
	done

SafariZoneEntranceMainOfficer_Text2:
	text "OK! Please come"
	line "again!"
	done

SafariZoneEntranceMainOfficer_Text3:
	text "That'll be ¥500"
	line "please!"
	
	para "We only allow the"
	line "use of our SAFARI"
	cont "BALLs here."
	done

SafariZoneEntranceMainOfficer_Text4:
	text "We'll call you on"
	line "the PA when you"
	cont "run out of time"
	cont "or SAFARI BALLs!"
	
	para "Good luck!"
	done

SafariZoneEntranceMainOfficer_Text5:
	text "Oh, are you"
	line "leaving early?"
	done

SafariZoneEntranceMainOfficer_Text6:
	text "Good luck!"
	done

SafariZoneEntranceMainOfficer_Text7:
	text "Please return any"
	line "SAFARI BALLs you"
	cont "have left."
	done

SafariZoneEntranceMainOfficer_Text8:
	text "We look foward to"
	line "your next visit!"
	done

SafariZoneEntranceReceivedBalls_Text:
	text "<PLAYER> received"
	line "30 SAFARI BALLs."
	done

SafariZoneEntranceMainOfficer_NotEnoughMoneyText:
	text "Oh dear, you don't"
	line "have enough money."
	done

SafariZoneBoxFullText:
	text "Uh-oh…"
	line "Your PC BOX is"
	line "full of #MON!"

	para "You have no room"
	line "for any #MON"
	cont "you catch."

	para "Please make room"
	line "in your PC BOX,"
	line "then come see me."
	done

SafariZoneEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, SAFARI_ZONE_AREA_1, 1
	warp_event  2,  9, FUCHSIA_CITY, 1
	warp_event  3,  9, FUCHSIA_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, SafariZoneEntranceOfficerScript, -1
	object_event  3,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, SafariZoneEntranceMainOfficerScript, EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_NOT_ACTIVE
	object_event  2,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, SafariZoneEntranceMainOfficerScript, EVENT_SAFARI_ZONE_ENTRANCE_OFFICER_SAFARI_GAME_ACTIVE
