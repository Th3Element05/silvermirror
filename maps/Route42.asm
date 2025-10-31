	object_const_def
	const ROUTE_42_APRICORN
	const ROUTE_42_APRICORN_2
	const ROUTE_42_APRICORN_3
	const ROUTE_42_CHUCK
	const ROUTE_42_PRIMEAPE

Route42_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route42Fruittrees
	callback MAPCALLBACK_TILES, Route42BouldersCallback

Route42Fruittrees:
.Apricorn:
	checkflag ENGINE_DAILY_ROUTE_42_APRICORN
	iftrue .NoApricorn
	appear ROUTE_42_APRICORN
.NoApricorn:
	;fallthrough

.APRICORN_2:
	checkflag ENGINE_DAILY_ROUTE_42_APRICORN_2
	iftrue .NoAPRICORN_2
	appear ROUTE_42_APRICORN_2
.NoAPRICORN_2:
	;fallthrough

.APRICORN_3:
	checkflag ENGINE_DAILY_ROUTE_42_APRICORN_3
	iftrue .NoAPRICORN_3
	appear ROUTE_42_APRICORN_3
.NoAPRICORN_3:
	endcallback

Route42BouldersCallback:
	checkevent EVENT_ROUTE_42_BOULDERS_CLEARED
	iftrue .End
	changeblock 50, 6, $0a ; boulder
;	changeblock 52, 4, $0a ; boulder
;	changeblock 52, 6, $0a ; boulder
	changeblock 52, 8, $0a ; boulder
.End
	endcallback

Route42HikerScript:
	checkevent EVENT_ROUTE_42_BOULDERS_CLEARED
	iftrue .HikerBouldersCleared
	jumptextfaceplayer Route42HikerBlockedText

.HikerBouldersCleared
	jumptextfaceplayer Route42HikerClearedText

Route42HikerBlockedText:
	text "Oh no! How am I"
	line "going to get to"
	cont "MAHOGANY TOWN?"

	para "I'll need to go"
	line "through DARK CAVE"
	cont "on ROUTE 30."

	para "But I'm afraid of"
	line "the dark!"
	done

Route42HikerClearedText:
	text "Aha! The boulders"
	line "are all smashed!"

	para "Now I don't need"
	line "to go through that"
	cont "DARK CAVE!"
	done

;Route42ChuckClearsBouldersScript:
Route42ChuckScript:
	opentext
	writetext Route42ChuckTellRocksmashText
	promptbutton
	scall Route42PrimeapeScript
	showemote EMOTE_SHOCK, PLAYER, 15
	earthquake 50
	playsound SFX_STRENGTH
	waitsfx
	changeblock 52, 8, $aa ; ground
	reloadmappart
	pause 20
	opentext
	writetext Route42ChuckWellDoneText
	promptbutton
	closetext
	playsound SFX_BALL_POOF
	waitsfx
	disappear ROUTE_42_PRIMEAPE
	pause 10
	turnobject ROUTE_42_CHUCK, RIGHT
	opentext
	writetext Route42ChuckFarewellText
	waitbutton
	closetext
	applymovement ROUTE_42_CHUCK, Route42ChuckWalksAwayMovement
	disappear ROUTE_42_CHUCK
	setevent EVENT_ROUTE_42_BOULDERS_CLEARED
	clearevent EVENT_CIANWOOD_GYM_TRAINERS
	end

Route42ChuckTellRocksmashText:
	text "CHUCK: Great work"
	line "so far, PRIMEAPE!"

	para "One more! Make it"
	line "a big one!"

	para "Use ROCK SMASH!"
	done

Route42ChuckWellDoneText:
	text "WAHAHAH!"
	line "Well done!"

	para "You deserve a"
	line "rest, PRIMEAPE!"

	para "Return!"
	done

Route42ChuckFarewellText:
	text "That's it! The"
	line "path is clear!"

	para "I should get back"
	line "to CIANWOOD CITY!"

	para "I am the GYM"
	line "LEADER there!"

	para "You look like a"
	line "tough trainer!"

	para "You should come"
	line "challenge my GYM!"

	para "My #MON love"
	line "crushing rocks!"

	para "But they love"
	line "crushing strong"
	cont "#MON more!"

	para "WAHAHAH!"
	done

Route42ChuckWalksAwayMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route42PrimeapeScript:
	opentext
	writetext Route42PrimeapeText
	cry PRIMEAPE
	waitbutton
	closetext
	end

Route42PrimeapeText:
	text "PRIMEAPE: Prruh!"
	line "Prruh! Priii!"
	done

