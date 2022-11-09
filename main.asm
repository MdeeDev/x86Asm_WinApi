includelib "user32.lib
extrn MessageBoxA:proc

.data
_title BYTE "Asm",0
_msg BYTE "Windows Api with assembly.",0

.code
WinMain proc
	sub rsp,28h
  
  ;MessageBoxA arguments
	xor rcx,rcx
	mov rdx, offset _msg
	mov r8, offset _title
	xor r9d,r9d
  call MessageBoxA
  ;WinMain return 0
	xor rax,rax

	add rsp,28h
	ret
WinMain endp
end
