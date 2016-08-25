using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class RandomBagSystem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void RandomBagSystemButtonClick(object sender, EventArgs e)
        {
            string Result = GetRandomizeResult();

            RandomBagSystemResultLabel.Text = Result;
            RandomBagSystemResultLabel.Text = RandomBagSystemResultLabel.Text.Replace("\r\n", "<br/>");

            //Show <hr> tags
            ABOVE_OUTPUT_HR.Visible = true;
            BELOW_OUTPUT_HR.Visible = true;
        }

        //Get Randomized Result
        protected string GetRandomizeResult()
        {
            StringBuilder Result = new StringBuilder();

            string[] Pieces = {"O", "I", "S", "Z", "L", "J", "T"};

            //Loop through 3 sections
            for (int section = 0; section < 3; section++)
            {
                //Loop 5 times, to get 5 Bags of 7 - that much in 1 section
                for (int loop = 0; loop < 5; loop++)
                {
                    Result.Append("Bag " + (loop+1) + ": ");
                    //Get new random numbers every Bag (7 items)
                    List<int> RandNums = RandomNumbers();
                    for (int i = 0; i < Pieces.Length; i++)
                    {
                        Result.Append(Pieces[RandNums[i] - 1]);
                    }
                    Result.Append("\r\n");
                }
                //New line on each section
                Result.Append("\r\n");
            }   
            return Result.ToString();
        }

        //Make sure it is truly a random number
        //If it is inside the loop, it will be the same result each time - calling the function too frequent = same random seed
        Random random = new Random();
        //Get Random Numbers in a Bag
        protected List<int> RandomNumbers()
        {
            List<int> nums = new List<int> {1, 2, 3, 4, 5, 6, 7};
            List<int> result = new List<int>();
            while(nums.Count > 0){
                int idx = random.Next(0, nums.Count);
                result.Add(nums[idx]);
                nums.RemoveAt(idx);
            }
            return result;
        }
    }
}