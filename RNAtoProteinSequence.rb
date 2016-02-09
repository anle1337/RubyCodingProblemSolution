# Description:

# The central dogma of molecular biology is that DNA is transcribed into RNA, which is then tranlsated into protein. RNA, like DNA, is a long strand of nucleic acids held together by a sugar backbone (ribose in this case). Each segment of three bases is called a codon. Molecular machines called ribosomes translate the RNA codons into amino acid chains, called polypeptides which are then folded into a protein.

# Protein sequences are easily visualized in much the same way that DNA and RNA are, as large strings of letters. An important thing to note is that the 'Stop' codons do not encode for a specific amino acid. Their only function is to stop translation of the protein, as such they are not incorporated into the polypeptide chain. 'Stop' codons should not be in the final protein sequence. To save a you a lot of unnecessary (and boring) typing the keys and values for your amino acid dictionary are provided.

# Given a string of RNA, create a funciton which translates the RNA into its protein sequence. Note: the test cases will always produce a valid string.

# protein('UGCGAUGAAUGGGCUCGCUCC') returns 'CDEWARS'
# Included as test cases is a real world example! The last example test case encodes for a protein called green fluorescent protein; once spliced into the genome of another organism, proteins like GFP allow biologists to visualize cellular processes!

# Amino Acid Dictionary
 # Phenylalanine
    'UUC'=>'F', 'UUU'=>'F',
    # Leucine
    'UUA'=>'L', 'UUG'=>'L', 'CUU'=>'L', 'CUC'=>'L','CUA'=>'L','CUG'=>'L', 
    # Isoleucine
    'AUU'=>'I', 'AUC'=>'I', 'AUA'=>'I', 
    # Methionine
    'AUG'=>'M', 
    # Valine
    'GUU'=>'V', 'GUC'=>'V', 'GUA'=>'V', 'GUG'=>'V', 
    # Serine
    'UCU'=>'S', 'UCC'=>'S', 'UCA'=>'S', 'UCG'=>'S', 'AGU'=>'S', 'AGC'=>'S', 
    # Proline
    'CCU'=>'P', 'CCC'=>'P', 'CCA'=>'P', 'CCG'=>'P', 
    # Threonine
    'ACU'=>'T', 'ACC'=>'T', 'ACA'=>'T', 'ACG'=>'T',
    # Alanine
    'GCU'=>'A', 'GCC'=>'A', 'GCA'=>'A', 'GCG'=>'A', 
    # Tyrosine
    'UAU'=>'Y', 'UAC'=>'Y', 
    # Histidine
    'CAU'=>'H', 'CAC'=>'H',
    # Glutamine
    'CAA'=>'Q', 'CAG'=>'Q', 
    # Asparagine
    'AAU'=>'N', 'AAC'=>'N', 
    # Lysine
    'AAA'=>'K', 'AAG'=>'K',
    # Aspartic Acid
    'GAU'=>'D', 'GAC'=>'D', 
    # Glutamic Acid
    'GAA'=>'E', 'GAG'=>'E',
    # Cystine
    'UGU'=>'C', 'UGC'=>'C',
    # Tryptophan
    'UGG'=>'W', 
    # Arginine
    'CGU'=>'R', 'CGC'=>'R', 'CGA'=>'R', 'CGG'=>'R', 'AGA'=>'R', 'AGG'=>'R', 
    # Glycine
    'GGU'=>'G',  'GGC'=>'G', 'GGA'=>'G', 'GGG'=>'G', 
    # Stop codon
    'UAA'=>'Stop', 'UGA'=>'Stop', 'UAG'=>'Stop'


# Test cases
Test.describe('Basic Tests') do
Test.it('Testing for Basic Functionality') do
Test.assert_equals(protein('AUGUGA'), 'M')
Test.assert_equals(protein('AUGUAUAAA'), 'MYK')
Test.assert_equals(protein('UGCGAUGAAUGGGCUCGCUCC'), 'CDEWARS')
end

Test.it('Testing for removal of "Stop"') do
Test.assert_equals(protein('AUGUGA'), 'M')
Test.assert_equals(protein('AUGUUAAUUUGA'), 'MLI')
end
end

