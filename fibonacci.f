c Write a fortran program to output the first 50 Fibonacci numbers
      program fibo
      implicit none
      integer(8) i
      real(8) f0, f1, temp
      print *, "The first 50 Fibonacci numbers :"
      f0 = 0
      f1 = 1
      do i = 1, 50
      print *, f0
      temp = f0 + f1
      f0 = f1
      f1 = temp
      end do
      end
