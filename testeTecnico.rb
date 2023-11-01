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

  class CpfValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      return if value.blank?
      return if cpf_valid?(value)
  
      record.errors.add(
        attribute,
        :invalid_cpf,
        message: options[:message] || 'is not valid',
        value: value
      )
    end
  
    private
  
    DENY_LIST = %w[
      00000000000
      11111111111
      22222222222
      33333333333
      44444444444
      55555555555
      66666666666
      77777777777
      88888888888
      99999999999
      12345678909
      01234567890
    ].freeze
  
    SIZE_VALIDATION = /^[0-9]{11}$/
  
    def cpf_valid?(cpf)
      cpf.gsub!(/[^\d]/, '')
      return unless cpf =~ SIZE_VALIDATION
      return if DENY_LIST.include?(cpf)
  
      cpf_numbers = cpf.chars.map(&:to_i)
      first_digit_valid?(cpf_numbers) && second_digit_valid?(cpf_numbers)
    end
  
    def first_digit_valid?(cpf_numbers)
      first_digits = cpf_numbers[0..9]
      multiplied = first_digits.map.with_index do |number, index|
        number * (10 - index)
      end
  
      mod = multiplied.reduce(:+) % 11
  
      fst_verifier_digit = 11 - mod > 9 ? 0 : mod
      fst_verifier_digit == cpf_numbers[10]
    end
  
    def second_digit_valid?(cpf_numbers)
      second_digits = cpf_numbers[0..10]
      multiplied = second_digits.map.with_index do |number, index|
        number * (11 - index)
      end
  
      mod = multiplied.reduce(:+) % 11
  
      snd_verifier_digit = 11 - mod > 9 ? 0 : mod
      snd_verifier_digit == cpf_numbers[11]
    end
  end
  
  class User < ApplicationRecord
    validates :cpf, cpf: { message: 'Sua mensagem de validação' }
  end


#Questao 3

#Implemente uma funcao que calcula o fatorial de numeros arbitrariamente grandes

def calcular 
  n = 0
  n < 0
  n > 0
end

#Questao 4

#Descreva oque o seguinte comando faz: a ||=b

'O comando verifica se A é verdadeiro ou undefined e se for, a variavel começa a valer B'

#Questao 5 
#Qual a principal diferença entre dois metodos.

#RUBY
def empty?(s)
    return s.size == 0
end

#JAVA
public boolean isEmpty(String s){
    return s.length() == 0;
}













