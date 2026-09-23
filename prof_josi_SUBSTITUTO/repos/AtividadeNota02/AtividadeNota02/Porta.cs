using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota02
{
    abstract class Porta
    {
        // Atributos da classe porta
        private string cor;

        // metodos da classe Porta
        public void MostrarPorta()
        {
            Console.WriteLine(" Eu sou uma Porta e minha cor é " + this.cor);
        }

        // metodos especiais get e set da calsse Porta 
        public string Cor { get => cor; set => cor = value; } // Metodo de acesso e modificação do atributo cor


    } //fechamento da classe Porta

}// fechamento do Pojeto
