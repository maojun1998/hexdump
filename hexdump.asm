; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.21022.08 

	TITLE	C:\Users\maojun\Desktop\hexdump\hexdump.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_copyright
_BSS	SEGMENT
?j@?1??show_queue@@9@9 DD 01H DUP (?)			; `show_queue'::`2'::j
_BSS	ENDS
_DATA	SEGMENT
$SG4503	DB	0aH, 'The program was written by Hacking.', 0aH, 'Report '
	DB	'bug or havea good ideal,please sent Email to maojun@whatsmath'
	DB	'.cn', 0aH, 'You can use the source code anytime.', 0aH, 0aH, 00H
_copyright DD	FLAT:$SG4503
$SG4539	DB	'%s', 00H
	ORG $+1
$SG4542	DB	'rb+', 00H
$SG4543	DB	'No such file "%s" or open fail.', 0aH, 00H
	ORG $+3
$SG4552	DB	0aH, 09H, 09H, 'Please put ENTER KEY to continue', 0a1H, 0adH
	DB	0aH, 00H
	ORG $+1
$SG4553	DB	'%c', 00H
	ORG $+1
$SG4582	DB	'%s', 00H
	ORG $+1
$SG4583	DB	'  ', 00H
	ORG $+1
$SG4587	DB	'  ', 00H
	ORG $+1
$SG4593	DB	0aH, 00H
	ORG $+2
$SG4619	DB	0aH, 00H
	ORG $+2
$SG4620	DB	'&&', 00H
	ORG $+1
$SG4622	DB	'%s', 00H
	ORG $+1
$SG4623	DB	'&&', 00H
	ORG $+1
$SG4624	DB	0aH, 00H
_DATA	ENDS
PUBLIC	_show_format_text
PUBLIC	_scanf_queue
PUBLIC	_main
EXTRN	_free:PROC
EXTRN	_fopen:PROC
EXTRN	_printf:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_fp$ = -8						; size = 4
_p$ = -4						; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC
; File c:\users\maojun\desktop\hexdump\hexdump.c
; Line 36
	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
; Line 40
	cmp	DWORD PTR _argc$[ebp], 2
	jge	SHORT $LN2@main
; Line 41
	mov	eax, DWORD PTR _copyright
	push	eax
	push	OFFSET $SG4539
	call	_printf
	add	esp, 8
; Line 42
	xor	eax, eax
	jmp	SHORT $LN3@main
$LN2@main:
; Line 45
	push	OFFSET $SG4542
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	call	_fopen
	add	esp, 8
	mov	DWORD PTR _fp$[ebp], eax
	cmp	DWORD PTR _fp$[ebp], 0
	jne	SHORT $LN1@main
; Line 46
	mov	eax, DWORD PTR _argv$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	push	OFFSET $SG4543
	call	_printf
	add	esp, 8
; Line 47
	xor	eax, eax
	jmp	SHORT $LN3@main
$LN1@main:
; Line 50
	mov	edx, DWORD PTR _fp$[ebp]
	push	edx
	call	_scanf_queue
	add	esp, 4
	mov	DWORD PTR _p$[ebp], eax
; Line 51
	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	call	_show_format_text
	add	esp, 4
; Line 52
	mov	ecx, DWORD PTR _p$[ebp]
	push	ecx
	call	_free
	add	esp, 4
; Line 57
	xor	eax, eax
$LN3@main:
; Line 58
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
PUBLIC	_show_queue
EXTRN	_fflush:PROC
EXTRN	___iob_func:PROC
EXTRN	_scanf:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_optition$ = -4						; size = 4
_p$ = 8							; size = 4
_show_format_text PROC
; Line 61
	push	ebp
	mov	ebp, esp
	push	ecx
$LN2@show_forma:
; Line 63
	cmp	DWORD PTR _p$[ebp], 0
	je	SHORT $LN3@show_forma
; Line 64
	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	call	_show_queue
	add	esp, 4
	mov	DWORD PTR _p$[ebp], eax
; Line 65
	push	OFFSET $SG4552
	call	_printf
	add	esp, 4
; Line 66
	lea	ecx, DWORD PTR _optition$[ebp]
	push	ecx
	push	OFFSET $SG4553
	call	_scanf
	add	esp, 8
; Line 67
	call	___iob_func
	push	eax
	call	_fflush
	add	esp, 4
