using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient; //  importado biblioteca de conexão com o banco de dados MySql

namespace AppSQL
{
    public partial class Formulario : Form
    {
        public Formulario() //iniciando o formulario 
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        { } // metodo inutilizavel

        // metodo do botão cadastrar
        private void btn_cadastrar_Click(object sender, EventArgs e)
        {

            // recebendo dados do formulario 
            string user = txt_nome.Text;
            string senha = txt_senha.Text;
            string desc = txt_desc.Text;

            Cadastro me = new Cadastro(user,senha,desc);

            MessageBox.Show(me.mensagem);
          
        }// fechamento do metodo de botão cadastrar


    } // fechamento da class 
}
