using Application2.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Application2.Model;

using Xamarin.Forms;
using System.IO;
using System.Reflection;

namespace Application2
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }

        private void Button_Clicked(object sender, EventArgs e)
        {

            string resourceID = "Application2.Resources.database.txt";
            Assembly assembly = GetType().GetTypeInfo().Assembly;
            Tuple<string, int, List<bool>> a;
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                a = EvaluationTools.GenerateRandomGame(stream);
            }
            DisplayAlert("AA", a.Item1.ToString() + " " + a.Item2.ToString() + a.Item3.Count, "OK");
            Navigation.PushAsync(new GamePage("A+B+C+A+B+C+A+B+C+A+B+C"));
        }
        private void Button_about_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AboutPage());
        }
    }
}
