program mysqrt

  implicit none
  integer::n=100,i,fo=10
  real::x,ymin,xmin,a,dx,dxplt,y

  print*,"Let's get min f(x)=x^2-a=0"
  print*,"Please input a"
  read*,a
  open(fo,file="output.txt")
  dx=a/n
  dxplt=a/1000
  xmin=0
  ymin=f(0.0,a)**2
  do i=0,n
    if(f(dx*i,a)**2<ymin) then
      ymin=f(dx*i,a)**2
      xmin=dx*i
    end if
  end do
  do i=0,1000
    x=dxplt*i
    y=f(x,a)**2
    write(fo, '(3e12.4)') x, y
  end do
  print*,"f(",xmin,")=",ymin
contains
  real function f(x,a)
    implicit none
    real x,a
    f=x**2-a
  end function f
end program mysqrt
