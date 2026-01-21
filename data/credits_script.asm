CreditsScript:

; Clear the banner.
	db CREDITS_CLEAR

; Play the credits music.
	db CREDITS_MUSIC

	db CREDITS_WAIT2, 1

	db CREDITS_WAIT, 1

; Pokemon Silver Mirror Staff
;	db           GAME_TITLE, 1
	db        POKEMON_TITLE, 1
	db         SILVERMIRROR, 2

	db CREDITS_WAIT, 30

;
; Update the banner.
	db CREDITS_SCENE, 0 ; Pichu / Bulbasaur

	db         SILVERMIRROR, 0
	db          PROGRAMMERS, 1
	db         TH3ELEMENT05, 3

	db CREDITS_WAIT, 36

	db         SILVERMIRROR, 0
	db          GAME_DESIGN, 1
	db         TH3ELEMENT05, 3

	db CREDITS_WAIT, 36

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 1 ; Smoochum / Charmander

	db         SILVERMIRROR, 0
	db      GRAPHICS_DESIGN, 1
	db         TH3ELEMENT05, 3
	db            SOURAPPLE, 4

	db CREDITS_WAIT, 36

	db         SILVERMIRROR, 0
	db    POKEMON_ANIMATION, 1
	db            SOURAPPLE, 3

	db CREDITS_WAIT, 36

	db         SILVERMIRROR, 0
	db           MAP_DESIGN, 1
	db         TH3ELEMENT05, 3
	db            SOURAPPLE, 4

	db CREDITS_WAIT, 36

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 2 ; Ditto / Squirtle

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db         BLEEPERWAGON, 3
	db               EXKZOL, 4

	db CREDITS_WAIT, 36

	db               CODING, 0
	db              RAJA239, 2
	db              ARDORIN, 3

	db CREDITS_WAIT, 36

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 3 ; Igglybuff / Pikachu

	db       SPECIAL_THANKS, 0
	db             SHOUTOUT, 1

	db CREDITS_WAIT, 64

	db          SOURCRYSTAL, 0
	db              CREATOR, 1
	db            SOURAPPLE, 3

	db CREDITS_WAIT, 36

	db          SOURCRYSTAL, 0
	db         CONTRIBUTORS, 1
	db          RANGI_PFERO, 3
	db       VULCANDTH_ZUMI, 4
;	db                RANGI, 2
;	db            VULCANDTH, 3
;	db                PFERO, 4
;	db                 ZUMI, 5

	db CREDITS_WAIT, 36

	db            COPYRIGHT, 1

	db CREDITS_WAIT, 20

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Display "The End" graphic.
	db CREDITS_THEEND

	db CREDITS_WAIT, 20

	db CREDITS_END
