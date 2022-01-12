oscillator[d_, w0_, x_] := Module[{w, phi, A, cos, exp, y},
  w = Sqrt[w0^2 - d^2];
  phi = ArcTan[-d/w];
  A = 1/(2*Cos[phi]);
  cos = Cos[w0*x + phi];
  exp = Exp[-d*x];
  y = exp*2*A*cos;
  y // N
  ]

d = 2
wo = 20


mu = 2*d
k = wo**2

(*define a custom layer for physics loss*)
lossLayer