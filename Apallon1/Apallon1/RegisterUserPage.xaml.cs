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
    /// Логика взаимодействия для RegisterUserPage.xaml
    /// </summary>
    public partial class RegisterUserPage : Page
    {

        //private RegisterUserPage _correntRegister = new RegisterUserPage();
        public RegisterUserPage()
        {
            InitializeComponent();
           

            var db = SuperShopEntities.Getcontext().Клиенты.ToList();
        }

        public int Id { get; private set; }

        private void Back_go_LoginEnterPage_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new LoginEnterPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e) // кнопка зарегестрировать 
        {

            string userName = textBoxNamef_reg.Text.Trim();
            string userLastName = textBoxNameLast_reg.Text.Trim();
            string phone = textBoxPhone.Text.Trim();
            string login = textBoxLogin.Text.Trim();
            string password = PasswordBox.Password;
            string password1 = PasswordBox.Password;

            if (login.Length < 5)
            {
                textBoxLogin.ToolTip = "Минимум 6 символов";
                textBoxLogin.Background = Brushes.DarkRed;
            }
            else if (password.Length < 5)
            {
                PasswordBox.ToolTip = "Минимум 6 символов";
                PasswordBox.Background = Brushes.DarkRed;
            }
            else if (password != password1)
            {
                PasswordBox.ToolTip = "Пароль не совпадает";
                PasswordBox.Background = Brushes.DarkRed;
            }
            else if (userName == "") 
            {
                textBoxNamef_reg.ToolTip = "Введите имя";
                textBoxNamef_reg.Background = Brushes.DarkRed;
            }
            else if (phone == "")
            {
                textBoxPhone.ToolTip = "Вы забыли про телефон";
                textBoxPhone.Background = Brushes.DarkRed;

            }



            else
            {
                textBoxLogin.ToolTip = "";
                textBoxLogin.Background = Brushes.Transparent;

                MessageBox.Show("Все хорошо");
            }
        }
    }
}

