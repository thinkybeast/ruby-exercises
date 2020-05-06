/*
RNA: "AUGUUUUCUUAAAUG" =>

Codons: "AUG", "UUU", "UCU", "UAA", "AUG" =>

Protein: "Methionine", "Phenylalanine", "Serine"
Note the stop codon terminates the translation and the final methionine is not translated into the protein sequence.--

Below are the codons and resulting Amino Acids needed for the exercise.

Codon	Amino Acids
AUG	Methionine
UUU, UUC	Phenylalanine
UUA, UUG	Leucine
UCU, UCC, UCA, UCG	Serine
UAU, UAC	Tyrosine
UGU, UGC	Cysteine
UGG	Tryptophan
UAA, UAG, UGA	STOP

Input: Valid protein string; String, sequence of chars
- protein string will be valid, non-empty
Output: Sequence of amino acids, array of Strings, names of amino acids

- Take a protein string
- Divide that string into a series of codons
  - codons are 3 letter sections of the protein string
- Parse our series of codons
  - Convert each codon into its Amino acid name
  - If the amino acid name is STOP, then stop parsing the sequence of codons and return the sequence of amino acids

Data structure:
{
  AUG: Methionine,
  UUU: Phenylalanine,
  UUC: Phenylalanine,
  UUA: Leucine,
  UUG: Leucine,
  UCU: Serine,
  UCC: Serine,
  UCA: Serine,
  UCG: Serine,
  UAU: Tyrosine,
  UAC: Tyrosine,
  UGU: Cystine,
  UGC: Cystine,
  UGG: Tryptophan,
  UAA: STOP,
  UAG: STOP,
  UGA: STOP,
}

Algo:
- Take our input string
- Divide into a series of codons
  - initialize codons
  - starting with index 0, take 3 char substrs of proteinString and push into codons
- Parse our sequence of codons into aminos
  - intialize amino array
  - for 0 to codons.length
    - amino = aminoMap[codon]
    - if animo === STOP
      -return amino array
    - else, push amino into amino array
- Return amino array
*/

const aminoMap = {  AUG: 'Methionine',
                    UUU: 'Phenylalanine',
                    UUC: 'Phenylalanine',
                    UUA: 'Leucine',
                    UUG: 'Leucine',
                    UCU: 'Serine',
                    UCC: 'Serine',
                    UCA: 'Serine',
                    UCG: 'Serine',
                    UAU: 'Tyrosine',
                    UAC: 'Tyrosine',
                    UGU: 'Cystine',
                    UGC: 'Cystine',
                    UGG: 'Tryptophan',
                    UAA: 'STOP',
                    UAG: 'STOP',
                    UGA: 'STOP',
                  };

function parseCodons(proteinString) {
  let i;
  let codonArr = [];
  for (i = 0; i < proteinString.length; i += 3) {
    codonArr.push(proteinString.substr(i, 3));
  }

  return codonArr;
}

function translate(proteinString) {
  let i;
  let aminoArr = [];
  let codon;
  let codons = parseCodons(proteinString);

  for (i = 0; i < codons.length; i += 1) {
    codon = codons[i];
    if (aminoMap[codon] === 'STOP') {
      return aminoArr;
    } else {
      aminoArr.push(aminoMap[codon]);
    }
  }

  return aminoArr;
}

// Test cases:
console.log(translate('AUGUUUUCGUCC')); // [Meth, Phen, Ser, Ser]
console.log(translate('AUGUUUUCGUCCUGA')); // [Meth, Phen, Ser, Ser]
console.log(translate('UGAUUUUCGUCC')); // []
console.log(translate('UUUUCGUGAUCC')); // [Phen, Ser]
