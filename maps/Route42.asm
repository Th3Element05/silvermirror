	object_const_def
	const ROUTE42_PNK_APRICORN
	const ROUTE42_GRN_APRICORN
	const ROUTE42_YLW_APRICORN
	const ROUTE42_CHUCK
	const ROUTE42_PRIMEAPE

Route42_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route42BouldersCallback
	callback MAPCALLBACK_OBJECTS, Route42Fruittrees

Route42BouldersCallback:
	checkevent EVENT_ROUTE_42_BOULDERS_CLEARED
	iftrue .End
	changeblock 50, 6, $0a ; boulder
	changeblock 52, 4, $0a ; boulder
;	changeblock 52, 6, $0a ; boulder
	changeblock 52, 8, $0a ; boulder
.End
	endcallback

Route42Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_42_FRUIT
	iftrue .NoFruit
	appear ROUTE42_PNK_APRICORN
	appear ROUTE42_GRN_APRICORN
	appear ROUTE42_YLW_APRICORN
.NoFruit:
	endcallback

; fruit
Route42_PNKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PNK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PNK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE42_PNK_APRICORN
	setflag ENGINE_DAILY_ROUTE_42_FRUIT
.NoRoomInBag
	closetext
	end

Route42_GRNApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, GRN_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem GRN_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE42_GRN_APRICORN
	setflag ENGINE_DAILY_ROUTE_42_FRUIT
.NoRoomInBag
	closetext
	end

Route42_YLWApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, YLW_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem YLW_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE42_YLW_APRICORN
	setflag ENGINE_DAILY_ROUTE_42_FRUIT
.NoRoomInBag
	closetext
	end

Route42_NoFruit:
	farsjump Std_NoFruitScript

;Route42ChuckClearsBouldersScript:
Route42ChuckScript:
	opentext
	writetext Route42ChuckTellRocksmashText
	promptbutton
	scall Route42PrimeapeScript
;	showemote EMOTE_SHOCK, PLAYER, 15 ;can't do emote due to PinkOverSilver palette
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
;	waitsfx
	applymovement ROUTE42_PRIMEAPE, Route42RockSmashMovement
	disappear ROUTE42_PRIMEAPE
	pause 10
	turnobject ROUTE42_CHUCK, RIGHT
	opentext
	writetext Route42ChuckFarewellText
	waitbutton
	closetext
	applymovement ROUTE42_CHUCK, Route42ChuckWalksAwayMovement
	disappear ROUTE42_CHUCK
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

Route42RockSmashMovement:
	rock_smash 10
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

; trainers
TrainerHikerAnthony:
	trainer HIKER, ANTHONY1, EVENT_BEAT_HIKER_ANTHONY, HikerAnthonySeenText, HikerAnthonyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerAnthonyAfterBattleText
	waitbutton
	closetext
	end

HikerAnthonySeenText:
	text "Ah, it's good to"
	line "be outside!"
	cont "I feel so free!"
	done

HikerAnthonyBeatenText:
	text "Gahahah!"
	done

HikerAnthonyAfterBattleText:
	text "Losing feels in-"
	line "significant if you"
	cont "look up at the big"
	cont "sky!"
	done

TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacZachAfterBattleText
	waitbutton
	closetext
	end

PokemaniacZachSeenText:
	text "HEY!"

	para "This is my secret"
	line "place! Get lost,"
	cont "you outsider!"
	done

PokemaniacZachBeatenText:
	text "This is still"
	line "my spot…"
	done

PokemaniacZachAfterBattleText:
	text "You're working on"
	line "a #DEX?"

	para "Wow, you must know"
	line "some pretty rare"
	cont "#MON!"

	para "May I please see"
	line "it. Please?"
	done

TrainerFisherBarney:
	trainer FISHER, BARNEY, EVENT_BEAT_FISHER_BARNEY, FisherBarneySeenText, FisherBarneyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherBarneyAfterBattleText
	waitbutton
	closetext
	end

FisherBarneySeenText:
	text "Let me demonstrate"
	line "the power of the"
	cont "#MON I caught!"
	done

FisherBarneyBeatenText:
	text "What? That's not"
	line "right."
	done

FisherBarneyAfterBattleText:
	text "I want to become"
	line "the trainer CHAMP"
	cont "using the #MON"
	cont "I caught."

	para "That's the best"
	line "part of fishing!"
	done

; npc
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

; bg text
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

; items
Route42HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROUTE_42_HIDDEN_MAX_POTION

;Route42UltraBall:
;	itemball ULTRA_BALL

Route42MaxPotion:
	itemball MAX_POTION

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
	bg_event 27, 15, BGEVENT_READ, Route42_NoFruit
	bg_event 28, 16, BGEVENT_READ, Route42_NoFruit
	bg_event 29, 15, BGEVENT_READ, Route42_NoFruit
	bg_event  4, 10, BGEVENT_READ, Route42Sign1
	bg_event  7,  5, BGEVENT_READ, MtMortarSign1
	bg_event 45,  9, BGEVENT_READ, MtMortarSign2
	bg_event 54,  8, BGEVENT_READ, Route42Sign2
	bg_event 16, 11, BGEVENT_ITEM, Route42HiddenMaxPotion

	def_object_events
	object_event 27, 15, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Route42_PNKApricorn, EVENT_ROUTE_42_PNK_APRICORN
	object_event 28, 16, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route42_GRNApricorn, EVENT_ROUTE_42_GRN_APRICORN
	object_event 29, 15, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route42_YLWApricorn, EVENT_ROUTE_42_YLW_APRICORN
	object_event 52,  6, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42ChuckScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 52,  7, SPRITE_PRIMEAPE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42PrimeapeScript, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 50, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42HikerScript, -1
	object_event 12,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerAnthony, -1 ;benjamin
	object_event 26, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacZach, -1 ;shane
	object_event 40, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherBarney, -1 ;tully
;	object_event  6,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42UltraBall, EVENT_ROUTE_42_ULTRA_BALL
	object_event 33,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route42MaxPotion, EVENT_ROUTE_42_MAX_POTION ;EVENT_ROUTE_42_SUPER_POTION
	object_event 54,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 53, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_ROUTE_42_BOULDERS_CLEARED
	object_event 50,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_CIANWOOD_GYM_TRAINERS
;	object_event 53,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route42Rock, EVENT_CIANWOOD_GYM_TRAINERS

;.PinkOverSilverOBPalette