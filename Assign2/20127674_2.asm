.data
	chuoi1: .asciiz "Nhap so thu nhat: "
	chuoi2: .asciiz "Nhap so thu hai: "
	chuoi3: .asciiz "Tong: \n "
	chuoi4: .asciiz "Hieu: \n"
	chuoi5: .asciiz "Tich: \n"
	chuoi6: .asciiz "Thuong: \n"
	chuoi7: .asciiz "Thuong lay phan nguyen: \n"
	chuoi8: .asciiz "Thuong lay phan du: \n"
	.text
main:
	#hien thi chuoi 1:
	li $v0, 4
	la $a0, chuoi1
	syscall
	#nhap so thu nhat:
	li $v0, 5
	syscall
	move $t0, $v0
	#hien thi chuoi 2:
	li $v0, 4
	la $a0, chuoi2
	syscall
	#nhap so thu 2:
	li $v0, 5
	syscall
	move $t1, $v0
	#hien thi chuoi 3 - tinh tong:
	li $v0, 4
	la $a0, chuoi3
	syscall
	#tinh tong:
	add $a0, $t0, $t1
	li $v0, 1
	syscall
	#hien thi chuoi 4 - tinh hieu:
	li $v0, 4
	la $a0, chuoi4
	syscall
	#tinh hieu:
	sub $a0, $t0, $t1
	li $v0, 1
	syscall	
	#hien thi chuoi 5 - tinh tich:
	li $v0, 4
	la $a0, chuoi5
	syscall
	#tinh tich:
	mul $a0, $t0, $t1
	li $v0, 1
	syscall	
	#hien thi chuoi 6 - tinh thuong:
	li $v0, 4
	la $a0, chuoi6
	syscall	
	#hien thi chuoi 7 - tinh thuong lay phan nguyen:
	li $v0, 4
	la $a0, chuoi7
	syscall
	#tinh thuong lay phan nguyen:
	div $t0, $t1
	mflo $t3
	add $a0,$0,$t3
	add $v0,$0,1
	syscall
	#hien thi chuoi 6 - tinh thuong lay phan du:
	li $v0, 4
	la $a0, chuoi8
	syscall
	#tinh thuong lay phan du
	div $t0, $t1
	mfhi $t3
	add $a0,$0,$t3
	add $v0,$0,1
	syscall
