	object_const_def

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route35GoldenrodGateOfficerScript:
	jumptext Route35GoldenrodGateOfficerText
Route35GoldenrodGateOfficerText:
	text "People say the"
	line "trees on ROUTE 36"
	cont "can walk around!"

	para "That's impossible!"
	line "…Isn't it…?"
	done

Route35GoldenrodGatePokefanFScript:
	jumptextfaceplayer Route35GoldenrodGatePokefanFText
Route35GoldenrodGatePokefanFText:
	text "I like the #MON"
	line "Lullaby they play"
	cont "on the radio."
	done

Route35GoldenrodGateFisherScript:
	jumptextfaceplayer Route35GoldenrodGateFisherText
Route35GoldenrodGateFisherText:
	text "I wonder how many"
	line "kinds of #MON"
	cont "there are in the"
	roll "world?"
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_35, 1
	warp_event  4,  0, ROUTE_35, 2
	warp_event  3,  7, GOLDENROD_CITY, 1
	warp_event  4,  7, GOLDENROD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateOfficerScript, -1
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  2,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1

;RandyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_HP_UP_FROM_RANDY
;	iftrue .gothpup
;	checkevent EVENT_GAVE_KENYA
;	iftrue .questcomplete
;	checkevent EVENT_GOT_KENYA
;	iftrue .alreadyhavekenya
;	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
;	yesorno
;	iffalse .refused
;	writetext Route35GoldenrodGateRandyThanksText
;	promptbutton
;	waitsfx
;	readvar VAR_PARTYCOUNT
;	ifequal PARTY_LENGTH, .partyfull
;	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
;	playsound SFX_KEY_ITEM
;	waitsfx
;	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
;	givepokemail GiftSpearowMail
;	setevent EVENT_GOT_KENYA
;.alreadyhavekenya
;	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
;	waitbutton
;	closetext
;	end
;
;.partyfull
;	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
;	waitbutton
;	closetext
;	end
;
;.refused
;	writetext Route35GoldenrodGateRandyOhNeverMindThenText
;	waitbutton
;	closetext
;	end
;
;.questcomplete
;	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
;	promptbutton
;	verbosegiveitem HP_UP
;	iffalse .bagfull
;	setevent EVENT_GOT_HP_UP_FROM_RANDY
;.gothpup
;	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
;	waitbutton
;.bagfull
;	closetext
;	end

;GiftSpearowMail:
;	db FLOWER_MAIL
;	db   "DARK CAVE leads"
;	next "to another road@"

;GiftSpearowName:
;	db "KENYA@"

;GiftSpearowOTName:
;	db "RANDY@"

;Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
;	text "Excuse me, kid!"
;	line "Can you do a guy"
;	cont "a favor?"
;
;	para "Can you take this"
;	line "#MON with MAIL"
;	cont "to my friend?"
;
;	para "He's on ROUTE 31."
;	done

;Route35GoldenrodGateRandyThanksText:
;	text "You will? Perfect!"
;	line "Thanks, kid!"
;
;	para "My pal's a chubby"
;	line "guy who snoozes"
;	cont "all the time."
;
;	para "You'll recognize"
;	line "him right away!"
;	done

;Route35GoldenrodGatePlayerReceivedAMonWithMailText:
;	text "<PLAYER> received a"
;	line "#MON with MAIL."
;	done

;Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
;	text "You can read it,"
;	line "but don't lose it!"
;	cont "ROUTE 31!"
;
;	para "Oh, yeah. There"
;	line "was a weird tree"
;	cont "blocking the road."
;
;	para "I wonder if it's"
;	line "been cleared?"
;	done

;Route35GoldenrodGateRandyCantCarryAnotherMonText:
;	text "You can't carry"
;	line "another #MON…"
;	done

;Route35GoldenrodGateRandyOhNeverMindThenText:
;	text "Oh… Never mind,"
;	line "then…"
;	done

;Route35GoldenrodGateRandySomethingForYourTroubleText:
;	text "Thanks, kid! You"
;	line "made the delivery"
;	cont "for me!"
;
;	para "Here's something"
;	line "for your trouble!"
;	done

;Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
;	text "My pal was snooz-"
;	line "ing, right? Heh,"
;	cont "what'd I say?"
;	done
