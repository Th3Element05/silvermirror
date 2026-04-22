	object_const_def
	const BILLSFAMILYSHOUSE_BILL
;	const BILLSFAMILYSHOUSE_POKEFAN_F
;	const BILLSFAMILYSHOUSE_TWIN

BillsFamilysHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BillsFamilysHouseTilesCallback

BillsFamilysHouseTilesCallback:
	changeblock 2, 0, $1c ; pc
	endcallback

BillScript:
	faceplayer
	opentext
;	checkevent EVENT_GOT_GS_BALL_FROM_BILL
;	iftrue .GotGSBall
	writetext BillsFamilysHouseBill_GiveGSBallText
	waitbutton
;	yesorno
;	iffalse .Refused
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_BILL
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext BillsFamilysHouseBill_ExplainGSBallText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal LEFT, .PlayerDoesntNeedToMove
	applymovement PLAYER, BillsFamilysHouse_PlayerStepsBackMovement
.PlayerDoesntNeedToMove
	applymovement BILLSFAMILYSHOUSE_BILL, BillsFamilysHouse_BillLeavesMovement
	disappear BILLSFAMILYSHOUSE_BILL
	playsound SFX_EXIT_BUILDING
	end
;
;.NoRoom:
;	writetext BillPartyFullText
;	waitbutton
;	closetext
;	end
;
;.Refused:
;	writetext BillNoEeveeText
;	waitbutton
;	closetext
;	end

BillsFamilysHouseBill_GiveGSBallText:
	ntag "BILL:"
	text "<PLAYER>!"
	line "What are you doing"
	cont "in GOLDENROD?"

	para "I heard you were"
	line "the new #MON"
	cont "LEAGUE CHAMPION!"

	para "Congratulations!"

	para "You couldn't have"
	line "picked a better"
	cont "time to visit!"

	para "I'm here working"
	line "on an experimental"
	cont "#MON trading"
	roll "program."

	para "I'm trying to see"
	line "if #MON can be"
	cont "traded between the"
	roll "past and future."

	para "I'm calling it the"
	line "TIME CAPSULE!"

	para "Its not ready yet,"
	line "but this object"
	cont "came through when"
	roll "I was running one"
	cont "of my tests."

	para "I think you should"
	line "take it."
	done

BillsFamilysHouseBill_ExplainGSBallText:
	ntag "BILL:"
	text "It resembles a"
	line "#BALL, but it's"
	cont "something else."

	para "I'm not an expert"
	line "on #BALLs."

	para "But maybe you know"
	line "somebody who can"
	cont "tell you about it?"

	para "Anyway, I need to"
	line "get back to my"
	cont "house in KANTO."

	para "You should come"
	line "visit sometime!"

	para "See you later!"
	done

BillsFamilysHouse_BillLeavesMovement:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

BillsFamilysHouse_PlayerStepsBackMovement:
	fix_facing
	step LEFT
	remove_fixed_facing
	step_end

BillsMomScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_GS_BALL_FROM_BILL
	iftrue .TalkedToBill
	writetext BillsMomText_BeforeGSBall
	waitbutton
	closetext
	end

.TalkedToBill:
	writetext BillsMomText_AfterGSBall
	waitbutton
	closetext
	end

BillsMomText_BeforeGSBall:
	text "Oh, you collect"
	line "#MON? My son"
	cont "BILL is an expert."
	done

BillsMomText_AfterGSBall:
;	text "Any friend of my"
;	line "son is welcome!"
;
;	para "Come for a visit"
;	line "any time!"
;	done
;BillsMomText_AfterEcruteak:
	text "My husband was"
	line "once known as a"
	cont "#MANIAC."

	para "BILL must have"
	line "taken after his"
	cont "father."
	done

BillsSisterScript:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillsSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext SisterGaveBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	writetext BillsSisterStorageSystemText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillsSisterPhoneFullText
	promptbutton
.Refused:
	writetext BillsSisterRefusedNumberText
	waitbutton
	closetext
	end

BillsSisterUsefulNumberText:
	text "Are you a trainer?"

	para "I've got a useful"
	line "phone number for"
	cont "you."
	done

SisterGaveBillsNumberText:
	text "<PLAYER> recorded"
	line "BILL's number."
	done

BillsSisterRefusedNumberText:
	text "My brother made"
	line "the PC #MON"
	cont "storage system."

	para "I was going to"
	line "give you BILL's"
	cont "number…"
	done

BillsSisterPhoneFullText:
	text "You can't record"
	line "any more numbers."
	done

BillsSisterStorageSystemText:
	text "My big brother"
	line "BILL made the PC"
	cont "#MON storage"
	cont "system."
	done

BillsHouseBookshelf1:
	jumpstd PictureBookshelfScript

BillsHouseBookshelf2:
	jumpstd MagazineBookshelfScript

BillsHouseRadio:
	jumpstd Radio2Script

BillsFamilysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 10
	warp_event  3,  7, GOLDENROD_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BillsHouseBookshelf2
	bg_event  1,  1, BGEVENT_READ, BillsHouseBookshelf1
	bg_event  7,  1, BGEVENT_READ, BillsHouseRadio

	def_object_events
	object_event  3,  2, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillScript, EVENT_GOT_GS_BALL_FROM_BILL
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSisterScript, -1
