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
using System.Windows.Threading;

namespace Apallon1
{
    /// <summary>
    /// Логика взаимодействия для HomePage.xaml
    /// </summary>
    public partial class HomePage : Page
    {
        public HomePage()
        {
            InitializeComponent();
        //    Loaded += new RoutedEventHandler(Page_Loaded);

        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
           // DispatcherTimer ds = new DispatcherTimer();
          //  ds.Interval = TimeSpan.FromSeconds(1);
          //  ds.Tick += td_Tick;
          //  ds.Start();


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
          
          
        }


      

        //  private int integern = 1;
        // private void td_Tick(object sender, EventArgs e)
        // {
        //       integern++;

        //         Uri uri = new Uri(@"img/2.png", UriKind.Relative);
        //           ImageSource imgSource = new BitmapImage(uri);



        //            img_main.Source = imgSource;




    }

      

    }