; Line 68
	jmp	SHORT $LN2@show_forma
$LN3@show_forma:
; Line 69
	mov	esp, ebp
	pop	ebp
	ret	0
_show_format_text ENDP
_TEXT	ENDS
PUBLIC	_hex_to_string
EXTRN	_malloc:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_queue$ = -8						; size = 4
_temp$ = -2						; size = 1
_i$ = -1						; size = 1
_hex_number$ = 8					; size = 4
_hex_to_string PROC
; Line 72
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 73
	push	9
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _queue$[ebp], eax
; Line 74
	mov	BYTE PTR _i$[ebp], 0
; Line 77
	mov	eax, DWORD PTR _queue$[ebp]
	mov	BYTE PTR [eax+8], 0
$LN7@hex_to_str:
; Line 79
	cmp	DWORD PTR _hex_number$[ebp], 0
	jle	SHORT $LN6@hex_to_str
; Line 80
	mov	ecx, DWORD PTR _hex_number$[ebp]
	and	ecx, -2147483633			; 8000000fH
	jns	SHORT $LN10@hex_to_str
	dec	ecx
	or	ecx, -16				; fffffff0H
	inc	ecx
$LN10@hex_to_str:
	mov	BYTE PTR _temp$[ebp], cl
	movsx	edx, BYTE PTR _temp$[ebp]
	cmp	edx, 9
	jle	SHORT $LN5@hex_to_str
; Line 81
	movsx	eax, BYTE PTR _temp$[ebp]
	add	eax, 55					; 00000037H
	mov	ecx, DWORD PTR _queue$[ebp]
	add	ecx, 7
	movsx	edx, BYTE PTR _i$[ebp]
	sub	ecx, edx
	mov	BYTE PTR [ecx], al
; Line 82
	jmp	SHORT $LN4@hex_to_str
$LN5@hex_to_str:
; Line 83
	movsx	eax, BYTE PTR _temp$[ebp]
	add	eax, 48					; 00000030H
	mov	ecx, DWORD PTR _queue$[ebp]
	add	ecx, 7
	movsx	edx, BYTE PTR _i$[ebp]
	sub	ecx, edx
	mov	BYTE PTR [ecx], al
$LN4@hex_to_str:
; Line 85
	mov	eax, DWORD PTR _hex_number$[ebp]
	cdq
	and	edx, 15					; 0000000fH
	add	eax, edx
	sar	eax, 4
	mov	DWORD PTR _hex_number$[ebp], eax
; Line 86
	mov	al, BYTE PTR _i$[ebp]
	add	al, 1
	mov	BYTE PTR _i$[ebp], al
; Line 88
	jmp	SHORT $LN7@hex_to_str
$LN6@hex_to_str:
; Line 89
	jmp	SHORT $LN3@hex_to_str
$LN2@hex_to_str:
	mov	cl, BYTE PTR _i$[ebp]
	add	cl, 1
	mov	BYTE PTR _i$[ebp], cl
$LN3@hex_to_str:
	movsx	edx, BYTE PTR _i$[ebp]
	cmp	edx, 8
	jge	SHORT $LN1@hex_to_str
; Line 90
	mov	eax, DWORD PTR _queue$[ebp]
	add	eax, 7
	movsx	ecx, BYTE PTR _i$[ebp]
	sub	eax, ecx
	mov	BYTE PTR [eax], 48			; 00000030H
; Line 91
	jmp	SHORT $LN2@hex_to_str
$LN1@hex_to_str:
; Line 93
	mov	eax, DWORD PTR _queue$[ebp]
; Line 94
	mov	esp, ebp
	pop	ebp
	ret	0
_hex_to_string ENDP
_TEXT	ENDS
PUBLIC	_dw_hex_to_string
EXTRN	_putchar:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
tv75 = -17						; size = 1
_string$ = -16						; size = 4
_temp$ = -12						; size = 4
_i$ = -8						; size = 4
_h$ = -4						; size = 4
_p$ = 8							; size = 4
_show_queue PROC
; Line 97
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
; Line 98
	mov	eax, DWORD PTR _p$[ebp]
	mov	DWORD PTR _temp$[ebp], eax
; Line 101
	mov	DWORD PTR _h$[ebp], 0
