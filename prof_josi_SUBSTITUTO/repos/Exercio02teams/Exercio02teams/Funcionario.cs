using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercio02teams
{
    class Funcionario
    {
        //Atributos

        private string nome;
        private double sal_bruto; // obtem metodo()
        private double aumento;   // obtem metodo()
        private double imposto;   // obtem metodo()
        private double sal_liquido; 

        // Metodo construtor da classe Funcionario

        public Funcionario()
        {


        }

        // Metodos da classe Funcionario 

        public double receberSalario(double salarioBruto) // metodo para incrementar po salario a o atributo sal_bruto;
        {
            this.sal_bruto = salarioBruto;
            return this.sal_bruto;
        }
        
        public double PorcentagemDeAlmento(double Porcentagem_do_Aumento) // Metodo para incrementar uma uma porcentagem para aumentar o atributo sal
        {
           
            this.aumento = (this.sal_bruto / 100) * Porcentagem_do_Aumento;
            this.sal_liquido = this.sal_liquido + this.aumento ;

            return this.aumento;
        }

        public double pagarImposto(double impostoLocal) // Metodo para descontar um valor chamdado imposto do atributo sal_bruto
        {
            this.imposto = impostoLocal;
            this.sal_liquido = this.sal_bruto - this.imposto;

            return this.imposto;
        }

        // Get e set da Classe Funcionario 

        public string Nome { get => this.nome; set => this.nome = value; }

        public double Salario_Bruto { get => this.sal_bruto; set => this.sal_bruto = value;  }

        public double Aumento { get => this.aumento; set => this.aumento = value; }

        public double Imposto { get => this.imposto; set => this.imposto = value; }

        public double Salario_Liquido { get => this.sal_liquido; set => this.sal_liquido = value; }

        // Metodo para imprimir osvalores da calsse Funcionario

        public override string ToString()
        {
          return string.Concat(" O nome do funcionario é: " + this.Nome
                          + "\n O salario Bruto do funcionario é: " + this.Salario_Bruto
                          + "\n O imposto descontado do salario é: " + this.Imposto
                          + "\n O aumento adicionado ao salario é: " + this.Aumento
                          + "\n O Salario Liquido do Funcionario é: " + this.sal_liquido);
        }



    } // Fechamento da classe Funcionario

} // Fechamento do projeto
