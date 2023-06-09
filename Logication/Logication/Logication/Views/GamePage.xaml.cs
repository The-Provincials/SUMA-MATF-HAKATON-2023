﻿using SkiaSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Logication.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using SkiaSharp.Views.Forms;
using System.IO;
using System.Reflection;
using TouchTracking;

namespace Logication.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class GamePage : ContentPage
    {
        enum GateType
        {
            None,
            And,
            Or,
            Not,
            In,
            Out
        }

        SKBitmap bitmapAnd = null, bitmapOr = null,
        bitmapNot = null, bitmapOut = null,
        bitmapIn = null, bitmapTrashCan = null;
        SKMatrix matrix = SKMatrix.CreateIdentity();
        SKRect rectAnd, rectOr, rectNot, rectClear, rectOut;
        SKRect[] rectsIn;
        LogicObject firstClicked = null, outGate = null;
        LogicObject[] inGates;

        SKPoint firstClickedPoint;
        int lowerCoordinate = 0;

        public static bool submitted = false, cleared = true;

        GateType movingGate = GateType.None;
        //bool movingAnd = false, movingOr = false, movingNot = false;
        List<Tuple<SKMatrix, GateType, LogicObject>> DrawnObjectMatrices = new List<Tuple<SKMatrix, GateType, LogicObject>>();
        List<Tuple<SKPoint, SKPoint>> LinesForDrawing = new List<Tuple<SKPoint, SKPoint>>();

        public static float shellPercentage = 0.2f;
        private int numOfVariables, numOfComponents, myNumOfComponents;

        long touchId = -1;
        SKPoint previousPoint;

        private string formula = "";
        private bool[] solution;

        public string Formula
        {
            get { return formula; }
            set { if (value == formula) { return; } formula = value; OnPropertyChanged(); }
        }

        public GamePage( Tuple<string, int, int, List<bool>> a)
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
            BindingContext = this;
            Formula = a.Item1;
            numOfVariables = a.Item2;
            numOfComponents = a.Item3;

            solution = new bool[1 << numOfVariables];
            for(int i = 0; i < (1<<numOfVariables); i++)
            {
                int newI = 0, idx = i;
                for(int j = 0; j < numOfVariables; ++j)
                {
                    newI <<= 1;
                    newI |= idx & 1;
                    idx >>= 1;
                }
                solution[newI] = a.Item4[i];
            }
        }

        private void Back_Clicked(object sender, EventArgs e)
        {
            ClearAll();
            Navigation.PopAsync();
        }

        private void Submit_Clicked(object sender, EventArgs e)
        {
            List<bool> result = Test();

            if (result == null)
                return;

            bool correct = true;
            for(int i = 0; i < (1<<numOfVariables); ++i)
            {
                correct &= (result[i] == solution[i]);
            }

            string msg = "";

            if (correct)
            {
                msg = "Tačno rešenje!\n";
                msg += "Vaše rešenje koristi " + myNumOfComponents.ToString() + " AND i OR elemenata.\n";
                msg += "Komisijsko rešenje koristi " + numOfComponents.ToString() + " elemenata\n";
                if(myNumOfComponents <= numOfComponents)
                {
                    msg += "Bravo!";
                }
            } else
            {
                msg += "Ponovo razmotrite kolo!";
            }

            DisplayAlert("Testiran Iskaz", msg, "OK");
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
                    // Where was the touch located
                    if (matrix.MapRect(rectAnd).Contains(point))
                    {
                        touchId = args.Id;
                        previousPoint = point;
                        movingGate = GateType.And;
                    }
                    else if (matrix.MapRect(rectOr).Contains(point))
                    {
                        touchId = args.Id;
                        previousPoint = point;
                        movingGate = GateType.Or;
                    }
                    else if (matrix.MapRect(rectNot).Contains(point))
                    {
                        touchId = args.Id;
                        previousPoint = point;
                        movingGate = GateType.Not;
                    }
                    else if (point.Y > lowerCoordinate)
                    {
                        ClearAll();
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
                    if (movingGate != GateType.None &&
                        (matrix.MapRect(GateToRect(movingGate)).MidX >= 0.9 * canvasView.CanvasSize.Width ||
                        matrix.MapRect(GateToRect(movingGate)).MidX <= 0.1 * canvasView.CanvasSize.Width ||
                        matrix.TransY >= -shellPercentage * canvasView.CanvasSize.Height))
                    {
                        // No effect
                    }
                    else if (movingGate != GateType.None)
                    {
                        AddLogicObject();
                        
                    } else
                    {
                            foreach (Tuple<SKMatrix, GateType, LogicObject>
                                matrixGateType in DrawnObjectMatrices)
                            {
                                if ((ClicksOut(point.X, point.Y) && firstClicked != null &&
                                    matrixGateType.Item2 == GateType.Out) ||
                                    (matrixGateType.Item2 != GateType.None &&
                                    matrixGateType.Item2 != GateType.In &&
                                    matrixGateType.Item2 != GateType.Out &&
                                    matrixGateType.Item1.MapRect(
                                    GateToRect(matrixGateType.Item2))
                                    .Contains(point)))
                                {
                                    ProcessClick(matrixGateType, matrixGateType.Item1.MapRect(GateToRect(matrixGateType.Item2)));
                                }
                                if (matrixGateType.Item2 == GateType.In)
                                {
                                    for (int i = 0; i < numOfVariables; ++i)
                                    {
                                        if (inGates[i].Id != matrixGateType.Item3.Id)
                                            continue;
                                        SKRect rect = rectsIn[i];
                                        if (matrixGateType.Item1.MapRect(rect)
                                            .Contains(point))
                                        {
                                            ProcessClick(matrixGateType, rect);
                                        }
                                    }
                                }
                            }
                    }
                    canvasView.InvalidateSurface();
                    movingGate = GateType.None;
                    matrix = SKMatrix.CreateIdentity();
                    break;
                case TouchActionType.Cancelled:
                    touchId = -1;
                    break;
            }
        }

        void ProcessClick(Tuple<SKMatrix, GateType, LogicObject> matrixGateType,
            SKRect rect)
        {
            if (firstClicked != null)
            {
                try
                {
                    var newLine =
                    new Tuple<SKPoint, SKPoint>
                        (new SKPoint(firstClickedPoint.X, firstClickedPoint.Y),
                        new SKPoint(
                        (int)(rect.Left + bitmapAnd.Width * 0.1f),
                        rect.MidY));
                    if (LinesForDrawing.Contains(newLine))
                    {
                        matrixGateType.Item3.RemoveSource(firstClicked);
                        LinesForDrawing.Remove(newLine);
                    }
                    else
                    {
                        matrixGateType.Item3.AddSource(firstClicked);
                        LinesForDrawing.Add(newLine);
                    }
                }
                catch (Exception)
                {
                    DisplayAlert("GREŠKA", "Ovo nije moguće", "OK");
                }
                finally
                {
                    firstClicked = null;
                }
            }
            else
            {
                firstClicked = matrixGateType.Item3;
                firstClickedPoint = new SKPoint(rect.Right, rect.MidY);
            }
        }

        void OnCanvasViewPaintSurface(object sender, SKPaintSurfaceEventArgs args)
        {
            if (bitmapAnd == null)
            {
                InitBitmaps();
            }

            SKImageInfo info = args.Info;
            SKSurface surface = args.Surface;
            SKCanvas canvas = surface.Canvas;

            SKPoint andPoint = new SKPoint(0, lowerCoordinate);
            SKPoint orPoint = new SKPoint((int)(canvasView.CanvasSize.Width / 5) * 1, lowerCoordinate);
            SKPoint notPoint = new SKPoint((int)(canvasView.CanvasSize.Width / 5) * 2, lowerCoordinate);
            SKPoint textPoint = new SKPoint((int)(canvasView.CanvasSize.Width / 5) * 4, lowerCoordinate);
            SKPoint outPoint = new SKPoint((int)(canvasView.CanvasSize.Width * 9 / 10),
                0.5f / shellPercentage * bitmapAnd.Width - bitmapAnd.Width / 2);

            canvas.Clear();

            // Display the bitmap
            canvas.SetMatrix(matrix);
            if (movingGate == GateType.And)
                canvas.DrawBitmap(bitmapAnd, andPoint);
            if (movingGate == GateType.Or)
                canvas.DrawBitmap(bitmapOr, orPoint);
            if (movingGate == GateType.Not)
                canvas.DrawBitmap(bitmapNot, notPoint);

            foreach (Tuple<SKMatrix, GateType, LogicObject> matrixGateType in DrawnObjectMatrices)
            {
                canvas.SetMatrix(matrixGateType.Item1);
                if (matrixGateType.Item2 == GateType.And)
                {
                    canvas.DrawBitmap(bitmapAnd, andPoint);
                }
                if (matrixGateType.Item2 == GateType.Or)
                {
                    canvas.DrawBitmap(bitmapOr, orPoint);
                }
                if (matrixGateType.Item2 == GateType.Not)
                {
                    canvas.DrawBitmap(bitmapNot,
                        notPoint);
                }
            }

            canvas.SetMatrix(SKMatrix.CreateIdentity());

            foreach (Tuple<SKPoint, SKPoint> twoPoints in LinesForDrawing)
            {
                canvas.DrawLine(twoPoints.Item2, twoPoints.Item1,
                    new SKPaint
                    {
                        StrokeWidth = 10,
                        Color = new SKColor(0, 0, 0)
                    });
            }
            canvas.DrawBitmap(bitmapAnd, andPoint);
            canvas.DrawBitmap(bitmapOr, orPoint);
            canvas.DrawBitmap(bitmapNot, notPoint);
            canvas.DrawBitmap(bitmapOut, outPoint);

            for (int i = 0; i < numOfVariables; ++i)
            {
                canvas.DrawBitmap(bitmapIn, new SKPoint(0, (canvasView.CanvasSize.Height / (2 * numOfVariables + 1)) * (2 * i + 1)));
                canvas.DrawText(((char)('A' + i)).ToString(),
                new SKPoint(0,
                    (canvasView.CanvasSize.Height / (2 * numOfVariables + 1)) * (2 * i + 2))
                    , new SKPaint { TextSize = 100.0f });
            }

            if (cleared)
            {
                cleared = false;
                AddOutGate();
                AddInGates();
            }
            else
            {
                canvas.DrawBitmap(bitmapTrashCan, textPoint);
            }

        }

        private void AddLogicObject()
        {
            LogicObject objectToAdd = null;
            if (movingGate == GateType.And)
            {
                objectToAdd = new AndObject();
                ++myNumOfComponents;
            }
            if (movingGate == GateType.Or)
            {
                objectToAdd = new OrObject();
                ++myNumOfComponents;
            }
            if (movingGate == GateType.Not)
            {
                objectToAdd = new NotObject();
            }

            DrawnObjectMatrices.Add(new Tuple<SKMatrix, GateType, LogicObject>(
                new SKMatrix(matrix.Values), movingGate, objectToAdd));
        }

        void AddInGates()
        {
            inGates = new LogicObject[numOfVariables];
            for (int i = 0; i < numOfVariables; ++i)
            {
                inGates[i] = new InObject(i.ToString(), false);
                DrawnObjectMatrices.Add(new Tuple<SKMatrix, GateType, LogicObject>(
                SKMatrix.CreateIdentity(), GateType.In, inGates[i]));
            }
        }

        void AddOutGate()
        {
            outGate = new OutObject();

            DrawnObjectMatrices.Add(new Tuple<SKMatrix, GateType, LogicObject>(
                SKMatrix.CreateIdentity(), GateType.Out, outGate));
        }

        private void InitBitmaps()
        {
            shellPercentage = (float)(canvasView.CanvasSize.Width / 5.0 / canvasView.CanvasSize.Height);
            lowerCoordinate = (int)(canvasView.CanvasSize.Height * (1 - shellPercentage));

            string resourceID = "Logication.Resources.and.jpg";
            Assembly assembly = GetType().GetTypeInfo().Assembly;

            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapAnd = new SKBitmap((int)(canvasView.CanvasSize.Width / 5),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapAnd, SKFilterQuality.Low);
            }
            rectAnd = new SKRect(0, 0 + lowerCoordinate, bitmapAnd.Width, bitmapAnd.Height + lowerCoordinate);

            resourceID = "Logication.Resources.or.jpg";
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapOr = new SKBitmap((int)(canvasView.CanvasSize.Width / 5),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapOr, SKFilterQuality.Low);
            }
            rectOr = new SKRect(bitmapAnd.Width * 1, 0 + lowerCoordinate, bitmapOr.Width + bitmapAnd.Width * 1, bitmapOr.Height + lowerCoordinate);

            resourceID = "Logication.Resources.not.jpg";
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapNot = new SKBitmap((int)(canvasView.CanvasSize.Width / 5),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapNot, SKFilterQuality.Low);
            }
            rectNot = new SKRect(1 * (bitmapOr.Width + bitmapAnd.Width), 0 + lowerCoordinate, 1 * (bitmapOr.Width + bitmapAnd.Width) + bitmapNot.Width, bitmapNot.Height + lowerCoordinate);

            resourceID = "Logication.Resources.outgate.jpg";
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapOut = new SKBitmap((int)(canvasView.CanvasSize.Width / 10),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapOut, SKFilterQuality.Low);
            }
            rectOut = new SKRect(canvasView.CanvasSize.Width * 9 / 10, 0.5f / shellPercentage * bitmapAnd.Width - bitmapAnd.Width / 2, canvasView.CanvasSize.Width, 0.5f / shellPercentage * bitmapAnd.Width + bitmapAnd.Width / 2);


            resourceID = "Logication.Resources.in.jpg";
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapIn = new SKBitmap((int)(canvasView.CanvasSize.Width / 10),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapIn, SKFilterQuality.Low);
            }

            rectsIn = new SKRect[numOfVariables];
            for (int i = 0; i < numOfVariables; ++i)
            {
                rectsIn[i] = new SKRect(
                 0, (canvasView.CanvasSize.Height / (2 * numOfVariables + 1)) * (2 * i + 1),
                canvasView.CanvasSize.Width / 10,
                 (canvasView.CanvasSize.Height / (2 * numOfVariables + 1)) * (2 * i + 1) +
                 canvasView.CanvasSize.Width / 5);
            }

            resourceID = "Logication.Resources.trashcan.jpg";
            using (Stream stream = assembly.GetManifestResourceStream(resourceID))
            {
                SKBitmap tmpBitmap = SKBitmap.Decode(stream);
                bitmapTrashCan = new SKBitmap((int)( canvasView.CanvasSize.Width / 5),
                (int)(canvasView.CanvasSize.Width / 5), tmpBitmap.ColorType,
                tmpBitmap.AlphaType, tmpBitmap.ColorSpace);
                tmpBitmap.ScalePixels(bitmapTrashCan, SKFilterQuality.Low);
            }
        }

        bool ClicksOut(float x, float y)
        {
            return x >= (9 * canvasView.CanvasSize.Width) / 10 &&
                y >= (4 * canvasView.CanvasSize.Height) / 10 &&
                y <= (6 * canvasView.CanvasSize.Height) / 10;
        }

        SKRect GateToRect(GateType gt)
        {
            switch (gt)
            {
                case GateType.And:
                    return rectAnd;
                case GateType.Or:
                    return rectOr;
                case GateType.Not:
                    return rectNot;
                default:
                    return rectOut;
            }
            throw new Exception();
        }

        public List<bool> Test()
        {
            List<bool> res = new List<bool>();
            try
            {
                for (int i = 0; i < (1 << numOfVariables); ++i)
                {
                    int br = 0;
                    for (int j = 0; j < numOfVariables; ++j)
                    {
                        if ((i & (1 << j)) != 0)
                        {
                            inGates[j].SetValue(true);
                            br += (1 << j);
                        }
                        else
                        {
                            inGates[j].SetValue(false);
                        }
                    }
                    outGate.Deevaluate();
                    res.Add(outGate.Evaluate());
                }
            }
            catch (Exception ex)
            {
                DisplayAlert("GREŠKA", "Nije moguće evaluirati iskaz", "OK");
                return null;
            }

            return res;
        }
        void ClearAll()
        {
            cleared = true;
            firstClicked = null;
            DrawnObjectMatrices.Clear();
            LinesForDrawing.Clear();
        }
    }
}