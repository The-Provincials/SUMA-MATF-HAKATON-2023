using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Logication.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class GatePage : ContentPage
    {
        string imagePath;
        string tablePath;
        string text;
        string imeseme;

        public string Imeseme
        {
            get { return imeseme; }
            set
            {
                imeseme = value;
                OnPropertyChanged();
            }
        }


        public string ImagePath
        {
            get { return imagePath; }
            set
            {
                imagePath = value;
                OnPropertyChanged();
            }
        }
        public string TablePath
        {
            get { return tablePath; }
            set
            {

                tablePath = value;
                OnPropertyChanged();
            }
        }
        public string Text
        {
            get { return text; }
            set
            {
                text = value;
                OnPropertyChanged();
            }
        }
        public GatePage(int gate)
        {
            InitializeComponent();
            BindingContext = this;
            NavigationPage.SetHasNavigationBar(this, false);
            switch (gate)
            {
                case 0:
                    {
                        Imeseme = "OR";
                        ImagePath = "orsema.png";
                        TablePath = "ortabela.png";
                        Text = "OR logičke kapije su električni sklopovi koji vrše operaciju \"ili\" nad ulaznim signalima. Kada se na bilo koji ulaz kapije primijeni logička \"1\", izlaz kapije će biti postavljen na logičku \"1\". Ako su svi ulazi kapije postavljeni na logičku \"0\", tada će izlaz kapije biti postavljen na logičku \"0\". ";
                        break;
                    }
                case 1:
                    {
                        Imeseme = "AND";
                        ImagePath = "andsema.png";
                        TablePath = "andtabela.png";
                        Text = "AND logičke kapije su električni sklopovi koji vrše operaciju \"i\" nad ulaznim signalima. Kada su svi ulazi kapije postavljeni na logičku \"1\", izlaz kapije će biti postavljen na logičku \"1\". Ako je barem jedan ulaz kapije postavljen na logičku \"0\", tada će izlaz kapije biti postavljen na logičku \"0\". ";
                        break;
                    }
                case 2:
                    {
                        Imeseme = "NOT";
                        ImagePath = "notsema.png";
                        TablePath = "nottabela.png";
                        Text = "NOT logička kapija, takođe poznata kao inverterska kapija, je električni sklop koji izvršava operaciju negacije nad ulaznim signalom. To znači da ako je ulaz kapije postavljen na logičku \"1\", izlaz kapije će biti postavljen na logičku \"0\", a ako je ulaz kapije postavljen na logičku \"0\", izlaz kapije će biti postavljen na logičku \"1\".";
                        break;
                    }
            }
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }
    }
}