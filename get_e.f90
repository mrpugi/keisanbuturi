program get_e
	implicit none
	integer::i=0
	real::e=0,a=1.
	do
		if (1/a<1.0e-10) exit
		i=i+1
		e=e+1/a
		a=a*i
	end do
	print*,"e =",e
end program get_e
