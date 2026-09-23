using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota01
{
    class Aluno :  Pessoa // classe Aluno herda os atributos e metodos da classe Pessoa 
    {   
       // Construtor da classe Aluno
       public Aluno(string nome, int idade)
        {
            this.Nome = nome;
            this.Idade = idade;
        }

       // metodos da classe Aluno
       public void irParaEscola()
        {
            Console.WriteLine(" O Aluno {0} foi para a escola ", this.Nome);
        }

        // metodo de status da classe Aluno
        public override string ToString()
        {
            return string.Concat(" Nome: " + this.Nome
                             + "\n Idade: " + this.Idade);
        }

    } // fechamento da classe Aluno

} // fechamento do projeto 
