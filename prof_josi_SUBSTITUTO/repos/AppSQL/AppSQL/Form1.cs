using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppSQL
{
    public partial class Form1 : Form
    {
        public Form1() // iniciação do formulario
        {
            InitializeComponent();
        }

        // metodo basico de verificação de usuario
        private void btn_logar_Click(object sender, EventArgs e)
        {   
            // declarando variaveis de login 
            string user = "admin";
            string pass = "12345";

            // recebendo dados das TextBox de Login e Senha 
            string usuarioText = txt_usuario.Text;
            string senhaText = txt_senha.Text;

            // verificação de usuario 
            if (usuarioText == user & senhaText == pass)
            {
                Formulario OutroForm = new Formulario();
                OutroForm.ShowDialog();

            }
            else { 
            
                MessageBox.Show(" NÃO FOI POSSIVEL ACESSAR O FORMULARIO DE CADASTRO  ");
            }// fechamento do if 

        } // fechamento do metodo botão logar
    }
}
