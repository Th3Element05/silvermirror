JackTriviaScript:
	random 9
	ifequal  0, .Thunder
	ifequal  1, .Rollout
	ifequal  2, .Solarbeam
	ifequal  3, .Stomp
	ifequal  4, .Earthquake
	ifequal  5, .Magnitude
	ifequal  6, .Sandstorm
	ifequal  7, .SunnyDay
	ifequal  8, .RainDance
;	ifequal  9, .Gust
;	ifequal 10, .Twister

.Thunder:
	farwritetext JackThunderTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Rollout:
	farwritetext JackRolloutTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Solarbeam:
	farwritetext JackSolarbeamTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Stomp:
	farwritetext JackStompTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

;.Gust:
;	farwritetext JackGustTriviaText
;	promptbutton
;	sjump PhoneScript_HangUpText_Male

;.Twister:
;	farwritetext JackTwisterTriviaText
;	promptbutton
;	sjump PhoneScript_HangUpText_Male

.Earthquake:
	farwritetext JackEarthquakeTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Magnitude:
	farwritetext JackMagnitudeTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.Sandstorm:
	farwritetext JackSandstormTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.SunnyDay:
	farwritetext JackSunnyDayTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male

.RainDance:
	farwritetext JackRainDanceTriviaText
	promptbutton
	sjump PhoneScript_HangUpText_Male
