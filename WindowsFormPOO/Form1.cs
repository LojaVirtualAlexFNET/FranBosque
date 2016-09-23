using Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormPOO
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void btnListar_Click(object sender, EventArgs e)
        {
            List<Cliente> lstCli = new List<Cliente>();
            Cliente clientePf = new Cliente();
            clientePf.Nome = "Carmen";
            clientePf.Cpf = "2132121212";
            clientePf.EndecoPessoa.RuaAvenida = "Rua A 31";
            lstCli.Add(clientePf);

            Cliente cli2 = new Cliente();
            cli2.Nome = "Chico";
            cli2.Rg = "323232323";
            cli2.EndecoPessoa.CidadeEndereco.Nome = "Suzano";
            lstCli.Add(cli2);

            int qtdPessoas = lstCli.Count;
            MessageBox.Show("" + qtdPessoas);
            foreach (var c1 in lstCli)
            {
                MessageBox.Show(c1.Nome + c1.Cpf + c1.EndecoPessoa.RuaAvenida);
            }
            foreach (var c2 in lstCli)
            {
                MessageBox.Show(c2.Nome + c2.Rg + c2.EndecoPessoa.CidadeEndereco.Nome);
            }
        }
    }
}
