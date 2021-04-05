=begin
Problem: D
Rephrase: Decrypt the following list of names
Examples/tests:
decrypt_rot13(["a"]) == ["n"]
decrypt_rot13(["A"]) == ["A"]
decrypt_rot13(["Z"]) == ["M"]
decrypt_rot13(["uryyb"]) == ["hello"]
INPUT: List of strings containing capitals and separated by spaces
OUTPUT: List of strings containing capitals and separated by spaces
Rules:
  Explicit:
    - Each letter is encrypted by substituting the letter with the 13th letter ahead of its
    - If there are no more letters ahead of it then it wraps around to the beginning of the alphabet
    - Case is unchanged
    - non alpha characters are not substituted
  Implicit:
D: Array
Approach:
Create Constant HASH LOOKUP TABLE where each letter is a key and each value is the corrisponding ROT13 value
def method decrypt_rot13 with parameter names
Iterate through list of names
for each name TRANSFORM each name to their decrypted string
  Iterate through each letter and return the corrisponding value from the Lookup Table hash
return new array of decrypted names
end
C:
=end


names = ["Nqn Ybirynpr",
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
  "Gvz Orearef-Yrr",
  "Fgrir Jbmavnx",
  "Xbaenq Mhfr",
  "Fve Nagbal Ubner",
  "Zneiva Zvafxl",
  "Lhxvuveb Zngfhzbgb",
  "Unllvz Fybavzfxv",
  "Tregehqr Oynapu"]

def create_lookup_table
  keys = [*'A'..'Z', *'a'..'z']
  values = [*'N'..'Z'] + [*'A'..'M'] + [*'n'..'z'] + [*'a'..'m']
  keys.zip(values).to_h.freeze
end

LOOKUP_TABLE = create_lookup_table

  def decrypt_rot13(list)
   decrypted_list = list.map do |names|
      names.gsub(/[A-z]/, LOOKUP_TABLE)
      end
      decrypted_list.each { |name| puts name }
  end
 decrypt_rot13(names)