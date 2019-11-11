program n_root

  implicit none
  real x,df,a,d
  integer i,n
  print*,"f(x)=x^n-a=0"
  print*,"Please enter a"
  read*,a
  print*,"Please enrer n"
  read*,n
  print*,"Please enter d(d is accuracy)"
  read*,d
  print*,"Please enter start position"
  read*,x
  do
    df=(f(x,a,n)-f(x-1.0e-5,a,n))/1.0e-5
    x=x-f(x,a,n)/df
    if(f(x,a,n)<d) exit
  end do
  print*,a,"^  1/",n,"=",x
contains
  real function f(x,a,n)
    real x,a
    integer n
    f=x**n-a
  end function f
end program n_root
