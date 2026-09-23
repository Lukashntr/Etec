using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota02
{
    abstract class Habitacao : Porta
    {
        // Atributos da classe Habitacao 
        private double area;
       
        // metodos da classe Habitacao
        public void MostrarHabitacao()
        {
            Console.WriteLine(" Eu sou uma Habitação minha area é " + this.Area + " m2 "
                           +"\n E a cor da minha porta é " + this.Cor);
        }

        // metodos especiais da classe habitacao
        public double Area { get => area; set => area = value; } // metodo para o acesso e modificação do atributo area



    } // Fechamento da classe Habitacao

} // Fechamento do projeto
