using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Logication.Models;
using Logication.Views;

namespace Logication
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

            string resourceID = "Logication.Resources.database.txt";
            Assembly assembly = GetType().GetTypeInfo().Assembly;
            Tuple<string, int, List<bool>> a;
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                a = EvaluationTools.GenerateRandomGame(stream);
            }
            //DisplayAlert("AA", a.Item1.ToString() + " " + a.Item2.ToString() + a.Item3.Count, "OK");
            Navigation.PushAsync(new GamePage(a));
        }
        private void Button_about_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AboutPage());
        }
    }
}
