using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtividadeNota01
{
    class Program
    {
        static void linha()
        {
            Console.WriteLine("-----------------------");
        }
        static void Main(string[] args)
        {
            Console.WriteLine("---- ATIVIDADE 01 PARA NOTA DS ----");

            Aluno aluninho = new Aluno(" Miguel ", 20); // criando obj aluninho classe Aluno com construtor    
            Console.WriteLine(aluninho.ToString());
            aluninho.irParaEscola();
            aluninho.comprimentar();
            aluninho.dizerIdade();

            Professor prof = new Professor(" Aurivam ", 30);
            Console.WriteLine(prof.ToString());
            prof.comprimentar();
            prof.dizerIdade();
            prof.explicar(" TECNICAS DE PROGRAMAÇÃO C# ");




            Console.ReadLine();
        } //  fechamneto da  classe principal
        
    } // fechamento da classe program 

} // fechamento do projeto 
