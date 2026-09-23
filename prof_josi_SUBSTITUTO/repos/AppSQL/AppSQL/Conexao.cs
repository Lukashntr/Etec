using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient; //  importado biblioteca de conexão com o banco de dados MySql
using System.Data;
using System.Data.SqlClient;

namespace AppSQL
{
    public class Conexao 
    {
        // instanciando um obj SqlConnection
        SqlConnection conn = new SqlConnection();

        // construtor da classe conexao
        public Conexao()
        {
            conn.ConnectionString = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=escolarwelldb";
        }

        public SqlConnection conectar()
        {
            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            return conn;
        }

         public SqlConnection desconectar()
        {
            if(conn.State == ConnectionState.Open)
            {
                conn.Close();
            }

            return conn;
        }

        


    } // fechamento da classe conexão
}
