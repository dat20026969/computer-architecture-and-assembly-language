.data
	input1:  .asciiz  "NhAp so phan tu n trong mang A: "
	input2:  .asciiz  "[ "
	input3:  .asciiz  " ] = "
	output:  .asciiz  "\nMang A : "
	arr:  .word  0:100   
.text
	main:
	# nh?p s? ph?n t? 
 		la  $a0, input1
  		addi  $v0, $zero, 4
  		syscall
 	 	addi  $v0, $zero, 5
 	 	syscall
  		addi  $t0, $v0, 0
	# kh?i t?o m?ng
  		addi  $t1, $zero, 0
  		la  $a1, arr
	inputArray:
	# ki?m tra s? l?n l?p
  		subu  $t2, $t1, $t0
  		bgez  $t2, inputEnding
  	# nh?c nh?p
  		la    $a0, input2
  		addi  $v0, $zero, 4
  		syscall
  		addi  $a0, $t1, 0
  		addi  $v0, $zero, 1
  		syscall
  		la    $a0, input3
  		addi  $v0, $zero, 4
  		syscall
	# nh?p + l?u array a[i](n?u c++ thì d? mà vô ?ây thì h?i ph?c t?p).
  		addi  $v0, $zero, 5
  		syscall
  		sw    $v0, ($a1)
	# t?ng ch? s?
  		addi  $t1, $t1, 1
  		addi  $a1, $a1, 4
 	j    inputArray
 	#k?t thúc nh?p
	inputEnding:
  		la    $a0, output
  		addi  $v0, $zero, 4
  		syscall
	# kh?i t?o m?ng
  		la    $a1, arr
  		addi  $t1, $zero, 0
  	# Xu?t m?ng:
	outputArray:
	# ki?m tra s? l?n l?p(for....)
  		subu  $t2, $t1, $t0
  		bgez  $t2, outputEnding
	# xu?t toàn b? các ph?n t? trong m?ng
  		lw    $a0, ($a1)
 		addi  $v0, $zero, 1
  		syscall
  	# xu?t luôn kho?ng tr?ng(cout<<" ";)
  		addi  $a0, $zero, 0x20
  		addi  $v0, $zero, 11
 	 	syscall
	# t?ng ch? s?
  		addi  $t1, $t1, 1
 		addi  $a1, $a1, 4
  		j    outputArray
  	#k?t thúc xu?t
	outputEnding:
  		addi  $v0, $zero, 10
  		syscall