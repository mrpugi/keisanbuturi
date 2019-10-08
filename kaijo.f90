program kaijo
	implicit none
	integer:: i,n
	integer(8) ::out=1
	print*,"Please enter n(n<=20)"
	read*,n
	do i=1,n
		out=out*i
	end do
	print*,n,"!  =",out
end program kaijo
