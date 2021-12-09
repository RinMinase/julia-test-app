export complex_numbers

function complex_numbers()
  num1 = ComplexNumber(2, 5)
  num2 = ComplexNumber(1, 5)

  println("Complex 1: 2 + 5i")
  println("Complex 2: 1 + 5i")

  total = num1 + num2
  print("\nTotal: ")
  println("$(total.re) + $(total.im)i")
end

struct ComplexNumber{T<:Real} <: Number
  re::T
  im::T
end

Base.real(a::ComplexNumber) = a.re
Base.imag(a::ComplexNumber) = a.im
ComplexNumber(a::Real,b::Real) = ComplexNumber(promote(a,b)...)

function Base.convert(::Type{ComplexNumber{S}},x::Real) where S
  ComplexNumber(convert(S,x),zero(S))
end

function Base.convert(::Type{ComplexNumber{S}},x::ComplexNumber) where S
  ComplexNumber(convert(S,real(x)),convert(S,imag(x)))
end

function Base.promote_rule(::Type{ComplexNumber{S}},::Type{ComplexNumber{T}}) where {S,T}
  ComplexNumber{promote_type(S,T)}
end

function Base.promote_rule(::Type{ComplexNumber{S}},::Type{T}) where {S,T<:Real}
  ComplexNumber{promote_type(S,T)}
end

function Base.:+(a::ComplexNumber,b::ComplexNumber)
  ComplexNumber(real(a)+real(b),imag(a)+imag(b))
end

function Base.:-(a::ComplexNumber,b::ComplexNumber)
  ComplexNumber(real(a)-real(b),imag(a)-imag(b))
end

function Base.:*(a::ComplexNumber,b::ComplexNumber)
  r1,im1 = real(a),imag(a)
  r2,im2 = real(b),imag(b)
  ComplexNumber(r1*r2-im1*im2, r1*im2+r2*im1)
end

Base.:/(a::ComplexNumber,b::Real) = ComplexNumber(real(a)/b,imag(a)/b)
Base.:/(a::ComplexNumber,b::ComplexNumber) = (a * conj(b)) / abs2(b)
Base.conj(a::ComplexNumber) = ComplexNumber(real(a),-imag(a))
Base.abs2(a::ComplexNumber) = real(a * conj(a))
Base.abs(a::ComplexNumber) = hypot(real(a),imag(a))

function Base.:(==)(a::ComplexNumber, b::ComplexNumber)
  real(a) == real(b) && imag(a) == imag(b)
end

function Base.exp(a::ComplexNumber)
  θ = imag(a)
  exp(real(a)) * ComplexNumber(cos(θ),sin(θ))
end

function Base.isapprox(a::ComplexNumber,b::ComplexNumber; atol::Real=1e-8)
  return isapprox(real(a),real(b),atol=atol) && isapprox(imag(a),imag(b),atol=atol)
end
