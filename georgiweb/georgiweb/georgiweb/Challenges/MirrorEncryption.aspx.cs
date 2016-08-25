using System;
using System.Text;

namespace georgiweb.Challenges
{
    public partial class MirrorEncryption : System.Web.UI.Page
    {
        enum Direction { Up, Down, Left, Right }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MEButtonClick(object sender, EventArgs e)
        {
            char[,] mirrorLetters = new char[15, 15]{
                {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', ' '},
                {'A', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'n'},
                {'B', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'o'},
                {'C', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'p'},
                {'D', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'q'},
                {'E', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'r'},
                {'F', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 's'},
                {'G', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 't'},
                {'H', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'u'},
                {'I', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'v'},
                {'J', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'w'},
                {'K', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'x'},
                {'L', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'y'},
                {'M', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'z'},
                {' ', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' '},
            };

            string mirrorsStr = @"   \\  /\                \   /               \     \    \          /      /   \  /      \       \       \/           /                      \      \/          /       / ";
            string inputWord = "TpnQSjdmZdpoohd";

            //Place the mirrors in the array
            for (int x = 1, c = 0; x < 14; x++)
                for (int y = 1; y < 14; y++, c++)
                    mirrorLetters[x, y] = mirrorsStr[c];


            //Format thee mirror array to display
            //NOT currently used, but if needed it's available
            StringBuilder formatedArray = new StringBuilder();
            for (int i = 0; i < 15; i++)
            {
                for (int j = 0; j < 15; j++)
                {
                    if (mirrorLetters[i, j] == ' ')
                        formatedArray.Append("&nbsp;");
                    else
                        formatedArray.Append(mirrorLetters[i, j].ToString());
                }
                formatedArray.Append("<br />");
            }

            //Decrypt
            string toReturn = string.Empty;
            foreach (char s in inputWord)
                toReturn += GetMatchChar(mirrorLetters, GetLocation(s, mirrorLetters));

            //Set the text
            outputdivLabel.Text = toReturn;
        }

        static char GetMatchChar(char[,] arr, Tuple<int, int> loc)
        {
            Direction current = GetDirection(loc);
            int x = loc.Item1;
            int y = loc.Item2;
            do
            {
                switch (current)
                {
                    case Direction.Up: x--; break;
                    case Direction.Down: x++; break;
                    case Direction.Left: y--; break;
                    case Direction.Right: y++; break;
                }

                current = NextDirection(current, arr[x, y]);
            } while (!IsFinal(ToTuple(x, y)));
            return arr[x, y];
        }
        static Direction GetDirection(Tuple<int, int> initLocation)
        {
            if (initLocation.Item1 == 0)
                return Direction.Down;
            if (initLocation.Item1 == 14)
                return Direction.Up;
            if (initLocation.Item2 == 0)
                return Direction.Right;
            return Direction.Left;
        }

        static Direction NextDirection(Direction dir, char c)
        {
            if (c == ' ')
                return dir;
            if (c == '/')
                switch (dir)
                {
                    case Direction.Down: return Direction.Left;
                    case Direction.Left: return Direction.Down;
                    case Direction.Up: return Direction.Right;
                    case Direction.Right: return Direction.Up;
                }
            if (c == '\\')
                switch (dir)
                {
                    case Direction.Down: return Direction.Right;
                    case Direction.Right: return Direction.Down;
                    case Direction.Up: return Direction.Left;
                    case Direction.Left: return Direction.Up;
                }
            return Direction.Up;
        }

        static Tuple<int, int> GetLocation(char c, char[,] arr)
        {
            for (int x = 0; x < 15; x++)
                for (int y = 0; y < 15; y++)
                    if (arr[x, y] == c)
                        return ToTuple(x, y);
            return ToTuple(0, 0);
        }

        static Tuple<int, int> ToTuple(int a, int b)
        {
            return new Tuple<int, int>(a, b);
        }

        static bool IsFinal(Tuple<int, int> loc)
        {
            if (loc.Item1 == 0 || loc.Item1 == 14 || loc.Item2 == 0 || loc.Item2 == 14)
                return true;
            return false;
        }
    }
}