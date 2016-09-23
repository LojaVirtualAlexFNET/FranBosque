namespace Model
{
    public class Endereco
    {
        public int idEndereco { get; set; }
        public string RuaAvenida{ get; set; }
        public string Cep { get; set; }
        public string  Bairro { get; set; }
        public Cidade CidadeEndereco { get; set; }
         public Endereco()
        {
            CidadeEndereco = new Cidade();
        }
    }
}