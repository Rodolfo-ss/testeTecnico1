#Questao 1 - Uma verificação de um palindromo 

def palindromo(word)
    i = 0
    if word.reverse == word
        puts  "#{word} is a palindrome"
    else
        puts "#{word} is not a palindrome"
    end
end

puts palindromo("peep")


#Questao 2

#Teste cpf - Um regex que valida um CPF

    /^\d{3}\.\d{3}\.d{3}\-\d{2}$/.test(212.244.346-33)


#Questao 3

#Implemente uma funcao que calcula o fatorial de numeros arbitrariamente grandes.

















