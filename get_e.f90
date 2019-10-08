program get_e
	implicit none
	integer::i=0
	real(8)::e=0.0d0,a=1.0d0
	do
		if (1/a<1.0e-10) exit
		i=i+1
		e=e+1.0d0/a
		a=a*i
	end do
	print*,"e =",e
end program get_e
