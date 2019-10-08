program hello_world
	implicit none
	integer i,n,out
	print*,"n wo irero"
	out=1
	read*,n
	do i=1,n
		out=out*i
	end do
	print*,out
end program hello_world