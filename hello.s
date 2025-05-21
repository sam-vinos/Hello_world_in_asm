.data
msg:
	.ascii "Hello, world\n"
	.set len, . - msg

.text
.global _start
_start:
	call print
	call print
	call exit

print:
	mov $4, %eax
	mov $1, %ebx
	mov $msg, %ecx
	mov $len, %edx
	int $0x80

	xor %eax, %eax
	xor %ebx, %ebx
	xor %ecx, %ecx
	xor %edx, %edx
	ret

exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
	ret