$LN8@show_queue:
; Line 104
	cmp	DWORD PTR _temp$[ebp], 0
	je	$LN7@show_queue
	cmp	DWORD PTR _h$[ebp], 32			; 00000020H
	jge	$LN7@show_queue
; Line 105
	mov	ecx, DWORD PTR ?j@?1??show_queue@@9@9
	push	ecx
	call	_hex_to_string
	add	esp, 4
	push	eax
	push	OFFSET $SG4582
	call	_printf
	add	esp, 8
; Line 106
	push	OFFSET $SG4583
	call	_printf
	add	esp, 4
; Line 108
	mov	DWORD PTR _i$[ebp], 0
$LN6@show_queue:
; Line 109
	cmp	DWORD PTR _i$[ebp], 16			; 00000010H
	jge	SHORT $LN5@show_queue
; Line 110
	mov	edx, DWORD PTR _temp$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR tv75[ebp], al
	movzx	ecx, BYTE PTR tv75[ebp]
	push	ecx
	call	_dw_hex_to_string
	add	esp, 4
	mov	DWORD PTR _string$[ebp], eax
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
; Line 111
	mov	eax, DWORD PTR _string$[ebp]
	movsx	ecx, BYTE PTR [eax]
	push	ecx
	call	_putchar
	add	esp, 4
; Line 112
	mov	edx, DWORD PTR _string$[ebp]
	movsx	eax, BYTE PTR [edx+1]
	push	eax
	call	_putchar
	add	esp, 4
; Line 113
	push	32					; 00000020H
	call	_putchar
	add	esp, 4
; Line 114
	mov	ecx, DWORD PTR _string$[ebp]
	push	ecx
	call	_free
	add	esp, 4
; Line 115
	jmp	SHORT $LN6@show_queue
$LN5@show_queue:
; Line 116
	push	OFFSET $SG4587
	call	_printf
	add	esp, 4
; Line 118
	mov	DWORD PTR _i$[ebp], 0
$LN4@show_queue:
; Line 119
	cmp	DWORD PTR _i$[ebp], 16			; 00000010H
	jge	SHORT $LN3@show_queue
; Line 120
	mov	edx, DWORD PTR _temp$[ebp]
	add	edx, DWORD PTR _i$[ebp]
	movzx	eax, BYTE PTR [edx]
	cmp	eax, 32					; 00000020H
	jl	SHORT $LN2@show_queue
	mov	ecx, DWORD PTR _temp$[ebp]
	add	ecx, DWORD PTR _i$[ebp]
	movzx	edx, BYTE PTR [ecx]
	cmp	edx, 126				; 0000007eH
	jg	SHORT $LN2@show_queue
; Line 121
	mov	eax, DWORD PTR _temp$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	movzx	ecx, BYTE PTR [eax]
	push	ecx
	call	_putchar
	add	esp, 4
; Line 122
	jmp	SHORT $LN1@show_queue
$LN2@show_queue:
; Line 123
	push	46					; 0000002eH
	call	_putchar
	add	esp, 4
$LN1@show_queue:
; Line 125
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
; Line 126
	jmp	SHORT $LN4@show_queue
$LN3@show_queue:
; Line 127
	push	OFFSET $SG4593
	call	_printf
	add	esp, 4
; Line 128
	mov	eax, DWORD PTR _temp$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _temp$[ebp], ecx
; Line 129
	mov	edx, DWORD PTR _h$[ebp]
	add	edx, 1
	mov	DWORD PTR _h$[ebp], edx
; Line 130
	mov	eax, DWORD PTR ?j@?1??show_queue@@9@9
	add	eax, 16					; 00000010H
	mov	DWORD PTR ?j@?1??show_queue@@9@9, eax
; Line 131
	jmp	$LN8@show_queue
$LN7@show_queue:
; Line 133
	mov	ecx, DWORD PTR _temp$[ebp]
	mov	DWORD PTR _p$[ebp], ecx
; Line 134
	mov	eax, DWORD PTR _p$[ebp]
; Line 136
	mov	esp, ebp
	pop	ebp
	ret	0
_show_queue ENDP
; Function compile flags: /Odtp
_dw_string$ = -8					; size = 4
_temp$ = -1						; size = 1
_hex_number$ = 8					; size = 1
_dw_hex_to_string PROC
; Line 139
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 142
	push	3
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _dw_string$[ebp], eax
; Line 143
	mov	eax, DWORD PTR _dw_string$[ebp]
	mov	BYTE PTR [eax+2], 0
