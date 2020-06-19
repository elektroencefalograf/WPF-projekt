using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Shapes;
using System.Xml.Linq;

namespace Rozklad
{
    /// <summary>
    /// Logika interakcji dla klasy Full.xaml
    /// </summary>
    public partial class Full : Window
    {
        public Full()
        {
            InitializeComponent();
            XDocument xdoc = XDocument.Load("rozklad2.xml");
            Rozklad.ItemsSource = xdoc.Descendants("pociag").Select(pociag => new
               {
                   StacjaPoczatkowa = pociag.Element("StajcaPoczatkowa").Value,
                   GodzinaOdjazdu = pociag.Element("GodzinaOdjazdu").Value,
                   StacjaKoncowa = pociag.Element("StacjaKoncowa").Value,
                   GodzinaPrzyjazdu = pociag.Element("GodzinaPrzyjazdu").Value,
                   StacjePosrednie = pociag.Element("StacjePosrednie").Value,
                   DniJazdy = pociag.Element("DniJazdy").Value
               }).ToList();
        }

        private void Return(object sender, RoutedEventArgs e)
        {
            MainWindow window = new MainWindow();
            window.Show();
            Close();
        }
    }
}
