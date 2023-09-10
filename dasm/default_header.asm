	processor 6502

	org $0801	; ORG $0801 (2049). The BASIC program is expected to start here

	.byte	$0B,$08,$0A,$00,$9E,$32,$30,$36,$31,$00,$00,$00		; Header to run from BASIC. MC starts as $080D
			;$0B08 = Address where BASIC program would begin
			;$0A01 = Little endian for $000A (266 decimal). Arbitrary line number for the SYS command below
			;$9E = "SYS" command in BASIC
			;$32,$30,$36,$31 = "2","0","6","1" (PETSCII coded) needed for the SYS2061 BASIC command to run the MC

	jmp _start	; jump to start of code - this command is at location $080D

_start:
	lda #$00
	brk