c Gauss Seidel Method
      program gseidel
      implicit none
      integer :: n, i, j, flag, iter, maxit
      real, allocatable :: a(:, :), x(:)
      real :: big, tmp, tol, relerror, sum
      tol = 1e-5 ! tolerance
      maxit = 1000 ! maximum no. of iterations
      print *, "Enter the number of variables :"
      read *, n
      allocate (a(n, n + 1), x(n))
      print *, "Enter the elements of the matrix :"
      read *, ((a(i, j), j = 1, n + 1), i = 1, n)
      print *, "The original matrix is :"
      do i = 1, n
        print *, (a(i, j), j = 1, n + 1)
      end do
      ! Checking diagonal dominance
      flag = 0
      do i = 1, n
        sum = 0
        do j = 1, n
          if (i .eq. j) cycle
          sum = sum + abs(a(i, j))
        end do
        if (abs(a(i, i)) .lt. sum) flag = flag + 1
      end do
      if (flag .gt. 0) then
        print *, "The system is not diagonally dominant"
        stop
      end if
      x = 0 ! All x(i) are initialized to be 0
      print *, "Iteration of roots:"
      print *, (x(i), i = 1, n)
      do iter = 1, maxit
        big = 0
        do i = 1, n
           sum = 0
           do j = 1, n
             if (j .ne. i) then
                sum = sum + a(i, j) * x(j)
             end if
           end do
           tmp = (a(i, n + 1) - sum)/a(i, i)
           relerror = abs((x(i) - tmp)/tmp)
           if (relerror .gt. big) big = relerror
           x(i) = tmp
        end do
        print *, (x(i), i = 1, n)
        if (big .le. tol) exit
      end do
      if (iter .ge. maxit) print *, "System fails to converge!"
      print *, "The solution is :"
      do i = 1, n
        print *, x(i)
      end do
      end
