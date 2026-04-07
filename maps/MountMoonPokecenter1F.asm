	object_const_def

MountMoonPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MtMoonPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

MtMoonPokecenter1FReceptionistScript:
	jumpstd PokecenterReceptionistScript

MtMoonPokecenter1FBenchGuyScript:
	jumptext MtMoonPokecenter1FBenchGuyText
MtMoonPokecenter1FBenchGuyText:
	text "If you have too"
	line "many #MON, you"
	cont "should store them"
	roll "via PC!"
	done

MtMoonPokecenter1FYoungsterScript:
	jumptextfaceplayer MtMoonPokecenter1FYoungsterText
MtMoonPokecenter1FYoungsterText:
	text "I've 6 #BALLs"
	line "set in my belt."

	para "At most, you can"
	line "carry 6 #MON."
	done

MtMoonPokecenter1FGentlemanScript:
	jumptextfaceplayer MtMoonPokecenter1FGentlemanText
MtMoonPokecenter1FGentlemanText:
	text "TEAM ROCKET"
	line "attacks CERULEAN"
	cont "citizens…"

	para "TEAM ROCKET is"
	line "always in the"
	cont "news!"
	done

MtMoonPokecenter1FSalesmanScript:
	faceplayer
	opentext
	checkevent EVENT_BOUGHT_MAGIKARP
	iftrue .NoRefunds
	writetext MtMoonPokecenterSalesmanDealText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 500
	special PlaceMoneyTopRight
	writetext MtMoonPokecenterGotMagikarpText
	promptbutton
	givepoke MAGIKARP, 5
	setevent EVENT_BOUGHT_MAGIKARP
	; fallthrough
.NoRefunds
	writetext MtMoonPokecenterSalesmanNoRefundsText
	waitbutton
	closetext
	end

.Refused
	writetext MtMoonPokecenterSalesmanNoText
	waitbutton
	closetext
	end

.NotEnoughMoney
	writetext MtMoonPokecenterSalesmanNoMoneyText
	waitbutton
	closetext
	end

MtMoonPokecenterSalesmanDealText:
	text "Hello, there!"
	line "Have I got a deal"
	cont "just for you!"

	para "I'll let you have"
	line "a swell MAGIKARP"
	cont "for just ¥500!"
	roll "What do you say?"
	done

MtMoonPokecenterGotMagikarpText:
	text "<PLAYER> bought"
	line "a MAGIKARP!"
	done

MtMoonPokecenterSalesmanNoText:
	text "No? I'm only"
	line "doing this as a"
	cont "favor to you!"
	done

MtMoonPokecenterSalesmanNoMoneyText:
	text "You'll need more"
	line "money than that!"
	done

MtMoonPokecenterSalesmanNoRefundsText:
	text "I don't give"
	line "refunds!"
	done

MountMoonPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_3, 2
	warp_event  4,  7, ROUTE_3, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FNurseScript, -1
	object_event 11,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FReceptionistScript, -1
	object_event  0,  4, SPRITE_BENCH_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FBenchGuyScript, -1
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FYoungsterScript, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FGentlemanScript, -1
	object_event 10,  5, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FSalesmanScript, -1
	object_event  7,  2, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonPokecenter1FGentlemanScript, -1
