program test

  implicit none
  integer :: wa,i,n
  n=6
  wa=1

  do i=1,n
    wa=wa*i
  end do
  print*,n,"!=",wa


end program test
