using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio01teams
{
    class Program
    {   

        // metodo que imprime uma liha na tela 
        static void linha()
        {
            Console.WriteLine("===================================================");
        }

        static void Main(string[] args)
        {
            //Retangulo ret = null;

            Retangulo ret = new Retangulo(); // Obejeto da classe retangulo 

            // Inicio do programa 
            Console.WriteLine(" === PROGRAMA QUE CALCULA A AREA, PERIMETRO E DIAGONAL DE UM RETANGULO === ");
            linha();
            Console.Write(" Informe a largura do retangulo: ");
            ret.Largura = double.Parse(Console.ReadLine());
            linha();
            Console.Write(" Informe a altura do retangulo: ");
            ret.Altura = double.Parse(Console.ReadLine());

            Console.WriteLine(" === CALCULADO === ");

            Console.WriteLine(ret.Area(ret.Largura, ret.Altura));
            Console.WriteLine(ret.Perimetro(ret.Largura, ret.Altura));
            linha();
            Console.WriteLine(ret.ToString());
            Console.ReadLine();

            



        }
    }
}
