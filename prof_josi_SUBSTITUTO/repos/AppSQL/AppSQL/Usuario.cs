using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppSQL
{
    class Usuario
    {   
        // atributos da classe usuario
        private string user;
        private string senha;
        private string desc;

        // metodo construtor da classe Usuario
        public Usuario(string u, string s, string d)
        {
            this.user = u;
            this.senha = s;
            this.desc = d; 
        }

        //** metodo get e set da classe Usuario **//
        // get e set de user 
        public string User
        {
            get => user;
            set => user = value;
        }

        // get e set de senha 
        public string Senha
        {
            get => senha;
            set => senha = value;
        }

        // get e set de desc 
        public string Desc
        {
            get => desc;
            set => desc = value;
        }


    } // fechamento da classe
}