; Line 145
	movzx	ecx, BYTE PTR _hex_number$[ebp]
	and	ecx, -2147483633			; 8000000fH
	jns	SHORT $LN7@dw_hex_to_
	dec	ecx
	or	ecx, -16				; fffffff0H
	inc	ecx
$LN7@dw_hex_to_:
	mov	BYTE PTR _temp$[ebp], cl
; Line 147
	movzx	eax, BYTE PTR _hex_number$[ebp]
	cdq
	and	edx, 15					; 0000000fH
	add	eax, edx
	sar	eax, 4
	mov	BYTE PTR _hex_number$[ebp], al
; Line 149
	movzx	edx, BYTE PTR _temp$[ebp]
	cmp	edx, 10					; 0000000aH
	jge	SHORT $LN4@dw_hex_to_
; Line 150
	movzx	eax, BYTE PTR _temp$[ebp]
	add	eax, 48					; 00000030H
	mov	ecx, DWORD PTR _dw_string$[ebp]
	mov	BYTE PTR [ecx+1], al
; Line 151
	jmp	SHORT $LN3@dw_hex_to_
$LN4@dw_hex_to_:
; Line 152
	movzx	edx, BYTE PTR _temp$[ebp]
	add	edx, 55					; 00000037H
	mov	eax, DWORD PTR _dw_string$[ebp]
	mov	BYTE PTR [eax+1], dl
$LN3@dw_hex_to_:
; Line 154
	movzx	ecx, BYTE PTR _hex_number$[ebp]
	and	ecx, -2147483633			; 8000000fH
	jns	SHORT $LN8@dw_hex_to_
	dec	ecx
	or	ecx, -16				; fffffff0H
	inc	ecx
$LN8@dw_hex_to_:
	mov	BYTE PTR _temp$[ebp], cl
; Line 156
	movzx	edx, BYTE PTR _temp$[ebp]
	cmp	edx, 10					; 0000000aH
	jge	SHORT $LN2@dw_hex_to_
; Line 157
	movzx	eax, BYTE PTR _temp$[ebp]
	add	eax, 48					; 00000030H
	mov	ecx, DWORD PTR _dw_string$[ebp]
	mov	BYTE PTR [ecx], al
; Line 158
	jmp	SHORT $LN1@dw_hex_to_
$LN2@dw_hex_to_:
; Line 159
	movzx	edx, BYTE PTR _temp$[ebp]
	add	edx, 55					; 00000037H
	mov	eax, DWORD PTR _dw_string$[ebp]
	mov	BYTE PTR [eax], dl
$LN1@dw_hex_to_:
; Line 161
	mov	eax, DWORD PTR _dw_string$[ebp]
; Line 163
	mov	esp, ebp
	pop	ebp
	ret	0
_dw_hex_to_string ENDP
_TEXT	ENDS
PUBLIC	_free_queue
; Function compile flags: /Odtp
_TEXT	SEGMENT
_temp$ = -4						; size = 4
_queue$ = 8						; size = 4
_free_queue PROC
; Line 165
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 166
	mov	eax, DWORD PTR _queue$[ebp]
	mov	DWORD PTR _temp$[ebp], eax
$LN3@free_queue:
; Line 168
	mov	ecx, DWORD PTR _temp$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	DWORD PTR _queue$[ebp], edx
; Line 169
	mov	eax, DWORD PTR _temp$[ebp]
	push	eax
	call	_free
	add	esp, 4
; Line 170
	mov	ecx, DWORD PTR _queue$[ebp]
	mov	DWORD PTR _temp$[ebp], ecx
; Line 171
	cmp	DWORD PTR _temp$[ebp], 0
	jne	SHORT $LN3@free_queue
; Line 173
	mov	esp, ebp
	pop	ebp
	ret	0
_free_queue ENDP
_TEXT	ENDS
PUBLIC	_debug_show_queue
; Function compile flags: /Odtp
_TEXT	SEGMENT
_line$ = 8						; size = 4
_debug_show_queue PROC
; Line 175
	push	ebp
	mov	ebp, esp
$LN2@debug_show:
; Line 176
	cmp	DWORD PTR _line$[ebp], 0
	je	SHORT $LN3@debug_show
