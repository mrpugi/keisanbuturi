program loop_inf
  implicit none
  integer i,wa,n
  do
    print*,"input n(if n<=0,stop)"
    read*,n
    if(n<=0) stop "bye!"
    wa=0
    do i=1,n
      wa=wa+i
    end do
    print*,"wa=",wa
  end do
end program loop_inf
