program boltzmann

  implicit none
  double precision ::P,a=0,b=100000000,pi=3.1415927
  P=integ(a,b)*4/dsqrt(pi)
  write(*,*) P

contains
  double precision function dP(x)
    implicit none
    double precision::x
    dP=exp(-x*x)*x*x
  end function dP
  double precision function integ(a,b)
    implicit none
    integer::j,i
    double precision::a,b,dx
    integ=0
    j=int(b-a)*10
    dx=(b-a)/j
    !$omp parallel
    !$omp do
    do i=0,j-1
      integ=integ+dP(dx*i)*dx
    end do
    !$omp enddo
    !$omp end parallel
  end function integ

end program boltzmann
