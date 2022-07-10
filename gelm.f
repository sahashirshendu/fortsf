c Gauss Elimination
c Comment out the lines b/w "Pivoting" & "End of Pivoting" to turn off pivoting
      program gelm
      implicit none
      integer :: i, j, k, m, n, p, q
      double precision :: u, s, tol, maxv, tmp
      double precision, allocatable :: a(:, :), x(:)
      tol = 1e-5
      print *, "Enter the number of variables :"
      read *, n
      allocate (a(n, n + 1), x(n))
      print *, "Enter the elements of the matrix :"
      read *, ((a(i, j), j = 1, n + 1), i = 1, n)
      print *, "The original matrix is :"
      do i = 1, n
        print *, (a(i, j), j = 1, n + 1)
      end do
      do k = 1, n - 1
        ! Pivoting
        maxv = abs(a(k, k))
        p = k
        do m = k + 1, n
          if (abs(a(m, k)) .gt. maxv) then
            maxv = abs(a(m, k))
            p = m
          end if
        end do
        if (maxv .lt. tol) then
          print '(A)', "Ill conditioned equations!"
          stop
        end if
        if (p .ne. k) then
          do q = k, n + 1
            tmp = a(k, q)
            a(k, q) = a(p, q)
            a(p, q) = tmp
          end do
        end if
        ! End of Pivoting
        do i = k + 1, n
          u = a(i, k) / a(k, k)
          do j = k, n + 1
             a(i, j) = a(i, j) - u * a(k, j)
          end do
        end do
      end do
      print *, "The upper triangular matrix is :"
      do i = 1, n
        print *, (a(i, j), j = 1, n + 1)
      end do
      ! The last variable
      x(n) = a(n, n + 1) / a(n, n)
      ! The other variables
      do i = n - 1, 1, -1
        s = 0
        do j = i + 1, n
           s = s + a(i, j) * x(j)
        end do
        x(i) = (a(i, n + 1) - s) / a(i, i)
      end do
      print *, "The solution is :"
      do i = 1, n
        print *, x(i)
      end do
      end
