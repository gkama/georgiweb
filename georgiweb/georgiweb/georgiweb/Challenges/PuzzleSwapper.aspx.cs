using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class PuzzleSwapper : System.Web.UI.Page
    {
        private List<int> puzzleToSolve = new List<int>()
          { 4, 6, 2, 14, 15, 8, 13, 1, 10, 5, 9, 12, 7, 11, 16, 3 };

        protected void Page_Load(object sender, EventArgs e)
        {
            //Display input puzzle
            InputTxtBox.Text = printPuzzle(puzzleToSolve);
        }

        protected void PSButtonClick(object sender, EventArgs e)
        {
            PuzzleSwapper swapper = new PuzzleSwapper(puzzleToSolve);
            OutputTxtBox.Text += swapper.GetSolution();
        }


        private readonly List<int> _layout;
        private readonly int _size;

        public PuzzleSwapper() { }

        public PuzzleSwapper(List<int> layout)
        {
            _layout = layout;
            _size = (int)Math.Sqrt(layout.Count);

            if (_size * _size != layout.Count)
                throw new ArgumentException("Must be a squared layout (length was " + layout.Count + ")");
        }

        public string GetSolution()
        {
            string solution = "";

            for (int i = 0; i < _layout.Count; i++)
            {
                int targetY = i / _size;
                int targetX = i - targetY * _size;

                int curIndex = _layout.FindIndex(x => x == i + 1);

                int curY = curIndex / _size;
                int curX = curIndex - curY * _size;

                //First X
                while (curX != targetX)
                {
                    int delta = targetX - curX;
                    int toMove = Math.Min(Math.Max(-1, delta), 1);

                    SwapValues(curX, curY, curX + toMove, curY);
                    solution += ("Swap (" + curX + ", " + curY + ") and (" + curX + toMove + ", " + curY + ")\n").ToString();

                    curX += toMove;
                }

                //Then Y
                while (curY != targetY)
                {
                    int delta = targetY - curY;
                    int toMove = Math.Min(Math.Max(-1, delta), 1);

                    SwapValues(curX, curY, curX, curY + toMove);
                    solution += ("Swap (" + curX + ", " + curY + ") and (" + curX + ", " + curY + toMove + ")\n").ToString();

                    curY += toMove;
                }
            }

            return solution;
        }

        private int GetValue(int x, int y)
        {
            return _layout[y * _size + x];
        }

        private void SetValue(int x, int y, int value)
        {
            _layout[y * _size + x] = value;
        }

        private void SwapValues(int x1, int y1, int x2, int y2)
        {
            int temp = GetValue(x1, y1);
            SetValue(x1, y1, GetValue(x2, y2));
            SetValue(x2, y2, temp);
        }

        private string printPuzzle(List<int> puzzle)
        {
            StringBuilder inputString = new StringBuilder();
            for (int i = 1; i < puzzle.Count() + 1; i++)
            {
                inputString.Append(puzzle[i - 1].ToString() + ", ");
                if (i % 4 == 0 && i <= 16)
                    inputString.Append("\r\n");
            }
            inputString.Remove(inputString.Length - 4, 4);
            return inputString.ToString();
        }
    }
}