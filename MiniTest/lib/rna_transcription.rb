class Complement
    def self.of_dna(dna)
        rna = ''
        for i in 0..(dna.length - 1)
            if dna[i] == 'C'
                rna[i] = 'G'
            elsif dna[i] == 'G'
                rna[i] = 'C'
            elsif dna[i] == 'T'
                rna[i] = 'A'
            elsif dna[i] == 'A'
                rna[i] = 'U'
            else
                return rna = ''
            end
        end
        return rna
    end
end
