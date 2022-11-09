includelib "user32.lib
extrn MessageBoxA:proc

.data
_title BYTE "Asm",0
_msg BYTE "Windows Api with assembly.",0

.code
WinMain proc
	sub rsp,28h
  
  ;MessageBoxA arguments
  mov rcx,0
	mov rdx, offset _msg
	mov r8, offset _title
	mov r9d,0
  call MessageBoxA
  ;WinMain return 0
	mov rax,0

	add rsp,28h
	ret
WinMain endp
end
