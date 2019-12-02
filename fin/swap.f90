module subprog
  implicit none
contains
  subroutine swap(a,b)
    implicit none
    integer a,b,tmp
    tmp=a
    a=b
    b=tmp
  end subroutine swap
end module subprog

program int_min2max
  use subprog
  implicit none
  integer :: a,b,c

  write(*,*) "please enter 3 int Nomber"
  write(*,*) "a="
  read*,a
  write(*,*) "b="
  read*,b
  write(*,*) "c="
  read*,c

  if(a>b) call swap(a,b)
  if(b>c) call swap(b,c)
  if(a>b) call swap(a,b)

  write(unit=*, fmt=*) "resulta"
  write(unit=*, fmt=*) a,b,c


end program int_min2max
