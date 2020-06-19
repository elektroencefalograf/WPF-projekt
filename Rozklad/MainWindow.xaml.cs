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
using System.Xml.Linq;

namespace Rozklad
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Poczatek.Items.Add("Brzeg");
            Poczatek.Items.Add("Opole Główne");
            Koniec.Items.Add("Brzeg");
            Koniec.Items.Add("Opole Główne");
            Godzina.Items.Add("6.00");
            Godzina.Items.Add("6.30");
            Godzina.Items.Add("7.00");
            Godzina.Items.Add("7.30");
            Godzina.Items.Add("8.00");
            Godzina.Items.Add("8.30");
            Godzina.Items.Add("9.00");
            Godzina.Items.Add("9.30");
            Godzina.Items.Add("10.00");
            Godzina.Items.Add("10.30");
            Godzina.Items.Add("11.00");
            Godzina.Items.Add("11.30");
        }

        private void Full(object sender, RoutedEventArgs e)
        {
            Full okno = new Full();
            okno.Show();
            Close();
        }

        private void Load()
        {

                string stacjaPoczatkowa = Poczatek.Text;
                string stacjaKoncowa = Koniec.Text;

                XDocument xdoc = XDocument.Load("rozklad2.xml");
                Szukany.ItemsSource = xdoc.Descendants("pociag").Where(pociag => pociag.Element("StajcaPoczatkowa").Value == stacjaPoczatkowa
                && pociag.Element("StacjaKoncowa").Value == stacjaKoncowa
                && Double.Parse(pociag.Element("GodzinaOdjazdu").Value) < Double.Parse(Godzina.Text) + 6.0
                && Double.Parse(pociag.Element("GodzinaOdjazdu").Value) > Double.Parse(Godzina.Text) - 1.0).Select(pociag => new
                {
                    StacjaPoczatkowa = stacjaPoczatkowa,
                    GodzinaOdjazdu = pociag.Element("GodzinaOdjazdu").Value,
                    StacjaKoncowa = stacjaKoncowa,
                    GodzinaPrzyjazdu = pociag.Element("GodzinaPrzyjazdu").Value,
                    StacjePosrednie = pociag.Element("StacjePosrednie").Value,
                    DniJazdy = pociag.Element("DniJazdy").Value
                }).ToList();
                if (Szukany.Items.Count == 0)
                {
                    MessageBox.Show("Brak pociągów");
                }
            
           
        }
        private void Search(object sender, RoutedEventArgs e)
        {
            try
            {
                Load();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Podano nie prawidłowe informacje o pociągu", "Błąd");
            }
        }
    }
}
