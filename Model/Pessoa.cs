using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Pessoa
    {
        public int IdPessoa { get; set; }
        public string Nome { get; set; }
        public Contato ContatoPessoa { get; set; }
        public Endereco EndecoPessoa { get; set; }

       
        public Pessoa()
        {
            EndecoPessoa = new Endereco();
            ContatoPessoa = new Contato();
        }
    }
}