using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota02
{
    abstract class Pessoa : Habitacao
    {
        // Atributos da classe Pessoa
        private string nome;
        private int idade;

        // metodos da classe Pessoa

        public void comprimentar() // metodo de imprimir um comprimento 
        {
            Console.WriteLine(" Ola tudo bem ? me chamo {0} ", this.nome);
        }

        public void dizerIdade() // metodo de imprimir a idade do objeto a ser chamado 
        {
            Console.WriteLine(" Tenho {0} anos de idade ", this.idade);
        }

        // metodos especiais get e set da classe Pessoa

        public string Nome { get => nome; set => nome = value; } // metodo de acesso e modificação do atributo nome da classe Pessoa
        public int Idade { get => idade; set => idade = value; } // metodo de acesso e modificação do atributo idade da classe Pessoas

    } // fechamento da classe Pessoa

}// fechamento do projeto 

