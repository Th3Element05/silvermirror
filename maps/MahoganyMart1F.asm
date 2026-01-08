	object_const_def
	const MAHOGANYMART1F_GRANNY

MahoganyMart1F_MapScripts:
	def_scene_scripts
	scene_script MahoganyMart1FNoopScene,  SCENE_MAHOGANYMART1F_NOOP
	scene_script MahoganyMart1FNinjaScene, SCENE_MAHOGANYMART1F_NINJA

	def_callbacks
;	callback MAPCALLBACK_TILES, MahoganyMart1FStaircaseCallback
	callback MAPCALLBACK_OBJECTS, MahoganyMart1FCheckDayOfWeekCallback

MahoganyMart1FNoopScene:
MahoganyMart1FNinjaScene:
	end

;MahoganyMart1FStaircaseCallback:
;	checkevent EVENT_UNCOVERED_STAIRCASE_IN_MAHOGANY_MART
;	iftrue .ShowStairs
;	endcallback
;
;.ShowStairs:
;	changeblock 6, 2, $28 ; stairs
;	endcallback

MahoganyMart1FCheckDayOfWeekCallback:
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .Weekend
	ifequal SUNDAY, .Weekend
;Weekday
	appear MAHOGANYMART1F_GRANNY
	endcallback
.Weekend
	disappear MAHOGANYMART1F_GRANNY
	endcallback

; scripts
MahoganyMartMerchantScript:
	faceplayer
	opentext
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .Closed
	ifequal SATURDAY, .Closed
	pokemart MARTTYPE_BITTER, MART_UNDERGROUND
	closetext
	end

.Closed:
	writetext MahoganyMartMerchantNotOpenText
	waitbutton
	closetext
	end

MahoganyMartMerchantNotOpenText:
	text "Sorry, we're not"
	line "open today."

	para "I need to get to"
	line "GOLDENROD."
	done


;hidden switch opens stairs
;if granny is there, she kicks you out
;this is the same granny from goldenrod underground
;she sells the same herbs
;she is not in the shop on the days/times she is in goldenrod underground
;(saturday/sunday)
;that is when you can reveal the stairs and enter the ninja hideout

;ninja clan used to be at brass tower
;have silver wing (and clear bell?)


;MahoganyMart1FSecretStairsScript:
;	end

MahoganyMart1FSecretStairsConditional:
	conditional_event EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8, .Proceed
.Proceed
	opentext
	writetext MahoganyMart1FSomethingHereText
	waitbutton
	closetext
	changeblock 6, 2, $28 ; stairs
	reloadmappart
	checkevent EVENT_MAHOGANY_MART_GRANNY
	iffalse .YouSawNothing

	;
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	end

.YouSawNothing
	showemote EMOTE_SHOCK, MAHOGANYMART1F_GRANNY, 15
	end




MahoganyMart1FSomethingHereText:
	text "There's something"
	line "here…"
	done





MahoganyMart1FSecretStairsItemfinderSpoof:
	hiddenitem ENERGYPOWDER, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8

MahoganyMart1FMural:
	jumptext MahoganyMart1FMuralText
MahoganyMart1FMuralText:
	text "It's a mural of"
	line "ECRUTEAK CITY."

	para "It shows the city"
	line "before BRASS TOWER"
	cont "burned down."

	para "The mural looks"
	line "very old."
	done

MahoganyMart1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MAHOGANY_TOWN, 1
	warp_event  5,  7, MAHOGANY_TOWN, 1
	warp_event  7,  3, TEAM_ROCKET_BASE_B1F, 1

	def_coord_events

	def_bg_events
;	bg_event  7,  3, BGEVENT_READ, MahoganyMart1FSecretStairsScript
	bg_event  7,  3, BGEVENT_IFNOTSET, MahoganyMart1FSecretStairsConditional
	bg_event  7,  3, BGEVENT_ITEM, MahoganyMart1FSecretStairsItemfinderSpoof
	bg_event  2,  0, BGEVENT_READ, MahoganyMart1FMural
	bg_event  3,  0, BGEVENT_READ, MahoganyMart1FMural

	def_object_events
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyMartMerchantScript, EVENT_MAHOGANY_MART_GRANNY
