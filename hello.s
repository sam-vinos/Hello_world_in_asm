.data
msg:
	.ascii "Hello world\n"
	.set len, . - msg

.text
.global _start
_start:
	call print
	call exit

print:
	mov $4, %eax
	mov $1, %ebx
	mov $msg, %ecx
	mov $len, %edx
	int $0x80

exit:
	mov $1, %eax
	mov $0, %ebx
	int $0x80
