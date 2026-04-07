	object_const_def
	const ROUTE29_ORAN_BERRY
;	const ROUTE29_CAL
;	const ROUTE29_TUSCANY

Route29_MapScripts:
	def_scene_scripts
;	scene_script Route29Noop1Scene, SCENE_ROUTE29_CAL_ENCOUNTER
;	scene_script Route29Noop2Scene, SCENE_ROUTE29_NOOP

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route29FruittreesandTuscany

Route29FruittreesandTuscany:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_29_FRUIT
	iftrue .Tuscany
	appear ROUTE29_ORAN_BERRY
	; fallthrough
.Tuscany:
;	readvar VAR_WEEKDAY
;	ifequal TUESDAY, .TuscanyAppears
;	disappear ROUTE29_TUSCANY
	endcallback

;.TuscanyAppears:
;	appear ROUTE29_TUSCANY
;	endcallback

;Route29Noop1Scene:
;Route29Noop2Scene:
;	end

; fruit
Route29_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE29_ORAN_BERRY
	setflag ENGINE_DAILY_ROUTE_29_FRUIT
.NoRoomInBag
	closetext
	end

Route29_NoFruit:
	farsjump Std_NoFruitScript

;TuscanyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_SILK_SCARF_FROM_TUSCANY
;	iftrue TuscanyTuesdayScript
;	readvar VAR_WEEKDAY
;	ifnotequal TUESDAY, TuscanyNotTuesdayScript
;	checkevent EVENT_MET_TUSCANY_OF_TUESDAY
;	iftrue .MetTuscany
;	writetext MeetTuscanyText
;	promptbutton
;	setevent EVENT_MET_TUSCANY_OF_TUESDAY
;.MetTuscany:
;	writetext TuscanyGivesGiftText
;	promptbutton
;	verbosegiveitem SILK_SCARF
;	iffalse TuscanyDoneScript
;	setevent EVENT_GOT_SILK_SCARF_FROM_TUSCANY
;	writetext TuscanyGaveGiftText
;	waitbutton
;	closetext
;	end

;TuscanyTuesdayScript:
;	writetext TuscanyTuesdayText
;	waitbutton
;TuscanyDoneScript:
;	closetext
;	end

;TuscanyNotTuesdayScript:
;	writetext TuscanyNotTuesdayText
;	waitbutton
;	closetext
;	end

;MeetTuscanyText:
;	text "TUSCANY: I do be-"
;	line "lieve that this is"
;
;	para "the first time"
;	line "we've met?"
;
;	para "Please allow me to"
;	line "introduce myself."
;
;	para "I am TUSCANY of"
;	line "Tuesday."
;	done

;TuscanyGivesGiftText:
;	text "By way of intro-"
;	line "duction, please"
;
;	para "accept this gift,"
;	line "a PINK BOW."
;	done

;TuscanyGaveGiftText:
;	text "TUSCANY: Wouldn't"
;	line "you agree that it"
;	cont "is most adorable?"
;
;	para "It strengthens"
;	line "normal-type moves."
;
;	para "I am certain it"
;	line "will be of use."
;	done

;TuscanyTuesdayText:
;	text "TUSCANY: Have you"
;	line "met MONICA, my"
;	cont "older sister?"
;
;	para "Or my younger"
;	line "brother, WESLEY?"
;
;	para "I am the second of"
;	line "seven children."
;	done

;TuscanyNotTuesdayText:
;	text "TUSCANY: Today is"
;	line "not Tuesday. That"
;	cont "is unfortunate…"
;	done

; scripts
;Route29Cal1:
;	showemote EMOTE_SHOCK, ROUTE29_CAL, 15
;	applymovement ROUTE29_CAL, Route29CalApproachesMovement1
;	turnobject PLAYER, LEFT
;	sjump Route29CalScript
;
;Route29Cal2:
;	showemote EMOTE_SHOCK, ROUTE29_CAL, 15
;	applymovement ROUTE29_CAL, Route29CalApproachesMovement2
;	turnobject PLAYER, LEFT
;;	sjump Route29CalScript
;	; fallthrough
;
;Route29CalScript:
;	setlasttalked ROUTE29_CAL
;	faceplayer
;	opentext
;	playmusic MUSIC_TRAINER_ENCOUNTER ; MUSIC_OFFICER_ENCOUNTER
;	writetext Route29CalSeenText
;	waitbutton
;	closetext
;	winlosstext Route29CalBeatenText, 0
;	loadtrainer CAL, CAL3
;	startbattle
;	reloadmapafterbattle
;	opentext
;	writetext Route29CalAfterText
;	waitbutton
;	closetext
;	setevent EVENT_BEAT_ROUTE_29_CAL
;	special FadeBlackQuickly
;	special ReloadSpritesNoPalettes
;	disappear ROUTE29_CAL
;	playsound SFX_ESCAPE_ROPE
;	waitsfx
;	special FadeInQuickly
;	setscene SCENE_ROUTE29_NOOP
;;	playmapmusic
;	end

