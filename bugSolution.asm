mov ecx, [some_ecx_value]

; Check if the resulting address will exceed the allowed range
mov eax, ecx
mov edx, 4 ;Multiply ecx by 4
mul edx
mov eax, [ebx]
add eax, eax ; Add the base address EBX
add eax, 0x10
;Check if eax exceeds maximum allowed address
cmp eax, [max_address]
jg handle_overflow

mov eax, [ebx + ecx*4 + 0x10]

; Continue with the program
jmp continue

handle_overflow:
; Handle the overflow error appropriately (e.g., return error, exit)
; ... Error handling ...

continue:
; Rest of the code