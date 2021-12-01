export run_length_encoding
export run_length_decoding

function run_length_encoding(str::String)
  encode = ""
  rgx = r"(\D)\1*"

  for ch in eachmatch(rgx, str)
    encode *= length(ch.match) > 1 ? "$(length(ch.match))" : ""
    encode *= ch.match[1]
  end

  println("RLE: $encode")
end


function run_length_decoding(str::String)
  decode = ""
  rgx = r"(\d*)(\D)"

  for ch in eachmatch(rgx, str)
    rleLength = length(ch.captures[1]) > 0 ? parse(Int16, ch.captures[1]) : 1
    decode *= repeat(ch.captures[2], rleLength)
  end

  println("RLE Decoding: $decode")
end
