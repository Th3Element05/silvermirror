DanaAnswerPhoneText:
DanaAnswerPhoneDayText:
	text "Hi, @"
	text_ram wStringBuffer3
	text " on the"
	line "line."

	para "Hey! <PLAYER>!"
	done

;DanaAnswerPhoneDayText:
;	text "Hi, @"
;	text_ram wStringBuffer3
;	text " on the"
;	line "line."
;
;	para "I know!"
;	line "It's <PLAYER>!"
;	done

DanaAnswerPhoneNiteText:
	text "Hi, @"
	text_ram wStringBuffer3
	text " on the"
	line "line."

	para "<PLAYER>?"
	line "What's up?"
	done

DanaGreetText:
DanaGreetDayText:
DanaGreetNiteText:
	text "Uh, <PLAYER>?"

	para "It's me!"
	line "It's me, @"
	text_ram wStringBuffer3
	text "!"
	done

;DanaGreetDayText:
;	text "Uh, <PLAYER>?"
;
;	para "It's me!"
;	line "It's me, @"
;	text_ram wStringBuffer3
;	text "!"
;	done

;DanaGreetNiteText:
;	text "Uh, <PLAYER>?"
;
;	para "It's me!"
;	line "It's me, @"
;	text_ram wStringBuffer3
;	text "!"
;	done

DanaGenericText:
	text "My NIDORINA is"
;	text "My @"
;	text_ram wStringBuffer4
;	text " is"
	line "so full of energy,"
	cont "it's a little"
	roll "scary."

	para "How are your"
	line "#MON doing?"
	done
