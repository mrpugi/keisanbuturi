program mysqrt

  implicit none
  integer::n,i
  real::x,ymin,xmin,a,dx

  print*,"Let's get min f(x)=x^2-a=0"
  print*,"Please input a"
  read*,a
  print*,"Please input n(n is seido)(stop n<1)"
  read*,n
  if(n<1) stop "n ga dame"
  dx=2*sqrt(a)/n
  xmin=0
  ymin=f(0.0,a)**2
  do i=0,n
    if(f(dx*i,a)**2<ymin) then
      ymin=f(dx*i,a)**2
      xmin=dx*i
    end if
  end do
  print*,"f(",xmin,")=",ymin
contains
  real function f(x,a)
    implicit none
    real x,a
    f=x**2-a
  end function f
end program mysqrt
