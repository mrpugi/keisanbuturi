program get_prime

  implicit none
  integer i,k,n
  integer ::prime(100000)=1

  print*,"Please enter n (1<=n<=100000)"
  read*,n
  if(n<1 .or. n>100000) stop "n ga dame"
  prime(1)=0
  do i=2,int(sqrt(real(n)))
    if(prime(i)==1) then
      do k=i*2,n,i
        prime(k)=0
      end do
    end if
  end do

  do i = 1, n
    if ( prime(i)==1 ) then
      print*,i
    end if
  end do


end program get_prime