;TrainerFisherTully:
;	trainer FISHER, TULLY1, EVENT_BEAT_FISHER_TULLY, FisherTullySeenText, FisherTullyBeatenText, 0, .Script
;.Script:
;	loadvar VAR_CALLERID, PHONE_FISHER_TULLY
;	opentext
;	checkflag ENGINE_TULLY_READY_FOR_REMATCH
;	iftrue .WantsBattle
;	checkflag ENGINE_TULLY_HAS_WATER_STONE
;	iftrue .HasWaterStone
;	checkcellnum PHONE_FISHER_TULLY
;	iftrue .TullyDefeated
;	checkevent EVENT_TULLY_ASKED_FOR_PHONE_NUMBER
;	iftrue .AskedAlready
;	writetext FisherTullyAfterBattleText
;	promptbutton
;	setevent EVENT_TULLY_ASKED_FOR_PHONE_NUMBER
;	scall .AskNumber1
;	sjump .AskForNumber
;
;.AskedAlready:
;	scall .AskNumber2
;.AskForNumber:
;	askforphonenumber PHONE_FISHER_TULLY
;	ifequal PHONE_CONTACTS_FULL, .PhoneFull
;	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
;	gettrainername STRING_BUFFER_3, FISHER, TULLY1
;	scall .RegisteredNumber
;	sjump .NumberAccepted
;
;.WantsBattle:
;	scall .Rematch
;	winlosstext FisherTullyBeatenText, 0
;	checkevent EVENT_RESTORED_POWER_TO_KANTO
;	iftrue .LoadFight3
;	checkevent EVENT_BEAT_ELITE_FOUR
;	iftrue .LoadFight2
;	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
;	iftrue .LoadFight1
;	loadtrainer FISHER, TULLY1
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_TULLY_READY_FOR_REMATCH
;	end
;
;.LoadFight1:
;	loadtrainer FISHER, TULLY2
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_TULLY_READY_FOR_REMATCH
;	end
;
;.LoadFight2:
;	loadtrainer FISHER, TULLY3
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_TULLY_READY_FOR_REMATCH
;	end
;
;.LoadFight3:
;	loadtrainer FISHER, TULLY4
;	startbattle
;	reloadmapafterbattle
;	clearflag ENGINE_TULLY_READY_FOR_REMATCH
;	end
;
;.HasWaterStone:
;	scall .Gift
;	verbosegiveitem WATER_STONE
;	iffalse .NoRoom
;	clearflag ENGINE_TULLY_HAS_WATER_STONE
;	setevent ENGINE_TULLY_GAVE_WATER_STONE
;	sjump .NumberAccepted
;
;.NoRoom:
;	sjump .PackFull
;
;.AskNumber1:
;	jumpstd AskNumber1MScript
;	end
;
;.AskNumber2:
;	jumpstd AskNumber2MScript
;	end
;
;.RegisteredNumber:
;	jumpstd RegisteredNumberMScript
;	end
;
;.NumberAccepted:
;	jumpstd NumberAcceptedMScript
;	end
;
;.NumberDeclined:
;	jumpstd NumberDeclinedMScript
;	end
;
;.PhoneFull:
;	jumpstd PhoneFullMScript
;	end
;
;.Rematch:
;	jumpstd RematchMScript
;	end
;
;.Gift:
;	jumpstd GiftMScript
;	end
;
;.PackFull:
;	jumpstd PackFullMScript
;	end
;
;.TullyDefeated:
;	writetext FisherTullyAfterBattleText
;	promptbutton
;	closetext
;	end
;
;FisherTullySeenText:
;	text "Let me demonstrate"
;	line "the power of the"
;	cont "#MON I caught!"
;	done
;
;FisherTullyBeatenText:
;	text "What? That's not"
;	line "right."
;	done
;
;FisherTullyAfterBattleText:
;	text "I want to become"
;	line "the trainer CHAMP"
;
;	para "using the #MON"
;	line "I caught."
;
;	para "That's the best"
;	line "part of fishing!"
;	done



;TrainerPokemaniacShane:
;	trainer POKEMANIAC, SHANE, EVENT_BEAT_POKEMANIAC_SHANE, PokemaniacShaneSeenText, PokemaniacShaneBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacShaneAfterBattleText
;	waitbutton
;	closetext
;	end
;
;PokemaniacShaneSeenText:
;	text "HEY!"
;
;	para "This is my secret"
;	line "place! Get lost,"
;	cont "you outsider!"
;	done
;
;PokemaniacShaneBeatenText:
;	text "I should have used"
;	line "my MOON STONE…"
;	done
;
;PokemaniacShaneAfterBattleText:
;	text "You're working on"
;	line "a #DEX?"
;
;	para "Wow, you must know"
;	line "some pretty rare"
;	cont "#MON!"
;
;	para "May I please see"
;	line "it. Please?"
;	done



;TrainerHikerBenjamin:
;	trainer HIKER, BENJAMIN, EVENT_BEAT_HIKER_BENJAMIN, HikerBenjaminSeenText, HikerBenjaminBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext HikerBenjaminAfterBattleText
;	waitbutton
;	closetext
;	end
;
;HikerBenjaminSeenText:
;	text "Ah, it's good to"
;	line "be outside!"
;	cont "I feel so free!"
;	done
;
;HikerBenjaminBeatenText:
;	text "Gahahah!"
;	done
;
;HikerBenjaminAfterBattleText:
;	text "Losing feels in-"
;	line "significant if you"
;
;	para "look up at the big"
;	line "sky!"
;	done


