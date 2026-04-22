	object_const_def
	const ROUTE35_LEPPA_BERRY
	const ROUTE35_GRN_APRICORN

Route35_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route35Fruittrees

Route35Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_35_FRUIT
	iftrue .NoFruit
	appear ROUTE35_LEPPA_BERRY
	appear ROUTE35_GRN_APRICORN
.NoFruit:
	endcallback

Route35_LeppaBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LEPPA_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LEPPA_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE35_LEPPA_BERRY
	setflag ENGINE_DAILY_ROUTE_35_FRUIT
.NoRoomInBag
	closetext
	end

Route35_GRNApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, GRN_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE35_GRN_APRICORN
	setflag ENGINE_DAILY_ROUTE_35_FRUIT
.NoRoomInBag
	closetext
	end

Route35_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerOfficerDirk:
	faceplayer
	opentext
	checktime NITE
	iffalse .NotNight
	checkevent EVENT_BEAT_OFFICER_DIRK
	iftrue .AfterBattle
	playmusic MUSIC_TRAINER_ENCOUNTER ; MUSIC_OFFICER_ENCOUNTER
	writetext OfficerDirkSeenText
	waitbutton
	closetext
	winlosstext OfficerDirkBeatenText, 0
	loadtrainer OFFICER, DIRK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICER_DIRK
	closetext
	end

.AfterBattle:
	writetext OfficerDirkAfterBattleText
	waitbutton
	closetext
	end

.NotNight:
	writetext OfficerDirkPrettyToughText
	waitbutton
	closetext
	end

OfficerDirkSeenText:
	text "Danger lurks in"
	line "the night!"
	done

OfficerDirkBeatenText:
	text "Whoops!"
	done

OfficerDirkAfterBattleText:
	text "You know, night-"
	line "time is fun in its"
	cont "own ways."

	para "But don't overdo"
	line "it, OK?"
	done

OfficerDirkPrettyToughText:
	text "Your #MON look"
	line "pretty tough."

	para "You could go any-"
	line "where safely."
	done

TrainerBugCatcherDarin:
	trainer BUG_CATCHER, DARIN, EVENT_BEAT_BUG_CATCHER_DARIN, BugCatcherDarinSeenText, BugCatcherDarinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDarinAfterBattleText
	waitbutton
	closetext
	end

BugCatcherDarinSeenText:
	text "I'll go anywhere"
	line "if bug #MON"
	cont "appear there."
	done

BugCatcherDarinBeatenText:
	text "Huh? I shouldn't"
	line "have lost that…"
	done

BugCatcherDarinAfterBattleText:
	text "My VENOMOTH won"
	line "the Bug-Catching"
	cont "Contest at the"
	roll "NATIONAL PARK."
	done

TrainerFirebreatherWalt:
	trainer FIREBREATHER, WALT1, EVENT_BEAT_FIREBREATHER_WALT, FirebreatherWaltSeenText, FirebreatherWaltBeatenText, 0, .Script
.Script:
	loadvar VAR_CALLERID, PHONE_FIREBREATHER_WALT
	opentext
	checkflag ENGINE_WALT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FIREBREATHER_WALT
	iftrue .WaltDefeated
	checkevent EVENT_WALT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FirebreatherWaltAfterBattleText
	promptbutton
	setevent EVENT_WALT_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	jump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FIREBREATHER_WALT
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, FIREBREATHER, WALT1
	scall Route35RegisteredNumberM
	jump Route35NumberAcceptedM

.WantsBattle:
	scall Route35RematchM
	winlosstext FirebreatherWaltBeatenText, 0
;	checkevent EVENT_RESTORED_POWER_TO_KANTO
;	iftrue .LoadFight5
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .LoadFight4
	checkflag ENGINE_FLYPOINT_BLACKTHORN ;checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight3
;	checkflag ENGINE_FLYPOINT_CIANWOOD
;	iftrue .LoadFight2
;	loadtrainer FIREBREATHER, WALT1
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_WALT_READY_FOR_REMATCH
;	end
;
;.LoadFight2:
	loadtrainer FIREBREATHER, WALT_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer FIREBREATHER, WALT_0
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_WALT_READY_FOR_REMATCH
	end

;.LoadFight4:
;	loadtrainer FIREBREATHER, WALT4
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_WALT_READY_FOR_REMATCH
;	end

;.LoadFight5:
;	loadtrainer FIREBREATHER, WALT5
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_WALT_READY_FOR_REMATCH
;	end

.WaltDefeated:
	writetext FirebreatherWaltAfterBattleText
	promptbutton
	closetext
	end

FirebreatherWaltSeenText:
	text "I'm practicing my"
	line "fire breathing."
	done

FirebreatherWaltBeatenText:
	text "Ow! I scorched the"
	line "tip of my nose!"
	done

FirebreatherWaltAfterBattleText:
	text "The #MON March"
	line "on the radio lures"
	cont "wild #MON."
	done

TrainerJugglerIrwin:
	trainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwinSeenText, JugglerIrwinBeatenText, 0, .Script
.Script:
	loadvar VAR_CALLERID, PHONE_JUGGLER_IRWIN
	opentext
	checkcellnum PHONE_JUGGLER_IRWIN
	iftrue .IrwinDefeated
	checkevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext JugglerIrwinAfterBattleText
	promptbutton
	setevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	jump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_JUGGLER_IRWIN
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	scall Route35RegisteredNumberM
	jump Route35NumberAcceptedM

.IrwinDefeated:
	writetext JugglerIrwinAfterBattleText
	promptbutton
	closetext
	end

JugglerIrwinSeenText:
	text "Behold my graceful"
	line "BALL dexterity!"
	done

