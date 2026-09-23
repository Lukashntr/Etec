using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota01
{
    class Professor : Pessoa // Classe Professor herda Atributos e Metodos da classe Pessoa
    {
        // Contrutor da classe Professor
        public Professor(string nome, int idade)
        {
            this.Nome = nome;
            this.Idade = idade;
        }

        // Metodos da classe Professor
        public void explicar(string ass)
        {
            Console.WriteLine(" O assunto abordado hoje é: {0}", ass);
        }

        // Metodo de status da classe Professor 
        public override string ToString()
        {
            return string.Concat(" Nome: " + this.Nome
                             + "\n Idade: " + this.Idade);
        }




    }// fechamento da classe Prfessor 

} // fechamento do projeto
