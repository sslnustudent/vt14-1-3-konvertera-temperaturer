using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_3TempConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int startTemp, stopTemp, rateTemp;
                startTemp = int.Parse(StartTextBox.Text);
                stopTemp = int.Parse(EndTextBox.Text);
                rateTemp = int.Parse(RateTextBox.Text);

                if (FahrenheitRadioButton.Checked)
                {
                    First.Text = "°F";
                    Second.Text = "°C";
                }

                TableRow tRow;
                TableCell tCell;

                for (int temp = 0; temp <= startTemp; temp += rateTemp)
                {
                    tRow = new TableRow();
                    tCell = new TableCell();
                    tCell.Text = temp.ToString();
                    tRow.Cells.Add(tCell);
                    tCell = new TableCell();

                    if(CelciuisRadioButton.Checked == true)
                    {
                        tCell.Text = Model.TempConverter.CelciusToFahrenheit(temp).ToString();
                    }
                    else
                    {
                        tCell.Text = Model.TempConverter.FahrenheitToCelcius(temp).ToString();
                    }
                    tRow.Cells.Add(tCell);
                    TempTable.Rows.Add(tRow);
                }

                TempTable.Visible = true;
            }
        }
    }
}