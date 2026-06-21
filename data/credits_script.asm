CreditsScript:

; Clear the banner.
	db CREDITS_CLEAR

; Play the credits music.
	db CREDITS_MUSIC

	db CREDITS_WAIT2, 1

	db CREDITS_WAIT, 1

; Pokemon Silver Mirror Credits
	db        POKEMON_TITLE, 1
	db         SILVERMIRROR, 2

	db CREDITS_WAIT, 32

; Update the banner.
	db CREDITS_SCENE, 0 ; Pichu / Bulbasaur

	db         SILVERMIRROR, 0
	db          PROGRAMMERS, 1
	db          GAME_DESIGN, 2
;                          ; 3
	db         TH3ELEMENT05, 4
;                          ; 5
	db CREDITS_WAIT, 32

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 1 ; Smoochum / Charmander

	db         SILVERMIRROR, 0
	db      GRAPHICS_DESIGN, 1
;                          ; 2
	db         TH3ELEMENT05, 3
	db            SOURAPPLE, 4
;                          ; 5
	db CREDITS_WAIT, 32

;;
;; Clear the banner.
;	db CREDITS_CLEAR
;
;	db CREDITS_WAIT, 1
;
;; Update the banner.
;	db CREDITS_SCENE, 2 ; Ditto / Squirtle

	db         SILVERMIRROR, 0
	db    POKEMON_ANIMATION, 1
;                          ; 2
	db            SOURAPPLE, 3
;                          ; 4
;                          ; 5
	db CREDITS_WAIT, 32

;;
;; Clear the banner.
;	db CREDITS_CLEAR
;
;	db CREDITS_WAIT, 1
;
;; Update the banner.
;	db CREDITS_SCENE, 0 ; Pichu / Bulbasaur

	db         SILVERMIRROR, 0
	db           MAP_DESIGN, 1
;                          ; 2
	db         TH3ELEMENT05, 3
	db            SOURAPPLE, 4
;                          ; 5
	db CREDITS_WAIT, 32

;;
;; Clear the banner.
;	db CREDITS_CLEAR
;
;	db CREDITS_WAIT, 1
;
;; Update the banner.
;	db CREDITS_SCENE, 1 ; Smoochum / Charmander

	db         CONTRIBUTORS, 0
	db              RANGI42, 1
	db             NARISHMA, 2
	db     GRATEORACLELEWOT, 3
	db              ARDORIN, 4
;                          ; 5
	db CREDITS_WAIT, 24

	db           ASSISTANCE, 0
	db              RAJA239, 1
	db            DARKSHADE, 2
	db              SATOMEW, 3
	db                 TANU, 4
;                          ; 5
	db CREDITS_WAIT, 24

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 2 ; Ditto / Squirtle

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
;                          ; 2
;                          ; 3
;                          ; 4
	db               EXKZOL, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
;                          ; 2
;                          ; 3
	db               EXKZOL, 4
	db         BLEEPERWAGON, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
;                          ; 2
	db               EXKZOL, 3
	db         BLEEPERWAGON, 4
	db           GEOMETRY13, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db               EXKZOL, 2
	db         BLEEPERWAGON, 3
	db           GEOMETRY13, 4
	db          GREG_CREDIT, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db         BLEEPERWAGON, 2
	db           GEOMETRY13, 3
	db          GREG_CREDIT, 4
	db              SSENRAH, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db           GEOMETRY13, 2
	db          GREG_CREDIT, 3
	db              SSENRAH, 4
	db            KNIGHTOWL, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db          GREG_CREDIT, 2
	db              SSENRAH, 3
	db            KNIGHTOWL, 4
	db           TIGERBLOOD, 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db              SSENRAH, 2
	db            KNIGHTOWL, 3
	db           TIGERBLOOD, 4
;                          ; 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db            KNIGHTOWL, 2
	db           TIGERBLOOD, 3
;                          ; 4
;                          ; 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
	db           TIGERBLOOD, 2
;                          ; 3
;                          ; 4
;                          ; 5
	db CREDITS_WAIT, 8

	db         SILVERMIRROR, 0
	db      PRODUCT_TESTING, 1
;                          ; 2
;                          ; 3
;                          ; 4
;                          ; 5
	db CREDITS_WAIT, 8

;	db CREDITS_WAIT, 16

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Update the banner.
	db CREDITS_SCENE, 3 ; Igglybuff / Pikachu

	db       SPECIAL_THANKS, 0
;                          ; 1
	db        SOUR_SHOUTOUT, 2
;             SOUR_SHOUTOUT, 3
;             SOUR_SHOUTOUT, 4
;                          ; 5
	db CREDITS_WAIT, 32

	db               THANKS, 0
	db        PRET_SHOUTOUT, 1
;             PRET_SHOUTOUT, 2
;             PRET_SHOUTOUT, 3
;             PRET_SHOUTOUT, 4
;                          ; 5
	db CREDITS_WAIT, 48

	db            COPYRIGHT, 1

	db CREDITS_WAIT, 24

;
; Clear the banner.
	db CREDITS_CLEAR

	db CREDITS_WAIT, 1

; Display "The End" graphic.
	db CREDITS_THEEND

	db CREDITS_WAIT, 16

	db CREDITS_END
