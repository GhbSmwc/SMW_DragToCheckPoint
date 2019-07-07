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
	REP #$20
	LDA $9A
	AND #$FFF0
	STA !Freeram_WarpToLastCheckpoint_LastXPos
	LDA $98
	AND #$FFF0
	CLC
	ADC #$0020
	STA !Freeram_WarpToLastCheckpoint_LastYPos
	SEP #$20

SpriteV:
SpriteH:

MarioCape:
MarioFireball:
	RTL

print "Sets the player's checkpoint to this location."