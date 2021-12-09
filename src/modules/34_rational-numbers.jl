export rational_numbers

function rational_numbers()
  num1 = RationalNumber(2, 5)
  num2 = RationalNumber(1, 5)

  println("Fraction 1: $num1")
  println("Fraction 2: $num2")

  print("\nTotal: ")
  println(num1 + num2)
end

struct RationalNumber{T<:Integer} <: Real
  num::T
  den::T

  function RationalNumber(num::T, den::T) where {T<:Integer}
      num == 0 && den == 0 && throw(ArgumentError("Arguments cannot be 0"))
      num = den < zero(den) ? -num : num
      den = abs(den)
      d = gcd(abs(num),den)
      new{T}(div(num,d),div(den,d))
  end
end

Base.denominator(r::RationalNumber) = r.den
Base.numerator(r::RationalNumber) = r.num

RationalNumber(num::Integer,den::Integer) = RationalNumber(promote(num,den)...)

Base.promote_rule(::Type{RationalNumber},::Type{T}) where {T<:AbstractFloat} = T
Base.promote_rule(::Type{RationalNumber{T}},::Type{<:Integer}) where {T} = RationalNumber{T}

function Base.convert(::Type{RationalNumber{T}}, n::Integer) where {T}
  RationalNumber(convert(T,n),one(T))
end

function Base.convert(::Type{RationalNumber{S}}, r::RationalNumber) where {S}
  RationalNumber(convert(S,numerator(r)),convert(S,denominator(r)))
end

function Base.convert(::Type{S}, r::RationalNumber) where {S<:AbstractFloat}
  S(numerator(r)/denominator(r))
end

Base.zero(::Type{RationalNumber{T}}) where {T<:Integer} = RationalNumber(zero(T),one(T))
Base.one(::Type{RationalNumber{T}}) where {T<:Integer} = RationalNumber(one(T),one(T))

function Base.:+(a::RationalNumber,b::RationalNumber)
  na,da = numerator(a),denominator(a)
  nb,db = numerator(b),denominator(b)
  RationalNumber(na*db + nb*da,da*db)
end

function Base.:-(a::RationalNumber,b::RationalNumber)
  na,da = numerator(a),denominator(a)
  nb,db = numerator(b),denominator(b)
  RationalNumber(na*db - nb*da,da*db)
end

function Base.:*(a::RationalNumber,b::RationalNumber)
  na,da = numerator(a),denominator(a)
  nb,db = numerator(b),denominator(b)
  RationalNumber(na*nb,da*db)
end

function Base.:/(a::RationalNumber,b::RationalNumber)
  na,da = numerator(a),denominator(a)
  nb,db = numerator(b),denominator(b)
  RationalNumber(na*db,da*nb)
end

function Base.abs(r::RationalNumber)
  RationalNumber(abs(numerator(r)),denominator(r))
end

function Base.:^(r::RationalNumber,n::Integer)
  RationalNumber(numerator(r)^n,denominator(r)^n)
end

function Base.:^(x::Real,r::RationalNumber)
  x^(numerator(r)/denominator(r))
end

function Base.:(==)(a::RationalNumber,b::RationalNumber)
  numerator(a) == numerator(b) && denominator(a) == denominator(b)
end

function Base.:<(a::RationalNumber,b::RationalNumber)
  numerator(a)/denominator(a) < numerator(b)/denominator(b)
end

function Base.:(<=)(a::RationalNumber,b::RationalNumber)
  a < b || a == b
end

function Base.show(io::IO,r::RationalNumber)
  print(io,"$(numerator(r))/$(denominator(r))")
end
