c Newton-Raphson Method
      program nr
      print *, "Enter tolerance :"
      read *, tol
      print *, "Enter guess value :"
      read *, x0
      if (abs(df(x0)) .le. 1e-5) then
        print *, "Slope is too small to proceed!"
        stop
      end if
      print *, '          i','         x0','         x1','        f(x1)'
      do 11 i = 1, 100000
        x1 = x0 - f(x0) / df(x0)
        err = abs((x1 - x0) / x1)
        print *, i, x0, x1, f(x1)
        if (err .le. 0.00001) go to 12
        x0 = x1
11    continue
12    print *, "The root is x =", x1
      stop
      end

      function f(x)
      f = x ** 3 - 7.0
      return
      end

      function df(x)
      df = 3 * x ** 2
      return
      end
