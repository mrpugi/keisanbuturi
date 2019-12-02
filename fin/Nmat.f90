module Nmat
  implicit none
contains
  subroutine read_mat(name,a,b,N)
    double precision,allocatable::a(:,:),b(:,:)
    character(*) :: name
    integer :: N,i

    open(10,file=name)
    read(10,*) N
    allocate(a(N,N),b(N,N))
    read(10,*)
    do i=1,N
      read(10,*) a(i,:)
    end do
    do i=1,N
      read(10,*) b(i,:)
    end do
  end subroutine read_mat
  subroutine write_mat(c,N,name,number)
    integer :: N,i
    double precision::c(N,N)
    character(*),optional:: name
    integer,optional::number
    if(present(number)) then
      open(number,file=name)
      do i=1,N
        write(unit=11, fmt=*) c(i,:)
      end do
    else
      do i=1,N
        write(*, fmt=*) c(i,:)
      end do
    end if
  end subroutine write_mat
end module Nmat

program main
  use nmat
  implicit none
  integer :: N,i
  double precision,allocatable::a(:,:),c(:,:),b(:,:)

  call read_mat("data.txt",a,b,N)
  write(unit=*, fmt=*) "load[",N,"x",N,"]"
  print*,"A="
  do i=1,N
    print*,a(i,:)
  end do
  print*,"B="
  do i=1,N
    print*,b(i,:)
  end do
  print*,"A x B="
  c=matmul(a,b)
  call write_mat(c,N)
  write(unit=*, fmt=*) "write to output.txt"
  call write_mat(c,N,"output.txt",11)

end program main
