using Application2.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Application2.Model;
using Xamarin.Forms;

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
            Tuple<string, int, List<bool>> a = EvaluationTools.GenerateRandomGame();
            DisplayAlert("AA", a.Item1.ToString() + " " + a.Item2.ToString() + a.Item3.ToString(), "OK");
            Navigation.PushAsync(new GamePage("A+B+C+A+B+C+A+B+C+A+B+C"));
        }
        private void Button_about_Clicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new AboutPage());
        }
    }
}
