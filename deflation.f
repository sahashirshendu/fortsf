      program deflatepoly
      real, allocatable :: a(:), b(:)
      print *, "Enter the order of the polynomial :"
      read *, n
      allocate(a(0:n), b(0:n-1))
      print *, "Enter the coefficients :"
      print *, "(in increasing value of order)"
      read *, a
      print *, "Enter a root :"
      read *, r
      b(n - 1) = a(n)
      do i = 1, n - 1
      b(n - (i + 1)) = a(n - i) + r * b(n - i)
      end do
      print *, "Coefficients of the polynomial =", a
      print *, "Coefficients of the deflated polynomial =", b
      end
