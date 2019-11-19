program condenser
  implicit none
  integer, parameter :: nt=2000, nx=200, ny=200
  integer ix, iy, n
  double precision :: v(0:nx,0:ny) = 0
  open(10, file='output.txt')


  do n = 1, nt
    do iy = 1, ny-1
      do ix = 1, nx-1
        if(nx/2-10 <= ix .and. ix <= nx/2+10) then
          if(ny/2-10 <= iy .and. iy <= ny/2+10) then
            v(ix,iy) = ix * iy
          else
            v(ix,iy) = (v(ix-1,iy)+v(ix+1,iy)+v(ix,iy-1)+v(ix,iy+1))/4.0d0
          endif
        else
          v(ix,iy) = (v(ix-1,iy)+v(ix+1,iy)+v(ix,iy-1)+v(ix,iy+1))/4.0d0
        endif
      end do
    end do
  end do

  do iy = 0, ny, 5
    do ix = 0, nx, 5
      write(10,*) ix, iy, v(ix,iy)
    end do
    write(10,*)
  end do

  close(10)
end program condenser
