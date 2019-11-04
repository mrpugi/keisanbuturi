program n_root

  implicit none
  real x,df,a,d,dxplt,y
  integer::i,n,fo=10
  print*,"f(x)=x^n-a=0"
  print*,"Please enter a"
  read*,a
  print*,"Please enrer n"
  read*,n
  print*,"Please enter start position"
  read*,x
  d=0.001
  open(fo,file="output.txt")
  do
    df=(f(x,a,n)-f(x-1.0e-5,a,n))/1.0e-5
    if(df==0) then
      x=x+0.01
      cycle
    end if
    x=x-f(x,a,n)/df
    if(f(x,a,n)<d) exit
  end do
  dxplt=2*x/1000
  print*,a,"^  1/",n,"=",x
  do i=0,1000
    x=dxplt*i
    y=f(x,a,n)
    write(fo, '(3e12.4)') x, y
  end do
contains
  real function f(x,a,n)
    real x,a
    integer n
    f=x**n-a
  end function f
end program n_root
