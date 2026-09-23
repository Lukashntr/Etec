using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio01teams
{
    class Retangulo
    {   
        // Atributos da classe Retangulo
        private double largura;
        private double altura;


        //Construtor da classe retangulo

        /*
        public Retangulo(double largura, double altura)
        {
            this.largura = largura;
            this.altura = altura;
        }
        */

        // metodos da classe retangulo 

        //metodo para calcular e imprimir a area do triangulo
        public double Area(double l, double a)
        {   
            // calculo da area
            double largura = l;
            double altura = a;
            double area = (largura * altura);

            return area;
            
        }

        //metodo para calcular e imprimir o perimetro do triangulo
        public double Perimetro(double l, double a)
        {
            double largura = l;
            double altura = a;

            double perimetro = (2 * largura) + (2 * altura);
            return perimetro;
        }

        //metodo para calcular e imprimir o diagonal do triangulo 
       

        // Get e set da Classe Retangulo 

        public double Largura { get => largura; set => largura = value; } // get e set do atributo largura 
        public double Altura { get => altura; set => altura = value; } // get e set do atributo altura

        // Metodo ToString da classe Retangulo Imprimindo os valores dos atributos

        public override string ToString()
        {
            // retorna as informações por objeto chamando esse metodo
            return string.Concat(" A Area é: " + Area(largura, altura)
                            + "\n O perimetro é: " + Perimetro(largura, altura)
                            + "\n A largura é: " + largura 
                            + "\n A altura é: " + Altura );
        }

        



    } // Fechamento da classe Retangulo

} // Fechamento do projeto
