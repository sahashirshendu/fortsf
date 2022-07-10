c Secant Method
      program secant
      print *, "Enter tolerance :"
      read *, tol
      print *, "Enter guess values :"
      read *, x0, x1
      print *, '          i','         x2','         f(x2)'
      do 17 i = 1, 10000
      x2 = (x0 * f(x1) - x1 * f(x0)) / (f(x1) - f(x0))
        print *, i, x0, x2, f(x2)
        if (abs(f(x2)) .le. tol) go to 18
        x0 = x1
        x1 = x2
17    continue
18    print *, "The root is x =", x2
      stop
      end

      function f(x)
      f = x ** 3 - 7
      return
      end
