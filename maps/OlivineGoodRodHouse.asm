	object_const_def

OlivineGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks


OlivineGoodRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_JOHTO_LURE
	iftrue .SwapLure
	writetext OlivineGoodRodHouseFishingGuruText_Intro
	promptbutton
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
; don't have super rod yet
	writetext OlivineGoodRodHouseFishingGuruText_Question
	yesorno
	iffalse .Refused
	writetext OlivineGoodRodHouseFishingGuruText_Yes
	promptbutton
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .GiveSuperRod
	verbosegiveitem SUPER_ROD_2
	setevent EVENT_GOT_SUPER_ROD
	writetext OlivineGoodRodHouseFishingGuruText_GiveSuperRod
	waitbutton
	closetext
	end

.GotSuperRod:
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .OfferLure
	writetext OlivineGoodRodHouseFishingGuruText_HaveRod
	waitbutton
	closetext
	end

.SwapLure:
	checkevent EVENT_SUPER_ROD_LURE_ACTIVE
	iffalse .OfferLure
	writetext OlivineGoodRodHouseFishingGuruText_AskTakeLure
	yesorno
	iffalse .NoSwapLure
	takeitem SUPER_ROD_2, 1
	giveitem SUPER_ROD
	clearevent EVENT_SUPER_ROD_LURE_ACTIVE
	writetext OlivineGoodRodHouseFishingGuruText_ReturnLure
	waitbutton
	closetext
	end

.GiveSuperRod:
	verbosegiveitem SUPER_ROD
	setevent EVENT_GOT_SUPER_ROD
	writetext OlivineGoodRodHouseFishingGuruText_GiveSuperRod
	promptbutton
	; fallthrough
.OfferLure:
	writetext OlivineGoodRodHouseFishingGuruText_OfferLure
	yesorno
	iffalse .NoSwapLure
	setevent EVENT_GOT_JOHTO_LURE
	takeitem SUPER_ROD, 1
	giveitem SUPER_ROD_2
	setevent EVENT_SUPER_ROD_LURE_ACTIVE
	writetext OlivineGoodRodHouseFishingGuruText_GiveLure
	waitbutton
	closetext
	end

.Refused:
	writetext OlivineGoodRodHouseFishingGuruText_No
	waitbutton
	closetext
	end

.NoSwapLure:
	writetext OlivineGoodRodHouseFishingGuruText_SwapAnytime
	waitbutton
	closetext
	end

OlivineGoodRodHouseFishingGuruText_Intro:
	ntag "FISHERMAN:"
	text "I'm the JOHTO"
	line "FISHING GURU!"
	done

OlivineGoodRodHouseFishingGuruText_Question:
	ntag "FISHERMAN:"
	text "This is a great"
	line "fishing spot."

	para "Would you like one"
	line "of my RODs?"
	done

OlivineGoodRodHouseFishingGuruText_Yes:
	ntag "FISHERMAN:"
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

OlivineGoodRodHouseFishingGuruText_GiveSuperRod:
	ntag "FISHERMAN:"
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"
	cont "stream, try out"
	roll "your ROD."
	done

OlivineGoodRodHouseFishingGuruText_No:
	ntag "FISHERMAN:"
	text "Oh. That's too"
	line "bad…"
	done

OlivineGoodRodHouseFishingGuruText_After:
	ntag "FISHERMAN:"
	text "Yo, kid. How are"
	line "they biting?"
	done

OlivineGoodRodHouseFishingGuruText_OfferLure:
	ntag "FISHERMAN:"
	text "I have a special"
	line "lure that can hook"
	cont "exotic #MON in"
	roll "KANTO."

	para "Would you like to"
	line "borrow it?"
	done

OlivineGoodRodHouseFishingGuruText_AskTakeLure:
	ntag "FISHERMAN:"
	text "How are the #-"
	line "MON biting?"

	para "Do you want me to"
	line "take my special"
	cont "lure off of your"
	roll "SUPER ROD?"
	done

OlivineGoodRodHouseFishingGuruText_SwapAnytime:
	ntag "FISHERMAN:"
	text "If you change your"
	line "mind, just say so."

	para "I'll swap your"
	line "lure anytime!"
	done

OlivineGoodRodHouseFishingGuruText_GiveLure:
	ntag "FISHERMAN:"
	text "I'll put it on"
	line "your SUPER ROD."

	para "There. All set."

	para "If you ever want"
	line "me to take it off,"
	cont "just say so."
	done

OlivineGoodRodHouseFishingGuruText_ReturnLure:
	ntag "FISHERMAN:"
	text "I'll take it off"
	line "your SUPER ROD."

	para "There. All set."

	para "If you ever want"
	line "me to put it back"
	cont "on, just say so."
	done

OlivineGoodRodHouseFishingGuruText_HaveRod:
	ntag "FISHERMAN:"
	text "I have cousins in"
	line "KANTO, we're all"
	cont "avid fishermen."

	para "Have you met them?"
	done


OlivineGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivineGoodRodHouseFishingGuruScript, -1
