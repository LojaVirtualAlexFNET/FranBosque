using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Cliente : PessoaFisica
    {
        public int IdCliente { get; set; }
        public DateTime DataNascimento { get; set; }
    }
}