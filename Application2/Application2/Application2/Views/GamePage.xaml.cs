using SkiaSharp;
using SkiaSharp.Views.Forms;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using TouchTracking;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Shapes;
using Xamarin.Forms.Xaml;

namespace Application2.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class GamePage : ContentPage
    {
        SKBitmap bitmap;
        SKMatrix matrix = SKMatrix.CreateIdentity();

        long touchId = -1;
        SKPoint previousPoint;


        public GamePage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);

            string resourceID = "Application2.Resources.and.jpg";
            Assembly assembly = GetType().GetTypeInfo().Assembly;

            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                bitmap = SKBitmap.Decode(stream);
            }
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }

        private void OnTouchEffectAction(object sender, TouchActionEventArgs args)
        {
            var pt = args.Location;
            SKPoint point =
                new SKPoint((float)(canvasView.CanvasSize.Width * pt.X / canvasView.Width),
                            (float)(canvasView.CanvasSize.Height * pt.Y / canvasView.Height));

            switch (args.Type)
            {
                case TouchActionType.Pressed:
                    // Find transformed bitmap rectangle
                    SKRect rect = new SKRect(0, 0, bitmap.Width, bitmap.Height);
                    rect = matrix.MapRect(rect);

                    // Determine if the touch was within that rectangle
                    if (rect.Contains(point))
                    {
                        touchId = args.Id;
                        previousPoint = point;
                    }
                    break;

                case TouchActionType.Moved:
                    if (touchId == args.Id)
                    {
                        // Adjust the matrix for the new position
                        matrix.TransX += point.X - previousPoint.X;
                        matrix.TransY += point.Y - previousPoint.Y;
                        previousPoint = point;
                        canvasView.InvalidateSurface();
                    }
                    break;

                case TouchActionType.Released:
                    if (matrix.TransY >= 0.8*canvasView.CanvasSize.Height ||
                        matrix.TransY <= 0.2*canvasView.CanvasSize.Height)
                    {
                        matrix = SKMatrix.CreateIdentity();
                    }
                    break;
                case TouchActionType.Cancelled:
                    touchId = -1;
                    break;
            }
        }

        private bool IsInProperArea(float x, float y)
        {
            if(y >= 0.2*DeviceDisplay.MainDisplayInfo.Height &&
                y <= 0.8 * DeviceDisplay.MainDisplayInfo.Height)
            {
                return true;
            }
            return false;
        }

        void OnCanvasViewPaintSurface(object sender, SKPaintSurfaceEventArgs args)
        {
            SKImageInfo info = args.Info;
            SKSurface surface = args.Surface;
            SKCanvas canvas = surface.Canvas;

            canvas.Clear();

            // Display the bitmap
            canvas.SetMatrix(matrix);
            canvas.DrawBitmap(bitmap, new SKPoint());

            canvas.SetMatrix(SKMatrix.CreateIdentity());
            canvas.DrawBitmap(bitmap, new SKPoint());
        }
    }
}