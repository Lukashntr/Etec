using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace IRSforms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btn_calcular_Click(object sender, EventArgs e)
        {
            // variavel de entrada 
            double sal;

            // variaveis de resultado
            double salliq;
            double irs;
            double segsoc;

            // colocando dados dos inputs nas variaveis .entrada
            sal = double.Parse(textbox_sal.Text);

            //metodo de calculo do IRS .processamento
            irs = (sal / 100) * 15;
            sal = sal - irs;

            //metodo de calculo SEGURANÇA SOCIAL .processamento
            segsoc = (sal / 100) * 12;
            sal = sal - segsoc;

            //definindo o salario liquido 
            salliq = sal;

            //Saida de dados processados .saida
            textbox_irs.Text = Convert.ToString(irs); // saida do calculo do irs
            textbox_seg.Text = Convert.ToString(segsoc); // saida do calculo de segurança social
            textbox_salliq.Text = Convert.ToString(salliq); // saida do salario liquido 
            
        }
    }
}