;Route29CalSeenText:
;	text "<……>"
;;	text "I traveled out"
;;	line "here just so I"
;;	cont "could battle you."
;	done

;Route29CalBeatenText:
;	text "<……>"
;;	text "I lost…"
;;	line "Darn…"
;	done

;Route29CalAfterText:
;	text "<……>"
;;	text "Next time!"
;	done

;Route29CalApproachesMovement1:
;	step UP
;Route29CalApproachesMovement2:
;	step UP
;	step UP
;	step UP
;	step RIGHT
;	step RIGHT
;	step_end

; trainers
TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	checktime NITE
	iftrue .nite
	writetext PokemaniacZachAfterTextDay
	waitbutton
	closetext
	end

.nite
	writetext PokemaniacZachAfterTextNite
	waitbutton
	closetext
	end

PokemaniacZachSeenText:
	text "You're working on"
	line "a #DEX?"

	para "Wow, you must know"
	line "some pretty rare"
	cont "#MON!"

	para "May I please see"
	line "it. Please?"
	done

PokemaniacZachBeatenText:
	text "You've got strong"
	line "#MON!"
	done

PokemaniacZachAfterTextDay:
	text "I'm waiting for"
	line "#MON that only"
	cont "come out at night."
	done

PokemaniacZachAfterTextNite:
	text "I'm waiting for"
	line "#MON that only"
	cont "appear during the"
	roll "daytime."
	done


TrainerTeacherShirley:
	trainer TEACHER, SHIRLEY, EVENT_BEAT_TEACHER_SHIRLEY, TeacherShirleySeenText, TeacherShirleyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TeacherShirleyAfterBattleText
	waitbutton
	closetext
	end

TeacherShirleySeenText:
	text "You look like you"
	line "need to be taught"
	cont "a lesson."
	done

TeacherShirleyBeatenText:
	text "I got schooled."
	done

TeacherShirleyAfterBattleText:
	text "See those ledges?"
	line "It's scary to jump"
	cont "off them."

	para "But you can go to"
	line "NEW BARK without"
	cont "walking through"
	roll "the grass."
	done

TrainerSuperNerdMerle:
	trainer SUPER_NERD, MERLE, EVENT_BEAT_SUPER_NERD_MERLE, SuperNerdMerleSeenText, SuperNerdMerleBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdMerleAfterBattleText
	waitbutton
	closetext
	end

SuperNerdMerleSeenText:
	text "I hope your #-"
	line "MON are ready for"
	cont "a battle!"
	done

SuperNerdMerleBeatenText:
	text "I thought I was"
	line "ready."
	done

SuperNerdMerleAfterBattleText:
	text "If your #MON"
	line "aren't ready for"
	cont "battle, keep out"
	roll "of the grass."
	done

; bg text
Route29Sign:
	jumptext Route29SignText
Route29SignText:
	text "ROUTE 29"

	para "CHERRYGROVE CITY -"
	line "NEW BARK TOWN"
	done

; itemballs
Route29Potion:
	itemball POTION

Route29_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  1, ROUTE_29_ROUTE_46_GATE, 3

	def_coord_events
;	coord_event 53,  8, SCENE_ROUTE29_CAL_ENCOUNTER, Route29Cal1
;	coord_event 53,  9, SCENE_ROUTE29_CAL_ENCOUNTER, Route29Cal2

	def_bg_events
	bg_event 12,  2, BGEVENT_READ, Route29_NoFruit
	bg_event 51,  7, BGEVENT_READ, Route29Sign
	bg_event  3,  5, BGEVENT_READ, Route29Sign

	def_object_events
	object_event 12,  2, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route29_OranBerry, EVENT_ROUTE_29_ORAN_BERRY
;	object_event 50, 12, SPRITE_CAL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, Route29CalScript, EVENT_BEAT_ROUTE_29_CAL
;	object_event 29, 12, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TuscanyScript, EVENT_ROUTE_29_TUSCANY_OF_TUESDAY
	object_event 25,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacZach, -1
	object_event  7, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerTeacherShirley, -1
	object_event 31, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 1, TrainerSuperNerdMerle, -1
	object_event 48,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route29Potion, EVENT_ROUTE_29_POTION

; MORN | DAY | EVE | NITE