program dot

  implicit none
  real(8) dotp
  real(8),allocatable:: u(:),v(:)
  integer n,i

  dotp=0
  print*,"please enter dimention"
  read*,n
  allocate(u(n),v(n))
  print*,"please enter vector1"
  do i=1,n
    read*,u(i)
  end do
  print*,"please enter vector2"
  do i=1,n
    read*,v(i)
  end do
  do i=1,n
    dotp=dotp+u(i)*v(i)
  end do
  print*,"V1(n)*V2(n)=",dotp

end program dot
