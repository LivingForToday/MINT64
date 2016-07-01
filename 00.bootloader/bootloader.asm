[ORG 0x00]		; set starting point
[BITS 16]		; set 16 bits (2Bytes) to bellow code

SECTION .text		; define text segment

jmp $			; infinite loof at current point

times 510 - ( $ - $$)	db    0x00	; $: address of current line
					; $$: starting address of current section(.text)
					; $ - $$: offset
					; 510 - ($ - $$): from current address to address 510
					; db 0x00: declare 1 byte and assign 0x00
					; time: repeat
					; assign 0x00 to every 0 ~ 510 address

db 0x55			; declare 1 byte and assign 0x55
db 0xAA			; delcare 1 byte and assign 0xAA
			; assign respectively 0x55 and 0xAA to 511, 512 address 
