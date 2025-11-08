	object_const_def

Route32Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route32Pokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

Route32Pokecenter1FFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_JOHTO_LURE
	iftrue .SwapLure
	writetext Route32Pokecenter1FFishingGuruText_Intro
	promptbutton
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
; don't have super rod yet
	writetext Route32Pokecenter1FFishingGuruText_Question
	yesorno
	iffalse .Refused
	writetext Route32Pokecenter1FFishingGuruText_Yes
	promptbutton
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .GiveSuperRod
	verbosegiveitem SUPER_ROD_2
	setevent EVENT_GOT_SUPER_ROD
	writetext Route32Pokecenter1FFishingGuruText_GiveSuperRod
	waitbutton
	closetext
	end

.GotSuperRod:
	checkflag ENGINE_CHALLENGE_MODE_ACTIVE
	iffalse .OfferLure
	writetext Route32Pokecenter1FFishingGuruText_HaveRod
	waitbutton
	closetext
	end

.SwapLure:
	checkevent EVENT_SUPER_ROD_LURE_ACTIVE
	iffalse .OfferLure
	writetext Route32Pokecenter1FFishingGuruText_AskTakeLure
	yesorno
	iffalse .NoSwapLure
	giveitem SUPER_ROD
	takeitem SUPER_ROD_2, 1
	clearevent EVENT_SUPER_ROD_LURE_ACTIVE
	writetext Route32Pokecenter1FFishingGuruText_ReturnLure
	waitbutton
	closetext
	end

.GiveSuperRod:
	verbosegiveitem SUPER_ROD
	setevent EVENT_GOT_SUPER_ROD
	writetext Route32Pokecenter1FFishingGuruText_GiveSuperRod
	promptbutton
	; fallthrough
.OfferLure:
	writetext Route32Pokecenter1FFishingGuruText_OfferLure
	yesorno
	iffalse .NoSwapLure
	setevent EVENT_GOT_JOHTO_LURE
	giveitem SUPER_ROD_2
	takeitem SUPER_ROD, 1
	setevent EVENT_SUPER_ROD_LURE_ACTIVE
	writetext Route32Pokecenter1FFishingGuruText_GiveLure
	waitbutton
	closetext
	end

.Refused:
	writetext Route32Pokecenter1FFishingGuruText_No
	waitbutton
	closetext
	end

.NoSwapLure:
	writetext Route32Pokecenter1FFishingGuruText_SwapAnytime
	waitbutton
	closetext
	end

Route32Pokecenter1FFishingGuruText_Intro:
	text "I'm the JOHTO"
	line "FISHING GURU!"
	done

Route32Pokecenter1FFishingGuruText_Question:
	text "This is a great"
	line "fishing spot."

	para "Would you like one"
	line "of my RODS?"
	done

Route32Pokecenter1FFishingGuruText_Yes:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

Route32Pokecenter1FFishingGuruText_GiveSuperRod:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"
	cont "stream, try out"
	cont "your ROD."
	done

Route32Pokecenter1FFishingGuruText_No:
	text "Oh. That's too"
	line "bad…"
	done

Route32Pokecenter1FFishingGuruText_After:
	text "Yo, kid. How are"
	line "they biting?"
	done

Route32Pokecenter1FFishingGuruText_OfferLure:
	text "I have a special"
	line "lure that can hook"
	cont "exotic #MON in"
	cont "KANTO."

	para "Would you like to"
	line "borrow it?"
	done

Route32Pokecenter1FFishingGuruText_AskTakeLure:
	text "How are the #-"
	line "MON biting?"

	para "Do you want me to"
	line "take my special"
	cont "lure off of your"
	cont "SUPER ROD?"
	done

Route32Pokecenter1FFishingGuruText_SwapAnytime:
	text "If you change your"
	line "mind, just say so."

	para "I'll swap your"
	line "lure anytime!"
	done

Route32Pokecenter1FFishingGuruText_GiveLure:
	text "I'll put it on"
	line "your SUPER ROD."

	para "There. All set."

	para "If you ever want"
	line "me to take it off,"
	cont "just say so."
	done

Route32Pokecenter1FFishingGuruText_ReturnLure:
	text "I'll take it off"
	line "your SUPER ROD."

	para "There. All set."

	para "If you ever want"
	line "me to put it back"
	cont "on, just say so."
	done

Route32Pokecenter1FFishingGuruText_HaveRod:
	text "I have cousins in"
	line "KANTO, we're all"
	cont "avid fishermen."

	para "Have you met them?"
	done

Route32Pokecenter1FCooltrainerFScript:
	jumptextfaceplayer Route32Pokecenter1FCooltrainerFText
Route32Pokecenter1FCooltrainerFText:
	text "What should I make"
	line "my #MON hold?"

	para "Maybe an item that"
	line "increases ATTACK"
	cont "power…"
	done

Route32Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_32, 1
	warp_event  4,  7, ROUTE_32, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FFishingGuruScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FCooltrainerFScript, -1
