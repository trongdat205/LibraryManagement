using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LibraryManagement
{
    public partial class Login : MasterPage
    {
        public Login()
        {
            InitializeComponent();
        }


        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(txtMatKhau.Text=="1"&&txtTenDangNhap.Text=="admin")
            {
                BookBorrow newform = new BookBorrow();
                newform.Show();
            }

        }
    }
}
