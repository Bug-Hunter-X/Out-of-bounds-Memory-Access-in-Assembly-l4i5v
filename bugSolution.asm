mov ecx, [some_valid_ecx_limit] ; Load a safe limit into ecx

; ...other code...

cmp ecx, [some_valid_ecx_limit] ; Check if ecx exceeds the limit
jge out_of_bounds_handler ; Jump to error handler if limit is exceeded

mov eax, [ebx+ecx*4] ; Access memory if ecx is within the safe limit

; ...rest of the code...

out_of_bounds_handler:
; Handle out-of-bounds error appropriately
; For example, display an error message and exit
mov eax, 1 ; sys_exit
int 0x80