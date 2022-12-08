c Bisection Method
      program bisection
      print *, "Enter tolerance :"
      read *, tol
      print *, "Enter guess value :"
      read *, x0, x1
      if ((f(x0) * f(x1)) .ge. 0.0) then
      print *, "Initial values do not bracket the root!"
      stop
      end if
      print *, '          i','         x0','         x2','        f(x2)'
      do 11 i = 1, 1000000
      x2 = (x0 + x1)/2
      print 16, i, x0, x2, f(x2)
      if ((f(x2) * f(x1)) .le. 0.0) then
      x0 = x2
      else
      x1 = x2
      end if
      err = abs((x1 - x0)/x1)
      if (err .le. tol) go to 12
11    continue
12    print *, 'The root is =', x2
      stop
      end

      function f(x)
      f = x**3 - 7.0
      return
      end
