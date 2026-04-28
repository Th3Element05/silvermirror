ParryNothingCanMatchText:
	text "Nothing can match"
	line "my @"
	text_ram wStringBuffer4
	text " now."
	done

ParryDefeatedMonText:
	text "Yeah, we KO'd a"
	line "wild @"
	text_ram wStringBuffer4
	text "!"

	para "That was OK, but I"
	line "wanted to get it…"
	done

ParryLostAMonText:
	text "And yesterday, we"
	line "spotted a wild"
	cont "@"
	text_ram wStringBuffer4
	text "."
	roll "We were debating"

	cont "whether to catch"
	roll "it or beat it."

	para "When along came"
	line "another guy who"
	cont "caught it!"
	roll "How about that!"
	done

ParryBattleRematchText:
	text "You're thinking"
	line "you'd like to"
	cont "battle me. Am I"
	roll "right or what?"

	para "Yep! We'll meet on"
	line "@"
	text_ram wStringBuffer5
	text "!"
	done

ParryHangUpText:
	text "OK, give me a call"
	line "again!"
	done

ParryBattleWithMeText:
	text "You'll battle with"
	line "me again, right?"
	done

ParryReminderText:
	text "Haven't you gotten"
	line "to @"
	text_ram wStringBuffer5
	text "?"

	para "Waiting here isn't"
	line "bad, but I'd sure"
	cont "like to battle!"
	done
