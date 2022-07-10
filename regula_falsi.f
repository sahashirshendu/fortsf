c Method of False Position (Regula Falsi)
      program rf
      print *, "Enter tolerance :"
      read *, tol
      print *, "Enter guess values :"
      read *, x0, x1
      print *, '          i','         x0','         x2','        f(x2)'
      do 11 i = 1, 100000
        x2 = (x0 * f(x1) - x1 * f(x0)) / (f(x1) - f(x0))
        sgp = f(x2) * f(x0)
        print *, i, x0, x2, f(x2)
        if (sgp .le. 0.0) then
        x1 = x2
        else
        x0 = x2
        endif
        if (abs(f(x2)) .le. tol) go to 12
11    continue
12    print *, "The root is x =", x2
      stop
      end

      function f(x)
      f = x ** 3 - 7
      return
      end
