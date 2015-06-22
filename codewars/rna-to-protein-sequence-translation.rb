def protein(rna)
(rna).scan(/.{3}/).map do |codon|
  $codons[codon]
 end.join
