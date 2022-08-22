f1(x)=sqrt(x)-cos(x)

f2(x)= 5*sin(x^2)-MathConstants.e^(x/10)

j=1.380649*10^-23
l=1.60217663*10^-19

f3(x)=-2*I(MathConstants.e^(x/0.025)-1)

error = 10^-5

function bisection(a,b,f)
  x=(a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a=x
    else
      b=x
  end
  x = (a+b)/2
  end
  return x
end

r1 = bisection(0, 1, f1)
println(r1)

r21 = bisection(0.4, 0.5, f2)
println(r21)

r22 = bisection(1.7, 1.8, f2)
println(r22)

r23 = bisection(2.5, 2.6, f2)
println(r23)