using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient; //  importado biblioteca de conexão com o banco de dados MySql

namespace AppSQL
{
    class Cadastro
    {
        Conexao conexao = new Conexao(); // obj da classe conexão
        SqlCommand cmd = new SqlCommand(); // obj da classe SqlCommand
        public string mensagem; // atributo mensagem

        // construtor Cadastro 
        public Cadastro(String nome, String senha, String desc)
        {   
            // executando metodo de recebemento string 
            cmd.CommandText = " INSERT INTO (nome, senha, desc)" +
                              " VALUE (@nome, @senha, @desc)";

            // substituindo parametros
            cmd.Parameters.AddWithValue("@nome",nome);
            cmd.Parameters.AddWithValue("@senha",senha);
            cmd.Parameters.AddWithValue("@desc", desc);


            // tenta executar a conexão
            try
            {   
                // recebendo conexão
                cmd.Connection = conexao.conectar();

                // executar comando 
                cmd.ExecuteNonQuery();

                // fechando conexão
                conexao.desconectar();

                this.mensagem = " Cadastrado com sucesso ";

            }catch(SqlException erro){
                this.mensagem = " Erro ao tentar se conectar com o banco de dados " + erro;
            }


        } // fechamento do construtor


    } // fechamento da classe Cadastro
}
