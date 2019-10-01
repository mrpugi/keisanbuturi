program odd_even_noif

  implicit none
  integer i
  integer::wa_odd=0,wa_even=0
  do i=1,100,2
    wa_odd=wa_odd+i
  end do
  do i=2,100,2
    wa_even=wa_even+i
  end do
  print*,"wa_odd,wa_even,wa=",wa_odd,wa_even,wa_odd+wa_even
end program odd_even_noif
