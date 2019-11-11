program sort

  implicit none
  real(8),allocatable:: key(:)
  real(8)::ref
  character(10),allocatable::str(:)
  character(10)::string
  integer n,i,j

  print*,"please enter dimention"
  read*,n
  allocate(key(n),str(n))
  print*,"please enter sort keys & strings"
  do i=1,n
    print*,"key"
    read*,key(i)
    print*,"string"
    read*,str(i)
  end do
  do i=1,n-1
    do j=i+1,n
      if ( key(i)>key(j) ) then
        ref=key(i)
        string=str(i)
        key(i)=key(j)
        str(i)=str(j)
        key(j)=ref
        str(j)=string
      end if
    end do
  end do
  do i = 1, n
    print*,key(i),str(i)
  end do
end program sort
