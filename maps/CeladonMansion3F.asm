	object_const_def
	const CELADONMANSION3F_COOLTRAINER_M
	const CELADONMANSION3F_GYM_GUIDE
	const CELADONMANSION3F_SUPER_NERD
	const CELADONMANSION3F_FISHER

CeladonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

GameFreakGameDesignerScript:
	faceplayer
	opentext
	writetext GameFreakGameDesignerText
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 3 - 1, .CompletedPokedex ; -2 :ignore Mew and Celebi, -3 :also ignore missingno
	waitbutton
	closetext
	end

.CompletedPokedex:
	promptbutton
	writetext GameFreakGameDesignerCompletedPokedexText
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext GameFreakGameDesignerPauseForDiplomaText
	promptbutton
	special Diploma
	writetext GameFreakGameDesignerAfterDiplomaText
	waitbutton
	closetext
;	setevent EVENT_ENABLE_DIPLOMA_PRINTING
	end

GameFreakGameDesignerText:
	text "I'm the GAME"
	line "DESIGNER!"

	para "Filling up your"
	line "#DEX is tough,"
	cont "but don't give up!"
	done

GameFreakGameDesignerCompletedPokedexText:
	text "Wow! Excellent!"
	line "You completed your"
	cont "#DEX!"

;	para "Congratulations!"
;	done
	para "Here! You earned"
	line "this!"
	done

GameFreakGameDesignerPauseForDiplomaText:
	text "…"
	done

GameFreakGameDesignerAfterDiplomaText:
;	text "The GRAPHIC ARTIST"
;	line "will print out a"
;	cont "DIPLOMA for you."
;
;	para "You should go show"
;	line "it off."
;	done
	text "Congratulations!"
	done


GameFreakGraphicArtistScript:
	faceplayer
	opentext
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
;	iftrue .CanPrintDiploma
	writetext GameFreakGraphicArtistText
	waitbutton
	closetext
	end

;.CanPrintDiploma:
;	writetext GameFreakGraphicArtistPrintDiplomaText
;	yesorno
;	iffalse .Refused
;	special PrintDiploma
;	closetext
;	end
;
;.Refused:
;	writetext GameFreakGraphicArtistRefusedText
;	waitbutton
;	closetext
;	end
;
;.CancelPrinting: ; unreferenced
;	writetext GameFreakGraphicArtistErrorText
;	waitbutton
;	closetext
;	end

GameFreakGraphicArtistText:
	text "I'm the GRAPHIC"
	line "ARTIST."

	para "I drew you!"
	done

;GameFreakGraphicArtistPrintDiplomaText:
;	text "I'm the GRAPHIC"
;	line "ARTIST."
;
;	para "Oh, you completed"
;	line "your #DEX?"
;
;	para "Want me to print"
;	line "out your DIPLOMA?"
;	done

;GameFreakGraphicArtistRefusedText:
;	text "Give me a shout if"
;	line "you want your"
;	cont "DIPLOMA printed."
;	done

;GameFreakGraphicArtistErrorText:
;	text "Something's wrong."
;	line "I'll have to can-"
;	cont "cel printing."
;	done


GameFreakProgrammerScript:
	jumptextfaceplayer GameFreakProgrammerText
GameFreakProgrammerText:
	text "Who, me? I'm the"
	line "PROGRAMMER."

	para "Play the slot"
	line "machines!"
	done


GameFreakCharacterDesignerScript:
	jumptextfaceplayer GameFreakCharacterDesignerText
GameFreakCharacterDesignerText:
	text "I wrote the story!"
	line "Isn't ERIKA cute?"

	para "I like MISTY a"
	line "lot too!"

	para "Oh, and SABRINA,"
	line "I like her!"
	done


CeladonMansion3FDevRoomSign:
	jumptext CeladonMansion3FDevRoomSignText
CeladonMansion3FDevRoomSignText:
	text "GAME FREAK"
	line "DEVELOPMENT ROOM"
	done

CeladonMansion3FDrawing:
	jumptext CeladonMansion3FDrawingText
CeladonMansion3FDrawingText:
	text "It's a detailed"
	line "drawing of a"
	cont "pretty girl."
	done

CeladonMansion3FGameProgram:
	jumptext CeladonMansion3FGameProgramText
CeladonMansion3FGameProgramText:
	text "It's the game"
	line "program. Messing"
	cont "with it could put"
	roll "a bug in the game!"
	done

CeladonMansion3FReferenceMaterial:
	jumptext CeladonMansion3FReferenceMaterialText
CeladonMansion3FReferenceMaterialText:
	text "It's crammed with"
	line "reference materi-"
	cont "als. There's even"
	roll "a #DOLL."
	done


CeladonMansion3FGameProgram:
	jumptext CeladonMansion3FGameProgramText
;	opentext
;	writetext CeladonMansion3FGameProgramText
;	yesorno
;	iffalse .abort
;	writetext CeladonMansion3FAreYouSureText
;	yesorno
;	iffalse .abort
;	writetext CeladonMansion3FFinalWarningText
;	yesorno
;	iffalse .abort
;	callasm .FMessedWithGameCode
;.abort
;	closetext
;	end
;
;.FMessedWithGameCode:
;	farjump Init

CeladonMansion3FGameProgramText:
	text "It's the game"
	line "program. Messing"
	cont "with it could"
	roll "crash the game!"
	done

;	para "…"
;
;	para "Do you want to"
;	line "mess with it?"
;	done
;
;CeladonMansion3FAreYouSureText:
;	text "Are you absolutely"
;	line "sure you want to"
;	cont "mess with it?"
;	done
;
;CeladonMansion3FFinalWarningText:
;	text "Final warning."
;
;	para "Mess around with"
;	line "the code?"
;	done


CeladonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  0, CELADON_MANSION_ROOF, 1
	warp_event  3,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, CeladonMansion3FDevRoomSign
	bg_event  4,  3, BGEVENT_UP, CeladonMansion3FDrawing
	bg_event  1,  6, BGEVENT_UP, CeladonMansion3FGameProgram
	bg_event  1,  3, BGEVENT_UP, CeladonMansion3FReferenceMaterial

	def_object_events
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GameFreakGameDesignerScript, -1
	object_event  3,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakGraphicArtistScript, -1
	object_event  0,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GameFreakProgrammerScript, -1
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakCharacterDesignerScript, -1
