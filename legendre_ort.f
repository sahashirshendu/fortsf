c Orthogonality of Legendre Polynomials
      program legendrepol
      implicit none
      integer m, n
      real legendre, x, xmin, xmax, dx, ints, intd, sums, sumd
      xmin = -1.0
      xmax = 1.0
      dx = 0.00001
      x = xmin
      m = 4
      n = 5
      sums = 0
      sumd = 0
      do while (x .lt. xmax)
        sums = sums + legendre(x, n) * legendre(x, n)
        sumd = sumd + legendre(x, m) * legendre(x, n)
      x = x + dx
      end do
      print *, "Integral of P5(x)*P5(x) =", sums * dx
      print *, "Integral of P4(x)*P5(x) =", sumd * dx
      end

      function legendre(x, n)
      implicit none
      integer n, i
      real legendre, P(0:n), x
      P(0) = 1
      P(1) = x
      if (n .le. 1) then
        legendre = P(n)
      else
        do i = 1, n - 1
          P(i+1) = ((2*i+1) * x * P(i) - float(i) * P(i-1)) / float(i+1)
        end do
        legendre = P(n)
      end if
      return
      end
