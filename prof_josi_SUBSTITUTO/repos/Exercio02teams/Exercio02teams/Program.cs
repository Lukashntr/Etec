using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercio02teams
{
    class Program
    {      
        // Metodos e funções 
        static void linha()
        {
            Console.WriteLine("======================================");
        }


        static void Main(string[] args)
        {
            // Variaveis


            // objetos de classe

            Funcionario miguel = new Funcionario();

            // Programa principal de entrada de dados 

            Console.WriteLine("=== baixa de pagamento ===");
            linha();

            Console.Write(" Informe o nome do funcionario: "); // entrada do nome do funcionario 
            miguel.Nome = Console.ReadLine();

            Console.Write(" Informe o Salario do funcionario: "); // entrada do salario bruto do funcionario
            miguel.Salario_Bruto = double.Parse(Console.ReadLine());

            //entrada do imposto a ser descontado do salario bruto do funcionario 
            Console.Write(" Informe o imposto a ser descontado do funcionario: ");
            miguel.Imposto = double.Parse(Console.ReadLine());

           // entrada da porcentagem a ser adicionada ao salario liquido
            Console.Write(" Informe a porcentagem de aumento do funcionario com base no salario: ");
            miguel.Aumento = double.Parse(Console.ReadLine());

            miguel.receberSalario(miguel.Salario_Bruto);
            miguel.pagarImposto(miguel.Imposto);
            miguel.PorcentagemDeAlmento(miguel.Aumento);

            Console.WriteLine(miguel.ToString());

            Console.ReadLine();









        } // Fechamento da classe principal

    }// Fechamento da class program

}// fechamento do projeto 
