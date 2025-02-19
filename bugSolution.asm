mov ecx, [some_valid_ecx_value]
mov ebx, [some_valid_ebx_value]

;Check bounds before accessing memory
mov eax, [ecx + ebx*4] ;Assuming ecx is an array index and ebx points to array start
cmp eax, 0 ;Check if value is zero
je error_handling ; Jump to error handling if value is 0 
;...rest of the code...

error_handling:
; Handle the error appropriately (e.g., return an error code, exit the program)
mov eax, -1
ret

; Alternatively, use safe array access functions if available in your assembly environment.
; This will handle the bounds checking for you.