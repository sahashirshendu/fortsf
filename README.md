# Some Essential Programmes in Fortran
- [Fibonacci Numbers](./fibonacci.f)
- Root Finding Methods
  - [Bisection Method](./bisection.f)
  - [Newton-Raphson Method](./newton_raphson.f)
  - [Regula Falsi Method](./regula_falsi.f)
  - [Secant Method](./secant.f)
- Legendre Polynomials
  - [Recurrence Relation](./legendre.f)
    - Plot
    ```gnuplot
    set term post
    set out 'legendre.ps'
    plot 'legendre.txt' u 1:2 w l, 'legendre.txt' u 1:3 w l
    ```
  - [Orthogonality](./legendre_ort.f)
- Polynomials
  - [Horner's Method](./horner.f)
  - [Deflation of Polynomials](./deflation.f)
- Simulataneous Equations
  - [Simulataneous Equations with 2 Variables](./simul.f)
  - [Gauss Elimination Method](./gelm.f)
  - [Gauss-Seidel Method](./gseidel.f)