; Line 177
	push	OFFSET $SG4619
	call	_printf
	add	esp, 4
; Line 178
	push	OFFSET $SG4620
	call	_printf
	add	esp, 4
; Line 179
	mov	eax, DWORD PTR _line$[ebp]
	push	eax
	push	OFFSET $SG4622
	call	_printf
	add	esp, 8
; Line 180
	push	OFFSET $SG4623
	call	_printf
	add	esp, 4
; Line 181
	push	OFFSET $SG4624
	call	_printf
	add	esp, 4
; Line 182
	mov	ecx, DWORD PTR _line$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	DWORD PTR _line$[ebp], edx
; Line 183
	jmp	SHORT $LN2@debug_show
$LN3@debug_show:
; Line 184
	pop	ebp
	ret	0
_debug_show_queue ENDP
_TEXT	ENDS
EXTRN	_fread:PROC
; Function compile flags: /Odtp
_TEXT	SEGMENT
_j$ = -20						; size = 4
_temp_queue$ = -16					; size = 4
_re_queue$ = -12					; size = 4
_one_bytes$ = -5					; size = 1
_i$ = -4						; size = 4
_fp$ = 8						; size = 4
_scanf_queue PROC
; Line 187
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
; Line 188
	mov	DWORD PTR _i$[ebp], 0
; Line 193
	push	24					; 00000018H
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _temp_queue$[ebp], eax
	mov	eax, DWORD PTR _temp_queue$[ebp]
	mov	DWORD PTR _re_queue$[ebp], eax
; Line 194
	mov	ecx, DWORD PTR _temp_queue$[ebp]
	mov	BYTE PTR [ecx+16], 0
; Line 195
	mov	edx, DWORD PTR _temp_queue$[ebp]
	mov	DWORD PTR [edx+20], 0
$LN6@scanf_queu:
; Line 197
	mov	eax, DWORD PTR _fp$[ebp]
	push	eax
	push	1
	push	1
	lea	ecx, DWORD PTR _one_bytes$[ebp]
	push	ecx
	call	_fread
	add	esp, 16					; 00000010H
	cmp	eax, 1
	jne	SHORT $LN5@scanf_queu
; Line 199
	cmp	DWORD PTR _i$[ebp], 16			; 00000010H
	jne	SHORT $LN4@scanf_queu
; Line 200
	push	24					; 00000018H
	call	_malloc
	add	esp, 4
	mov	edx, DWORD PTR _temp_queue$[ebp]
	mov	DWORD PTR [edx+20], eax
	mov	eax, DWORD PTR _temp_queue$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	mov	DWORD PTR _temp_queue$[ebp], ecx
; Line 201
	mov	edx, DWORD PTR _temp_queue$[ebp]
	mov	BYTE PTR [edx+16], 0
; Line 202
	mov	DWORD PTR _i$[ebp], 0
$LN4@scanf_queu:
; Line 204
	mov	eax, DWORD PTR _temp_queue$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	mov	cl, BYTE PTR _one_bytes$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _i$[ebp]
	add	edx, 1
	mov	DWORD PTR _i$[ebp], edx
; Line 205
	jmp	SHORT $LN6@scanf_queu
$LN5@scanf_queu:
; Line 206
	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR _j$[ebp], eax
	jmp	SHORT $LN3@scanf_queu
$LN2@scanf_queu:
	mov	ecx, DWORD PTR _j$[ebp]
	add	ecx, 1
	mov	DWORD PTR _j$[ebp], ecx
$LN3@scanf_queu:
	cmp	DWORD PTR _j$[ebp], 16			; 00000010H
	jge	SHORT $LN1@scanf_queu
; Line 207
	mov	edx, DWORD PTR _temp_queue$[ebp]
	add	edx, DWORD PTR _j$[ebp]
	mov	BYTE PTR [edx], 46			; 0000002eH
; Line 208
	jmp	SHORT $LN2@scanf_queu
$LN1@scanf_queu:
; Line 209
	mov	eax, DWORD PTR _temp_queue$[ebp]
	mov	DWORD PTR [eax+20], 0
; Line 211
	mov	eax, DWORD PTR _re_queue$[ebp]
; Line 212
	mov	esp, ebp
	pop	ebp
	ret	0
_scanf_queue ENDP
_TEXT	ENDS
END
