program main
  use nmat
  implicit none
  integer :: N
  double precision,allocatable::a(:,:),c(:,:),b(:,:)

  call read_mat("data.txt",a,b,N)
  call write_mat("output.txt",a,N)

end program main
