c Solve simultaneous equations with two variables
c ax+by=c && px+qy=r
      print *, "Enter a, b, c :"
      read *, a, b, c
      print *, "Enter p, q, r:"
      read *, p, q, r

      q = q - p * b / a
      r = r - p * c / a

      if (q .eq. 0) then
        print *, "No solution!"
      else
        y = r / q
        x = (c - b * y) / a
        print *, "x =", x
        print *, "y =", y
      end if

      end
