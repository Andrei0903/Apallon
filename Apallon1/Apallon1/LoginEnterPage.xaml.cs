using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Apallon1
{
    /// <summary>
    /// Логика взаимодействия для LoginEnterPage.xaml
    /// </summary>
    public partial class LoginEnterPage : Page
    {

        List<string> nameList;

        public LoginEnterPage()
        {
            InitializeComponent();

            SuperShopEntities.Getcontext().Клиенты.ToList();

            /*
            try
            {
                SuperShopEntities db = new SuperShopEntities();

                var user = db.Клиенты.Where(d => d.isenabled == true);
                nameList = new List<string>();

                foreach (var item in user)
                {
                    nameList.Add(item.имя + " " + item.фамилия);
                }

            }
            catch (Exception er)
            {
                MessageBox.Show(er.ToString());
            }
            */
        }

        private void Btn_go_reg_page_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new RegisterUserPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Btn_go_RegisterUserPage_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
