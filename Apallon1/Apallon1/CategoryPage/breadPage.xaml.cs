using HorizontalList;
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

namespace Apallon1.CategoryPage
{
    /// <summary>
    /// Логика взаимодействия для breadPage.xaml
    /// </summary>
    public partial class breadPage : Page
    {
        public breadPage()
        {
            InitializeComponent();
            var products = GetProducts();
            if (products.Count > 0)
                ListViewProducts.ItemsSource = products;
        }

        private List<Product> GetProducts()
        {
            return new List<Product>()
      {
        new Product("Product 1", 205.46, "/CategoryPage/img/bread1.jpg"),
     
      };
        }
    }
}