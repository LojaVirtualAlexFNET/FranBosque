using Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class daoCadastroCliente
    {
        SqlConnection conn = null;
        string strConexao = ConfigurationManager.ConnectionStrings["connLBosque"].ConnectionString;

        public int Inserir(Cliente cliente)
        {
            int id;
            try
            {
                conn = new SqlConnection(strConexao);
                conn.Open();
                var cmd = new SqlCommand("procInserir", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nome", cliente.Nome);
                cmd.Parameters.AddWithValue("@DataNascimento", cliente.DataNascimento);
                cmd.Parameters.AddWithValue("@Cpf", cliente.Cpf);
                cmd.Parameters.AddWithValue("TelefoneResidencial", cliente.ContatoPessoa.TelefoneResidencial);
                cmd.Parameters.AddWithValue("TelefoneCelular", cliente.ContatoPessoa.TelefoneCelular);
                id = Convert.ToInt32(cmd.ExecuteScalar());
            }
            finally
            {
                if (conn == null)
                {
                    conn.Close();
                }
            }

            return id;
        }
        public void Alterar(Cliente cliente)
        {
            try
            {
                conn = new SqlConnection(strConexao);
                conn.Open();
                var cmd = new SqlCommand("procAlterarCliente", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", cliente.IdCliente);
                cmd.Parameters.AddWithValue("@Nome", cliente.Nome);
                cmd.Parameters.AddWithValue("@DataNascimento", cliente.DataNascimento);
                cmd.Parameters.AddWithValue("@Cpf", cliente.Cpf);
                cmd.Parameters.AddWithValue("TelefoneResidencial", cliente.ContatoPessoa.TelefoneResidencial);
                cmd.Parameters.AddWithValue("TelefoneCelular", cliente.ContatoPessoa.TelefoneCelular);
                cmd.ExecuteNonQuery();
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
        public void Excluir(int idCliente)
        {
            try
            {
                conn = new SqlConnection(strConexao);
                conn.Open();
                var cmd = new SqlCommand("procExluirCliente", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("IdCliente", idCliente);
                cmd.ExecuteNonQuery();
            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }

            }
        }

        public List<Cliente> Listar()
        {
            List<Cliente> lstCliente = null;
            try
            {
                conn = new SqlConnection(strConexao);
                conn.Open();
                var cmd = new SqlCommand("procListarClientes", conn);
                cmd.CommandType = CommandType.StoredProcedure;

            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return lstCliente;
        }
    }
}
