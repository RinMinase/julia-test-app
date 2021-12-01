export rna_transcription

function rna_transcription(nucleotide::Char)
  if nucleotide == 'C'
    println("RNA complement: G")
  elseif nucleotide == 'G'
    println("RNA complement: C")
  elseif nucleotide == 'T'
    println("RNA complement: A")
  elseif nucleotide == 'A'
    println("RNA complement: U")
  else
    println("Invalid nucleotide")
  end
end

function rna_transcription(strand::String)
  table = Dict(
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U',
  )

  try
    transcription = map(ch -> table[ch], strand)

    println("Strand complement: " * transcription)
  catch err
    if isa(err, KeyError)
      println("Invalid strand")
    end
  end
end

