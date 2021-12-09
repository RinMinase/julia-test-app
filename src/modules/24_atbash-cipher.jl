export atbash_cipher
export atbash_cipher_decode

function atbash_cipher(input)
  output = map(y -> atbashCipher(y), input)
  println(output)
end

function atbash_cipher_decode(input)
  output = map(y -> atbashCipher(y), input)
  println(output)
end

function atbashCipher(ch::Char)
  isdigit(ch) && return ch
  (!isdigit(ch) && !isletter(ch)) && return ch

  return 'z' - lowercase(ch) + 'a'
end
