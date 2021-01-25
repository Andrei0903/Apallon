using Apallon1;
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


namespace NavigationDrawerPopUpMenu2
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MainFrame.Navigate(new HomePage());
            Manager.MainFrame = MainFrame;
        }

        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Visible;
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;
        }

        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
           // UserControl usc = null;
            GridMain.Children.Clear();

          
        }


        private void MainFrame_ContentRendered(object sender, EventArgs e)
        {
            if (MainFrame.CanGoBack)
            {
                btn_back_f.Visibility = Visibility.Visible;
            }
            else
            {
               btn_back_f.Visibility = Visibility.Hidden;
            }
        }


       


        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
         
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void Btn_close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Btn_prof_go_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("В разработке", "Профиль");
        }

        private void Btn_help_go_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("В разработке", "Помощь");
        }

        private void Btn_go_LoginEnterPage_Click(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new LoginEnterPage());
        }

        private void Btn_back_f_MouseDown(object sender, MouseButtonEventArgs e)
        {
            this.MainFrame.GoBack();
        }

        private void Clic_btn_category_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Нужно что-то с этим делать. 
            
           

        }

        private void Btn_theme_dark_Click(object sender, RoutedEventArgs e)
        {

            BrushConverter DarkHeader = new BrushConverter();
            BrushConverter DarkFrom = new BrushConverter();
            BrushConverter Darkhamburger = new BrushConverter();
            BrushConverter DarkGridMenu = new BrushConverter();


            header_main.Background = (Brush)DarkHeader.ConvertFrom("#222831");  // FF161C24
            MainFrame.Background = (Brush)DarkFrom.ConvertFrom("#393e46"); //FFB4B4B4
            hamburger.Background = (Brush)Darkhamburger.ConvertFrom("#351f39"); //#fff
            GridMenu.Background = (Brush)DarkGridMenu.ConvertFrom("#351f39"); //FF5C99D6


            //GridMenu.Background = (Brush)DarkGridMenu.ConvertFrom("FFD369"); //FF31577E // FFD369

            //GridMenu.Background = Brushes.DarkSlateGray;
        }

        private void Btn_theme_Light_Click(object sender, RoutedEventArgs e)
        {
            BrushConverter LightHeader = new BrushConverter();
            BrushConverter LightFrom = new BrushConverter();
            BrushConverter Lighthamburger = new BrushConverter();
            BrushConverter LightGridMenu = new BrushConverter();

            header_main.Background = (Brush)LightHeader.ConvertFrom("#FF5C99D6");
            MainFrame.Background = (Brush)LightFrom.ConvertFrom("#FFDEDEDE");
            hamburger.Background = (Brush)Lighthamburger.ConvertFrom("#fff");

            GridMenu.Background = (Brush)LightGridMenu.ConvertFrom("#FF31577E"); 

        }

        private void Btn_theme_red_Click(object sender, RoutedEventArgs e)
        {
            BrushConverter redHeader = new BrushConverter();
            BrushConverter redFrom = new BrushConverter();
            BrushConverter redhamburger = new BrushConverter();
            BrushConverter redGridMenu = new BrushConverter();
            header_main.Background = (Brush)redHeader.ConvertFrom("#d35d6e");
            MainFrame.Background = (Brush)redFrom.ConvertFrom("#efb08c");
            hamburger.Background = (Brush)redhamburger.ConvertFrom("#f8d49d");

            GridMenu.Background = (Brush)redGridMenu.ConvertFrom("#f8d49d");

        }

        private void Btn_thenme_blue_Click(object sender, RoutedEventArgs e)
        {
            BrushConverter BlueHeader = new BrushConverter();
            BrushConverter BlueFrom = new BrushConverter();
            BrushConverter Bluehamburger = new BrushConverter();
            BrushConverter BlueGridMenu = new BrushConverter();

            header_main.Background = (Brush)BlueHeader.ConvertFrom("#0a043c");
            MainFrame.Background = (Brush)BlueFrom.ConvertFrom("#03506f");
            hamburger.Background = (Brush)Bluehamburger.ConvertFrom("#a3ddcb");

            GridMenu.Background = (Brush)BlueGridMenu.ConvertFrom("#a3ddcb");

        }
    }
}