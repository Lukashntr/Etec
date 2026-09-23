using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Loading
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            // CODIGO DO TIMER DA PROGRESBAR

            // verifica se a barra de carregamento for menor que cem
            if (barra.Value < 100)
            {
                // adiciana a barra o seu  proprio valor e assim iterandi a barra de carregamento
                barra.Value = barra.Value + 10;
            }
            else
            {
                //acaba o carregamento quando a barra chegar ao maximo
                timer1.Enabled = false;
                this.Visible = false;

                // abre a calculadora
                Calculadora calculadora = new Calculadora();
                calculadora.ShowDialog();
            }

        }
    } //  fechamento da class
}
