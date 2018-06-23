public _DoSyscall

.code
_DoSyscall proc

	mov		rax, [rsp + 40]
	mov		r10, rcx

	add		rsp, 16
	syscall
	sub		rsp, 16

	ret

_DoSyscall endp

end