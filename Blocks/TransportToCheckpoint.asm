;Behaves $025

incsrc "../WarpToCheckPointDefines/Defines.asm"

db $42 ; or db $37
JMP MarioBelow : JMP MarioAbove : JMP MarioSide
JMP SpriteV : JMP SpriteH : JMP MarioCape : JMP MarioFireball
JMP TopCorner : JMP BodyInside : JMP HeadInside
; JMP WallFeet : JMP WallBody ; when using db $37

MarioBelow:
MarioAbove:
MarioSide:
TopCorner:
BodyInside:
HeadInside:
;WallFeet:	; when using db $37
;WallBody:
	LDA !Freeram_WarpToLastCheckpoint_Status		;\Don't run this every frame while touching.
	BNE +							;/
	LDA.b #!WarpToLastCheckpoint_AnimationDuration
	STA !Freeram_WarpToLastCheckpoint_Status
	+
SpriteV:
SpriteH:

MarioCape:
MarioFireball:
	RTL

print "Sets the player's checkpoint to this location."