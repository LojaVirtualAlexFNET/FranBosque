using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class PessoaFisica : Pessoa
    {
        public int IdCpf { get; set; }
        public string Cpf { get; set; }
        public string Rg { get; set; }
    
    }
}