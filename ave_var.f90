program ave_var

  implicit none
  real(8)::a(10000),x=0,s2=0
  integer :: n=1,i

  do
    read(*,*,end=90) a(n)
    n=n+1
  end do
  90 print*,n,"data read"
  do i=1,n
    x=x+a(i)
  end do
  x=x/n
  do i=1,n
    s2=s2+(a(i)-x)**2
  end do
  s2=s2/n
  print*,"<x>=",x
  print*,"s^2=",s2
end program ave_var