JugglerIrwinBeatenText:
	text "Whew! That was a"
	line "jolt!"
	done

JugglerIrwinAfterBattleText:
	text "I was going to"
	line "dazzle you with"
	cont "my prize #MON."

	para "But your prowess"
	line "electrified me!"
	done

TrainerCamperGrant:
	trainer CAMPER, GRANT, EVENT_BEAT_CAMPER_GRANT, CamperGrantSeenText, CamperGrantBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperGrantAfterBattleText
	waitbutton
	closetext
	end

CamperGrantSeenText:
	text "I've been getting"
	line "#MON data from"
	cont "the radio."
	cont "I think I'm good."
	done

CamperGrantBeatenText:
	text "I give!"
	done

CamperGrantAfterBattleText:
	text "Music on the radio"
	line "changes the moods"
	cont "of wild #MON."
	done

TrainerCoupleMoeAndLulu_Lulu:
	trainer COUPLE, MOEANDLULU, EVENT_BEAT_COUPLE_MOEANDLULU, CoupleMoeAndLulu_LuluSeenText, CoupleMoeAndLulu_LuluBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoupleMoeAndLulu_LuluAfterBattleText
	waitbutton
	closetext
	end

CoupleMoeAndLulu_LuluSeenText:
	text "My boyfriend's"
	line "weak, so I can't"
	cont "rely on him."
	done

CoupleMoeAndLulu_LuluBeatenText:
	ntag "LULU:"
	text "Oh, my!"
	line "You're so strong!"
	done

CoupleMoeAndLulu_LuluAfterBattleText:
	text "I can count on my"
	line "#MON more than"
	cont "my boyfriend."
	done

TrainerCoupleMoeAndLulu_Moe:
	trainer COUPLE, MOEANDLULU, EVENT_BEAT_COUPLE_MOEANDLULU, CoupleMoeAndLulu_MoeSeenText, CoupleMoeAndLulu_MoeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoupleMoeAndLulu_MoeAfterBattleText
	waitbutton
	closetext
	end

CoupleMoeAndLulu_MoeSeenText:
	text "I'm gonna show my"
	line "girlfriend I'm hot"
	cont "stuff!"
	done

CoupleMoeAndLulu_MoeBeatenText:
	ntag "MOE:"
	text "I wish you would"
	line "have lost for me…"
	done

CoupleMoeAndLulu_MoeAfterBattleText:
	text "I was humiliated"
	line "in front of my"
	cont "girlfriend…"
	done




TrainerPicnickerDawn:
	trainer PICNICKER, DAWN, EVENT_BEAT_PICNICKER_DAWN, PicnickerDawnSeenText, PicnickerDawnBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerDawnAfterBattleText
	waitbutton
	closetext
	end

PicnickerDawnSeenText:
	text "Are you going to"
	line "the GYM? Me too!"
	done

PicnickerDawnBeatenText:
	text "Oh. I couldn't"
	line "win…"
	done

PicnickerDawnAfterBattleText:
	text "The GYM BADGEs are"
	line "pretty. I collect"
	cont "them."
	done

TrainerBirdKeeperNate:
	trainer BIRD_KEEPER, NATE, EVENT_BEAT_BIRD_KEEPER_NATE, BirdKeeperNateSeenText, BirdKeeperNateBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperNateAfterBattleText
	waitbutton
	closetext
	end

BirdKeeperNateSeenText:
	text "What kinds of"
	line "BALLs do you use?"
	done

BirdKeeperNateBeatenText:
	text "Yikes! Not fast"
	line "enough!"
	done

BirdKeeperNateAfterBattleText:
	text "Some #MON flee"
	line "right away."

	para "Try catching them"
	line "with KURT's FAST"
	cont "BALL."

	para "Whenever I find a"
	line "WHT APRICORN, I"
	cont "take it to KURT"
	cont "in AZALEA TOWN."

	para "He turns it into a"
	line "custom BALL."
	done

Route35AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route35AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route35RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route35NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route35NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route35PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route35RematchM:
	jumpstd RematchMScript
	end

Route35Sign:
	jumptext Route35SignText
Route35SignText:
	text "ROUTE 35"
	done

;Route35TMRollout:
;	itemball TM_ROLLOUT

Route35_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 10, 33, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  3,  5, ROUTE_35_NATIONAL_PARK_GATE, 3

	def_coord_events

	def_bg_events
	bg_event  2, 26, BGEVENT_READ, Route35_NoFruit
	bg_event  1, 25, BGEVENT_READ, Route35_NoFruit
	bg_event  1,  7, BGEVENT_READ, Route35Sign
	bg_event 11, 31, BGEVENT_READ, Route35Sign

	def_object_events
	object_event  2, 26, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route35_LeppaBerry, EVENT_ROUTE_35_LEPPA_BERRY
	object_event  1, 25, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35_GRNApricorn, EVENT_ROUTE_35_GRN_APRICORN
	object_event  5,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerOfficerDirk, -1 ;dirk
	object_event 16,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDarin, -1 ;arnie
	object_event  2, 10, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherWalt, -1 ;walt
	object_event  5, 10, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerIrwin, -1 ;irwin
	object_event  4, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperGrant, -1 ;ivan
	object_event  7, 20, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCoupleMoeAndLulu_Lulu, -1 ;picnicker brooke
	object_event  8, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCoupleMoeAndLulu_Moe, -1 ;camper elliot
	object_event 10, 26, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerDawn, -1 ;kim
	object_event 14, 28, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBirdKeeperNate, -1 ;bryan
;	object_event 13, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route35TMRollout, EVENT_ROUTE_35_TM_ROLLOUT