Route42Sign1:
Route42Sign2:
	jumptext Route42SignText
Route42SignText:
	text "ROUTE 42"

	para "ECRUTEAK CITY -"
	line "MAHOGANY TOWN"
	done

MtMortarSign1:
	jumptext MtMortarSign1Text
MtMortarSign1Text:
	text "MT.MORTAR"

	para "WATERFALL CAVE"
	line "INSIDE"
	done

MtMortarSign2:
	jumptext MtMortarSign2Text
MtMortarSign2Text:
	text "MT.MORTAR"

	para "WATERFALL CAVE"
	line "INSIDE"
	done

Route42HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROUTE_42_HIDDEN_MAX_POTION

;Route42UltraBall:
;	itemball ULTRA_BALL

;Route42SuperPotion:
;	itemball SUPER_POTION

Route42ApricornTree:
	opentext
	writetext Route42ApricornTreeText
	promptbutton
	writetext Route42HeyItsApricornText
	promptbutton
	verbosegiveitem PNK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_42_APRICORN
	setflag ENGINE_DAILY_ROUTE_42_APRICORN
.NoRoomInBag
	closetext
	end

Route42APRICORN_2Tree:
	opentext
	writetext Route42ApricornTreeText
	promptbutton
	writetext Route42HeyItsAPRICORN_2Text
	promptbutton
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_42_APRICORN_2
	setflag ENGINE_DAILY_ROUTE_42_APRICORN_2
.NoRoomInBag
	closetext
	end

Route42APRICORN_3Tree:
	opentext
	writetext Route42ApricornTreeText
	promptbutton
	writetext Route42HeyItsAPRICORN_3Text
	promptbutton
	verbosegiveitem YLW_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_42_APRICORN_3
	setflag ENGINE_DAILY_ROUTE_42_APRICORN_3
.NoRoomInBag
	closetext
	end

Route42NoApricorn:
	opentext
	writetext Route42ApricornTreeText
	promptbutton
	writetext Route42NothingHereText
	waitbutton
	closetext
	end

Route42ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route42HeyItsApricornText:
	text "Hey! It's"
	line "PNK APRICORN!"
	done

Route42HeyItsAPRICORN_2Text:
	text "Hey! It's"
	line "GRN APRICORN!"
	done

Route42HeyItsAPRICORN_3Text:
	text "Hey! It's"
	line "YLW APRICORN!"
	done

Route42NothingHereText:
	text "There's nothing"
	line "here…"
	done

Route42Rock:
	jumpstd SmashRockScript

Route42_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  8, ROUTE_42_ECRUTEAK_GATE, 3
	warp_event  0,  9, ROUTE_42_ECRUTEAK_GATE, 4
	warp_event 10,  5, MOUNT_MORTAR_1F_OUTSIDE, 1
	warp_event 28,  9, MOUNT_MORTAR_1F_OUTSIDE, 2
	warp_event 46,  7, MOUNT_MORTAR_1F_OUTSIDE, 3

	def_coord_events

	def_bg_events
	bg_event  4, 10, BGEVENT_READ, Route42Sign1
	bg_event  7,  5, BGEVENT_READ, MtMortarSign1
	bg_event 45,  9, BGEVENT_READ, MtMortarSign2
	bg_event 54,  8, BGEVENT_READ, Route42Sign2
	bg_event 16, 11, BGEVENT_ITEM, Route42HiddenMaxPotion
	bg_event 27, 16, BGEVENT_READ, Route42NoApricorn
	bg_event 28, 16, BGEVENT_READ, Route42NoApricorn
	bg_event 29, 16, BGEVENT_READ, Route42NoApricorn

	def_object_events
	object_event 27, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42ApricornTree, EVENT_ROUTE_42_APRICORN
	object_event 28, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route42APRICORN_2Tree, EVENT_ROUTE_42_APRICORN_2
	object_event 29, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, Route42APRICORN_3Tree, EVENT_ROUTE_42_APRICORN_3
	object_event 52,  6, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42ChuckScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 52,  7, SPRITE_PRIMEAPE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42PrimeapeScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 50, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42HikerScript, -1
;
;	object_event 40, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherTully, -1
;	object_event 51,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerBenjamin, -1
;	object_event 47,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacShane, -1
;
;	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42UltraBall, EVENT_ROUTE_42_ULTRA_BALL
;	object_event 33,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42SuperPotion, EVENT_ROUTE_42_SUPER_POTION
;	object_event 53,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_CIANWOOD_GYM_TRAINERS
	object_event 54,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, -1 ;EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 50,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_CIANWOOD_GYM_TRAINERS
	object_event 53, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, -1
