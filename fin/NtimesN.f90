program NtimesN

  implicit none
  integer n,i,j
  double precision,allocatable::a(:,:),b(:,:),c(:,:)
  integer size(2)

  call load2d(10,"data.txt",a,b)

  size=shape(a)
  n=size(1)
  allocate(c(n,n))

  print*,"load [",n,"x",n,"]"
  print*,"A="
  do i=1,n
    print*,a(i,:)
  end do
  print*,"B="
  do i=1,n
    print*,b(i,:)
  end do
  print*,"A x B="
  c=matmul(a,b)
  do i=1,n
    print*,c(i,:)
  end do


contains
  subroutine load2d(number, name, a, b)
    integer,intent(in) :: number
    character(*) name
    double precision,allocatable :: a(:,:), b(:,:)
    integer matrix_size, i
    open(number, file=name)
    read (number, *) matrix_size
    allocate(a(matrix_size,matrix_size), b(matrix_size,matrix_size))
    read (number, *)
    do i = 1, matrix_size
      read (number, *) a(i, :)
    end do
    read (number, *)
    do i = 1, matrix_size
      read (number, *) b(i, :)
    end do
  end subroutine
end program NtimesN
