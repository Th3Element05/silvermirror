	object_const_def
;	const GOLDENRODDEPTSTORE5F_RECEPTIONIST

GoldenrodDeptStore5F_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStore5FCheckIfSundayCallback
;
;GoldenrodDeptStore5FCheckIfSundayCallback:
;	readvar VAR_WEEKDAY
;	ifequal SUNDAY, .yes
;	disappear GOLDENRODDEPTSTORE5F_RECEPTIONIST
;	endcallback
;
;.yes
;	appear GOLDENRODDEPTSTORE5F_RECEPTIONIST
;	endcallback

GoldenrodDeptStore5FClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM64_SWAGGER
	iffalse .GiveSwagger
	pokemart MARTTYPE_STANDARD, MART_TMS_1
	closetext
	end

.GiveSwagger
	writetext GoldenrodDeptStore5FFreeTMText
	promptbutton
	verbosegiveitem TM_SWAGGER
	setevent EVENT_GOT_TM64_SWAGGER
	closetext
	end

GoldenrodDeptStore5FFreeTMText:
	text "Welcome to the"
	line "TM SHOP!"

	para "Its your lucky"
	line "day!"

	para "We aren't selling"
	line "this TM anymore,"
	cont "but I still have"
	roll "one left."

	para "You can have it!"
	done

Mike:
	faceplayer
	opentext
;	trade NPC_TRADE_MIKE
	waitbutton
	closetext
	end

GoldenrodDeptStore5FPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStore5FPokefanMText
GoldenrodDeptStore5FPokefanMText:
	text "You can't rename a"
	line "#MON you get in"
	cont "a trade."

	para "The name is a re-"
	line "flection of the"

	para "original trainer's"
	line "feelings for it."
	done

GoldenrodDeptStore5FDirectory:
	jumptext GoldenrodDeptStore5FDirectoryText
GoldenrodDeptStore5FDirectoryText:
	text "5F TM CORNER"

	para "Customize Your"
	line "#MON"
	done

GoldenrodDeptStore5FElevatorButton:
	jumpstd ElevatorButtonScript

;GoldenrodDeptStore5FReceptionistScript:
;	faceplayer
;	opentext
;	readvar VAR_WEEKDAY
;	ifnotequal SUNDAY, .EventIsOver
;	checkflag ENGINE_GOLDENROD_DEPT_STORE_TM71_RETURN
;	iftrue .EventIsOver
;	special GetFirstPokemonHappiness
;	writetext GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText
;	promptbutton
;	ifgreater 150 - 1, .VeryHappy
;	ifgreater 50 - 1, .SomewhatHappy
;	sjump .NotVeryHappy
;
;.VeryHappy:
;	writetext GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText
;	promptbutton
;	checkitem TM_RETURN
;	iftrue .AlreadyGotTM
;	verbosegiveitem TM_RETURN
;	setflag ENGINE_GOLDENROD_DEPT_STORE_TM71_RETURN
;	closetext
;	end
;
;.SomewhatHappy:
;	writetext GoldenrodDeptStore5FReceptionistItsAdorableText
;	waitbutton
;	closetext
;	end
;
;.NotVeryHappy:
;	writetext GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText
;	promptbutton
;	checkitem TM_FRUSTRATION
;	iftrue .AlreadyGotTM
;	verbosegiveitem TM_FRUSTRATION
;	setflag ENGINE_GOLDENROD_DEPT_STORE_TM71_RETURN
;	closetext
;	end
;
;.AlreadyGotTM:
;	writetext GoldenrodDeptStore5FAlreadyGotTMText
;	waitbutton
;	closetext
;	end
;
;.EventIsOver:
;	writetext GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText
;	waitbutton
;.Done:
;	closetext
;	end
;
;GoldenrodDeptStore5FReceptionistOhYourMonDotDotDotText:
;	text "Hello. Oh, your"
;	line "#MON…"
;	done
;
;GoldenrodDeptStore5FReceptionistThisMoveShouldBePerfectText:
;	text "It's very attached"
;	line "to you."
;
;	para "This move should"
;	line "be perfect for a"
;	cont "pair like you."
;	done
;
;GoldenrodDeptStore5FReceptionistItsAdorableText:
;	text "It's adorable!"
;
;	para "You should teach"
;	line "it good TM moves."
;	done
;
;GoldenrodDeptStore5FReceptionistItLooksEvilHowAboutThisTMText:
;	text "It looks evil. How"
;	line "about this TM for"
;	cont "it?"
;	done
;
;GoldenrodDeptStore5FReceptionistThereAreTMsPerfectForMonText:
;	text "There are sure to"
;	line "be TMs that are"
;
;	para "just perfect for"
;	line "your #MON."
;	done
;
;GoldenrodDeptStore5FAlreadyGotTMText:
;	text "Oh, you already"
;	line "have this TM…"
;	done

;GoldenrodDeptStore5FLassScript:
;	jumptextfaceplayer GoldenrodDeptStore5FLassText
;GoldenrodDeptStore5FLassText:
;	text "On Sundays, a lady"
;	line "comes to check out"
;	cont "#MON."
;
;	para "She even gives"
;	line "away TMs!"
;	done

;Carrie:
;	faceplayer
;	opentext
;	special GameboyCheck
;	ifnotequal GBCHECK_CGB, .NotGBC ; This is a dummy check from Gold/Silver
;	writetext GoldenrodDeptStore5FCarrieMysteryGiftExplanationText
;	waitbutton
;	closetext
;	special UnlockMysteryGift
;	end
;
;.NotGBC:
;	writetext GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText
;	waitbutton
;	closetext
;	end
;
;GoldenrodDeptStore5FCarrieMysteryGiftExplanationText:
;	text "MYSTERY GIFT."
;
;	para "With just a"
;	line "little beep, you"
;	cont "get a gift."
;	done
;
;GoldenrodDeptStore5FCarrieMysteryGiftRequiresGBCText:
;	text "The MYSTERY GIFT"
;	line "option requires a"
;	cont "Game Boy Color."
;	done

GoldenrodDeptStore5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 10,  0, GOLDENROD_DEPT_STORE_ROOF, 1
	warp_event 12,  0, GOLDENROD_DEPT_STORE_4F, 2


	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, GoldenrodDeptStore5FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore5FElevatorButton

	def_object_events
;	object_event  7,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FReceptionistScript, EVENT_GOLDENROD_DEPT_STORE_5F_HAPPINESS_EVENT_LADY
	object_event  4,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FClerkScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Mike, -1
	object_event 14,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FPokefanMScript, -1
;	object_event 14,  3, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore5FLassScript, -1
;	object_event  6,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Carrie, -1
