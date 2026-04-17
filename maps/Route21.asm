	object_const_def

Route21_MapScripts:
	def_scene_scripts

	def_callbacks


TrainerFisherJonah:
	trainer FISHER, JONAH, EVENT_BEAT_FISHER_JONAH, FisherJonahSeenText, FisherJonahBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherJonahAfterBattleText
	waitbutton
	closetext
	end

FisherJonahSeenText:
	text "You want to know"
	line "if the fish are"
	cont "biting?"
	done

FisherJonahBeatenText:
	text "Dang!"
	done

FisherJonahAfterBattleText:
	text "I can't catch"
	line "anything good!"
	done


TrainerFisherKyle:
	trainer FISHER, KYLE1, EVENT_BEAT_FISHER_KYLE, FisherKyleSeenText, FisherKyleBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext FisherKyleAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_FISHER_KYLE
	opentext
	checkflag ENGINE_KYLE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FISHER_KYLE
	iftrue .KyleDefeated
	checkevent EVENT_KYLE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext FisherKyleAfterBattleText
	promptbutton
	setevent EVENT_KYLE_ASKED_FOR_PHONE_NUMBER
	scall Route20AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route20AskNumber2
.AskForNumber:
	askforphonenumber PHONE_FISHER_KYLE
	ifequal PHONE_CONTACTS_FULL, Route20PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route20NumberDeclined
	gettrainername STRING_BUFFER_3, FISHER, KYLE1
	scall Route20RegisteredNumber
	jump Route20NumberAccepted

.WantsBattle:
	scall Route20Rematch
	winlosstext FisherKyleBeatenText, 0
	loadtrainer FISHER, KYLE_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer FISHER, KYLE1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_KYLE_READY_FOR_REMATCH
	end

.KyleDefeated:
	writetext FisherKyleAfterBattleText
	promptbutton
	closetext
	end

;Route20AskNumber1:
;	jumpstd AskNumber1MScript
;	end
;
;Route20AskNumber2:
;	jumpstd AskNumber2MScript
;	end
;
;Route20RegisteredNumber:
;	jumpstd RegisteredNumberMScript
;	end
;
;Route20NumberAccepted:
;	jumpstd NumberAcceptedMScript
;	end
;
;Route20NumberDeclined:
;	jumpstd NumberDeclinedMScript
;	end
;
;Route20PhoneFull:
;	jumpstd PhoneFullMScript
;	end
;
;Route20Rematch:
;	jumpstd RematchMScript
;	end

FisherKyleSeenText:
	text "I got a big haul!"
	line "Wanna go for it?"
	done

FisherKyleBeatenText:
	text "Darn"
	line "MAGIKARP!"
	done

FisherKyleAfterBattleText:
	text "I seem to only"
	line "catch MAGIKARP!"
	done


TrainerSwimmerMSeth:
	trainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmerMSethSeenText, SwimmerMSethBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMSethAfterBattleText
	waitbutton
	closetext
	end

SwimmerMSethSeenText:
	text "I'm new at"
	line "swimming!"
	done

SwimmerMSethBeatenText:
	text "I need more"
	line "practice!"
	done

SwimmerMSethAfterBattleText:
	text "I look like what?"
	line "I need an inner"
	cont "tube? Get lost!"
	done


TrainerSwimmerMLewis:
	trainer SWIMMERM, LEWIS, EVENT_BEAT_SWIMMERM_LEWIS, SwimmerMLewisSeenText, SwimmerMLewisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMLewisAfterBattleText
	waitbutton
	closetext
	end

SwimmerMLewisSeenText:
	text "The sea cleanses"
	line "my body and soul!"
	done

SwimmerMLewisBeatenText:
	text "Ayah!"
	done

SwimmerMLewisAfterBattleText:
	text "I like the"
	line "mountains too!"
	done


TrainerFisherMartin:
	trainer FISHER, MARTIN, EVENT_BEAT_FISHER_MARTIN, FisherMartinSeenText, FisherMartinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherMartinAfterBattleText
	waitbutton
	closetext
	end

FisherMartinSeenText:
	text "Hey, don't scare"
	line "away the fish!"
	done

FisherMartinBeatenText:
	text "Sorry!"
	line "I didn't mean it!"
	done

FisherMartinAfterBattleText:
	text "I was just angry"
	line "that I couldn't"
	cont "catch anything."
	done


TrainerFisherStephen:
	trainer FISHER, STEPHEN, EVENT_BEAT_FISHER_STEPHEN, FisherStephenSeenText, FisherStephenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherStephenAfterBattleText
	waitbutton
	closetext
	end

FisherStephenSeenText:
	text "Keep me company"
	line "'til I get a hit!"
	done

FisherStephenBeatenText:
	text "That burned some"
	line "time."
	done

FisherStephenAfterBattleText:
	text "Oh wait! I got a"
	line "bite! Yeah!"
	done


TrainerSwimmerMHal:
	trainer SWIMMERM, HAL, EVENT_BEAT_SWIMMERM_HAL, SwimmerMHalSeenText, SwimmerMHalBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMHalAfterBattleText
	waitbutton
	closetext
	end

SwimmerMHalSeenText:
	text "I caught all my"
	line "#MON at sea!"
	done

SwimmerMHalBeatenText:
	text "Diver!!"
	line "Down!!"
	done

SwimmerMHalAfterBattleText:
	text "Where'd you catch"
	line "your #MON?"
	done


TrainerSwimmerMPaton:
	trainer SWIMMERM, PATON, EVENT_BEAT_SWIMMERM_PATON, SwimmerMPatonSeenText, SwimmerMPatonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMPatonAfterBattleText
	waitbutton
	closetext
	end

SwimmerMPatonSeenText:
	text "Right now, I'm in"
	line "a triathlon meet!"
	done

SwimmerMPatonBeatenText:
	text "Pant…"
	line "pant… pant…"
	done

SwimmerMPatonAfterBattleText:
	text "I'm beat!"
	line "But, I still have"
	cont "the bike race and"
	roll "marathon left!"
	done


TrainerSwimmerMBrandon:
	trainer SWIMMERM, BRANDON, EVENT_BEAT_SWIMMERM_BRANDON, SwimmerMBrandonSeenText, SwimmerMBrandonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerMBrandonAfterBattleText
	waitbutton
	closetext
	end

SwimmerMBrandonSeenText:
	text "Ahh! Feel the sun"
	line "and the wind!"
	done

SwimmerMBrandonBeatenText:
	text "Yow!"
	line "I lost!"
	done

SwimmerMBrandonAfterBattleText:
	text "I'm sunburnt to a"
	line "crisp!"
	done


Route21_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 24, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherJonah, -1
	object_event  6, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherKyle, -1
	object_event 12, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMSeth, -1
	object_event 10, 31, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMLewis, -1
	object_event 12, 40, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherMartin, -1
	object_event 15, 41, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherStephen, -1
	object_event 14, 45, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMHal, -1
	object_event  5, 51, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMPaton, -1
	object_event 13, 52, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmerMBrandon, -1
