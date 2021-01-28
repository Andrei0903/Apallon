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
    /// Логика взаимодействия для testingPage.xaml
    /// </summary>
    public partial class testingPage : Page
    {
        public testingPage()
        {
            InitializeComponent();

            DGTable.ItemsSource = SuperShopEntities1.Getcontext().Клиенты.ToList();
        }

        private void TextBox_SourceUpdated(object sender, DataTransferEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string Password = PasswordEnter.Text.Trim();
            string Login = loginEnter.Text.Trim();


            if (Login  == "")
            {
                loginEnter.ToolTip = ("Логин не может быть пустым");
                MessageBox.Show("Логин не может быть пустым");
            } else if (Password.Length < 6)
            {
                MessageBox.Show("Пароль не может быть корече 6 знаков");
            }
            else
            {
               
                MessageBox.Show("Все хорошо");  
                
                //Нужно активироать вход
              
            
            }
        }
    }
}
