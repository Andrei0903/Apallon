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



        public LoginEnterPage()
        {
            InitializeComponent();

            SuperShopEntities1.Getcontext().Клиенты.ToList();


        }


        private void Btn_go_reg_page_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new RegisterUserPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string login = EnterName.Text.Trim();
            string password = EnterPassword.Password.Trim();

            Клиенты authUser = null;
            using (SuperShopEntities1 db = new SuperShopEntities1())
            {
                authUser = db.Клиенты.Where(d => d.логин == login && d.пароль == password).FirstOrDefault();
            }

            if (authUser != null)
            {
                MessageBox.Show("Имя: " + authUser.имя + " | " + "Фамилия: " + authUser.фамилия);
            }
            else
            {
                MessageBox.Show("Пользователь не найден");
            }
        }

        private void Btn_go_RegisterUserPage_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
