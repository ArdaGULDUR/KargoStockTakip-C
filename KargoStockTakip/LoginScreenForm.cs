using Microsoft.Data.SqlClient;

namespace KargoStockTakip
{
    public partial class LoginScreenForm : Form
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-1LSLCR9\SQLEXPRESS;Initial Catalog=KargoStokTakip;User ID=sa;Password=***********;Encrypt=False;Trust Server Certificate=True");
        public LoginScreenForm()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string systemUserId = systemUserIDTextBox.Text;
            string systemUserPassword = systemUserPasswordTextBox.Text;

            try
            {
                connection.Open();
                SqlCommand sqlCommand = new SqlCommand("");




            }catch (Exception ex) {
                MessageBox.Show("hata!!" + ex.ToString);
            }
            finally
            {
                if (connection != null) {
                    connection.Close();
                }
                
            }
        }
    }
}
