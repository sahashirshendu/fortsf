      program hornerpoly
      real, allocatable :: a(:)
      print *, "Enter n :"
      read *, n
      print *, "Enter x :"
      read *, x
      allocate(a(0:n))
      print *, "Enter the coefficients :"
      read *, a
      horner = a(n)
      do i = n, 1, -1
        horner = horner * x + a(i - 1)
      end do
      print *,"Value of the polynomial at x =", horner
      end
