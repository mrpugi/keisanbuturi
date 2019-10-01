program daikei

  implicit none
  real,parameter::pi=3.1415927
  real ::S=0
  real d
  integer n,i

  print*,"Please enter n(stop n<1)"
  read*,n
  if (n<1)stop "n ga dame"
  d=pi/n
  do i=1,n
    s=s+d*(sin(i*d)+sin((i-1)*d))/2
  end do
  print*,"S=",S
end program daikei
