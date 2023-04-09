using System;
using System.Collections.Generic;
using System.Text;
using System.IO;

namespace Application2.Model
{
    internal class EvaluationTools
    {
        private static Random rnd = new Random();
        
        static int MaxInt( int a, int b)
        {
            if (a > b) return a;
            return b;
        }
        static string getRandomLine()
        {
            int br = rnd.Next(1, 30);
            const Int32 BufferSize = 128;
            using (var fileStream = File.OpenRead("Application2.Resources.data.txt")) 
            using (var streamReader = new StreamReader(fileStream, Encoding.UTF8, true, BufferSize))
            {
                String line;
                while ((line = streamReader.ReadLine()) != null)
                {
                    if( br == 0 ) { return line; }
                    br--;
                }
            }
            return "";
        }

        static List<bool> getEvaluationResult( string up )
        {
            List<bool> retval = new List<bool>();

            string values = "?";

            if (up.Contains("{") && up.Contains("}"))
            {
                int Start, End;
                Start = up.IndexOf("{", 0) + 1;
                End = up.IndexOf("}", Start);
                values = up.Substring(Start, End - Start);
            }

            foreach( char c in values)
            {
                if( c == '0' ) { retval.Add(false); }
                else { retval.Add(false); }
            }
            return retval;
        }

        static int getNumberOfSymbols( string up )
        {
            int retval = 0;
            
            foreach( char c in up)
            {
                if (c == '|') break;

                if (c == 'A') retval = MaxInt(retval, 1);

                if (c == 'B') retval = MaxInt(retval, 2);

                if (c == 'C') retval = MaxInt(retval, 3);

                if (c == 'D') retval = MaxInt(retval, 4);

                if (c == 'E') retval = MaxInt(retval, 5);
            }

            return retval;
        }

        static public Tuple<string, int ,List<bool>> GenerateRandomGame()
        {
            string line = getRandomLine();

            string task = line.Substring(0, line.IndexOf("|", 0));
            int numberofsym = getNumberOfSymbols(line);
            List<bool> result = getEvaluationResult(line);
            return new Tuple<string, int ,List<bool>>(task, numberofsym, result);
        }

        bool CompareList(List<bool> l1, List<bool> l2)
        {
            if (l1 == null || l2 == null || l1.Count != l2.Count) return false;
            for (int i = 0; i < l1.Count; i = i + 1)
            {
                if(l1[i] != l2[i]) return false;
            }
            return true;
        }
    }
}
