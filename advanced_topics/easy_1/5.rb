
NAMES = ["Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
'Gvz Orearef-Yrr',
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"]

def rot13(ch)
  case ch.downcase
  when('a'..'m')  
    (ch.ord + 13).chr
  when ('n'..'z') 
    (ch.ord - 13).chr
  else
    ch 
  end
end

def decipher(name)
  # for each name in NAMES
  # break name into chars
  # map each char to its pair (lowercased) (if a-z)
  
    name.chars.map do |char|
      rot13(char)
    end.join
end

NAMES.each { |name| puts decipher(name) }