Test.describe('Longer Sequence Tests') do
Test.it('Longer Sequences') do
Test.assert_equals(protein('AUGUCCUUCCAUCAAGGAAACCAUGCGCGUUCAGCUUUCUGA'), 'MSFHQGNHARSAF')
Test.assert_equals(protein('AUGCUUCAAGUGCACUGGAAAAGGAGAGGGAAAACCAGUUGA'), 'MLQVHWKRRGKTS')
Test.assert_equals(protein('AUGGCGUUCAGCUUUCUAUGGAGGGUAGUGUACCCAUGCUGA'), 'MAFSFLWRVVYPC')
Test.assert_equals(protein('AUGCAGCUUUCUAUGGAGGGUAGUGUUAACUACCACGCCUGA'), 'MQLSMEGSVNYHA')
Test.assert_equals(protein('AUGCUAUGGAGGGUAGUGUUAACUACCACGCCCAGUACUUGA'), 'MLWRVVLTTTPST')
Test.assert_equals(protein('AUGCUGAUUAUGGUUGUUGUAUCUUCCUAUCAAAAUAAAACUACCACAUGA'), 'MLIMVVVSSYQNKTTT')
Test.assert_equals(protein('AUGGAGCACAAUAAAAUACCAAUACCACUCACUCUCUACCCUACUCUACUCUCAUGA'), 'MEHNKIPIPLTLYPTLLS')
end

Test.it('This is the green fluorescent protein gene from the Snakelocks anemone!') do
Test.assert_equals(protein('AUGUAUCCUUCCAUCAAGGAAACCAUGCGCGUUCAGCUUUCUAUGGAGGGUAGUGUUAACUACCACGCCUUCAAGUGCACUGGAAAAGGAGAGGGAAAACCAUACGAAGGCACCCAAAGCCUGAAUAUUACAAUAACUGAAGGAGGUCCUCUGCCAUUUGCUUUUGACAUUCUGUCACACGCCUUUCAGUAUGGCAUCAAGGUCUUCGCCAAGUACCCCAAAGAAAUUCCUGACUUCUUUAAGCAGUCUCUACCUGGUGGUUUUUCUUGGGAAAGAGUAAGCACCUAUGAAGAUGGAGGAGUGCUUUCAGCUACCCAAGAAACAAGUUUGCAGGGUGAUUGCAUCAUCUGCAAAGUUAAAGUCCUUGGCACCAAUUUUCCCGCAAACGGUCCAGUGAUGCAAAAGAAGACCUGUGGAUGGGAGCCAUCAACUGAAACAGUCAUCCCACGAGAUGGUGGACUUCUGCUUCGCGAUACCCCCGCACUUAUGCUGGCUGACGGAGGUCAUCUUUCUUGCUUCAUGGAAACAACUUACAAGUCGAAGAAAGAGGUAAAGCUUCCAGAACUUCACUUUCAUCAUUUGCGUAUGGAAAAGCUGAACAUAAGUGACGAUUGGAAGACCGUUGAGCAGCACGAGUCUGUGGUGGCUAGCUACUCCCAAGUGCCUUCGAAAUUAGGACAUAACUGA'), 'MYPSIKETMRVQLSMEGSVNYHAFKCTGKGEGKPYEGTQSLNITITEGGPLPFAFDILSHAFQYGIKVFAKYPKEIPDFFKQSLPGGFSWERVSTYEDGGVLSATQETSLQGDCIICKVKVLGTNFPANGPVMQKKTCGWEPSTETVIPRDGGLLLRDTPALMLADGGHLSCFMETTYKSKKEVKLPELHFHHLRMEKLNISDDWKTVEQHESVVASYSQVPSKLGHN')
end
end

Test.describe("Random tests") do
base=$codons.keys
def randint(a,b) rand(b-a+1)+a end

def prosol(rna)
  res=""
  for _ in 0...rna.length/3
    item=$codons[rna[_*3,3]]
    if item=='Stop' then break end
    res+=item
  end
  return res
end

40.times do
  testrna=""
  randint(1,25).times do
    testrna+=base[randint(0,base.length-1)]
  end
  Test.it("Testing for "+testrna) do
  Test.assert_equals(protein(testrna), prosol(testrna),"It should work for random inputs too")
  end
end
end





# My answer:

def protein(rna)
  codons = rna.split("").each_slice(3).to_a
  codons = codons.map {|x| x.join}
  
  seq = []
  codons.each do |y|
  if $codons[y] == "Stop"
    break
  end
   seq.push($codons[y])
   
  end
  
 seq.join


  #your code here
  #you can copy and paste the codons from the description into a hash
  #or use the preloaded $codons hash
end



# Best Answer:
def protein(rna)
  rna.chars.each_slice(3).map do |codon|
    codon = codon.join
    $codons[codon]
  end.join.sub(/Stop.*/,'')
end

# or 
def protein(rna)
 rna.scan(/.../).map{|i| $codons[i]}.take_while{|i| i != "Stop"}.join
end
