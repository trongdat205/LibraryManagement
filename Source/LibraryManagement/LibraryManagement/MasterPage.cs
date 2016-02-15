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
    public partial class MasterPage : Form
    {
        public MasterPage()
        {
            InitializeComponent();
            hideAdminMenu();
        }
        public void showAdminMenu()
        {
            menuLogin.Visible = false;
            menuSearch.Visible = false;
            menuManageBook.Visible = true;
            menuManageReader.Visible = true;
            menuReport.Visible = true;
            menuBorrow.Visible = true;
        }
        public void hideAdminMenu()
        {
            menuLogin.Visible = true;
            menuSearch.Visible = true;
            menuManageBook.Visible = false;
            menuManageReader.Visible = false;
            menuReport.Visible = false;
            menuBorrow.Visible = false;
        }

        private void menuLogin_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login newLogin = new Login();
            newLogin.Show();
        }

        private void menuSearch_Click(object sender, EventArgs e)
        {
            this.Hide();
            BookSearch newBookSearch = new BookSearch();
            newBookSearch.Show();
        
        }
        public void setTitle(string funcName)
        {
            this.Text = "Thư Viện Tà Nung - " + funcName;
        }
    }
}
