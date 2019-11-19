program main

  implicit none
  real :: na,na2
  integer :: i
  double precision ::na3,na4

  write(*,*) "real(4)"

  na=6.02205e18
  na2=na*na
  write(*,*) na,na2

  na=6.02205e19
  na2=na*na
  write(*,*) na,na2

  write(*,*) "double precision(real(8))"

  na3=6.02205d23
  na4=na3**2
  write(*,*) na3,na4

  na3=6.02205d153
  na4=na3**2
  write(*,*) na3,na4

  na3=6.02205d154
  na4=na3**2
  write(*,*) na3,na4

end program main
