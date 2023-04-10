using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Logication.Models
{
    internal class EvaluationTools
    {
        private static Random rnd = new Random();

        static int MaxInt(int a, int b)
        {
            if (a > b) return a;
            return b;
        }
        static string GetRandomLine(Stream fs)
        {
            int br = rnd.Next(1, 30);
            const Int32 BufferSize = 128;


            using (var streamReader = new StreamReader(fs, Encoding.UTF8, true, BufferSize))
            {
                String line;
                while ((line = streamReader.ReadLine()) != null)
                {
                    if (br == 0) { return line; }
                    br--;
                }
            }

            return "";
        }

        static List<bool> GetEvaluationResult(string up)
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

            foreach (char c in values)
            {
                if (c == '0') { retval.Add(false); }
                else { retval.Add(true); }
            }
            return retval;
        }

        static int GetNumOfSymbols(string up)
        {
            int retval = 0;

            foreach (char c in up)
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

        // expr|minform|...
        static int GetNumOfComponents(string line)
        {
            int retVal = 0;
            for(int i = line.IndexOf("|")+1; i < line.Length; i++)
            {
                if (line[i] == '|')
                    break;
                retVal += line[i] == ' ' ? 1 : 0;
            }
            retVal++;
            return retVal;
        }

        static public Tuple<string, int, int, List<bool>> GenerateRandomGame(Stream fs)
        {
            string line = GetRandomLine(fs);

            string task = line.Substring(0, line.IndexOf("|", 0));
            int numOfSymbols = GetNumOfSymbols(line), numOfComponents = GetNumOfComponents(line);
            List<bool> result = GetEvaluationResult(line);
            return new Tuple<string, int, int, List<bool>>(task, numOfSymbols, numOfComponents, result);
        }

        bool CompareList(List<bool> l1, List<bool> l2)
        {
            if (l1 == null || l2 == null || l1.Count != l2.Count) return false;
            for (int i = 0; i < l1.Count; i = i + 1)
            {
                if (l1[i] != l2[i]) return false;
            }
            return true;
        }
    }
}
