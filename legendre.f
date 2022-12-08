c Legendre Polynomials
c Plots of P3(x), P4(x)
      program legendrepol
      implicit none
      real legendre, x, xmin, xmax, dx
      xmin = -1.0
      xmax = 1.0
      dx = 0.00001
      x = xmin
      open (2, file="legendre.txt")
      do while (x .lt. xmax)
        write (2, *) x, legendre(x, 3), legendre(x, 4)
      x = x + dx
      end do
      close(2)
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
