using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota02
{
    class Program
    {
        static void linha()
        {
            Console.WriteLine("---------------");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("---- ATIVIDADE 02 PARA NOTA DS ----");

            Apartamento ap = new Apartamento(50, "Branca");
            ap.MostrarHabitacao();
            ap.MostrarPorta();
            linha();

            Morador Morador1 = new Morador("Miguel", 18, 50," Branca");
            Morador1.Mostrar();
            Morador1.MostrarHabitacao();
            Morador1.MostrarPorta();
            Morador1.comprimentar();

            Console.ReadLine();




        } // fechamento da classe principal

    } // fechamento da class Program

}// fechamento do Projeto 
