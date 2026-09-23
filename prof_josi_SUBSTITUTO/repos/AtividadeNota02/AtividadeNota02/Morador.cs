using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota02
{
    class Morador : Pessoa
    {
        // Metodos da classe Morador
        public Morador( string nome, int idade, double area, string corPorta)
        {
            this.Nome = nome;
            this.Idade = idade;
            this.Area = area;
            this.Cor = corPorta;
        }
            
        public void Mostrar()
        {
            Console.WriteLine(" Meu nome é " + this.Nome 
                          + "\n Tenho " + this.Idade + " Anos de idade " 
                          + "\n Habito em um apartamento de " + this.Area + " m2 Area " 
                          + "\n Com a porta cor " + this.Cor);
        }




    }
}
