implicit none
integer n,i
real(8) a(1000)
n=0
do
 read(*,*, end=90) a(n+1)
 n=n+1
enddo
90 write(*,*) n, " data read"
write(*,*) (a(i), i=1,n)
end
