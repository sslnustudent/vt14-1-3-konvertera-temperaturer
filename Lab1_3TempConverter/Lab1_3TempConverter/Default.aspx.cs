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
            if (FahrenheitRadioButton.Checked != true)
            {
                CelciuisRadioButton.Checked = true;
            }
        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            if (IsValid == true)
            {
                int startTemp, stopTemp, rateTemp;
                startTemp = int.Parse(StartTextBox.Text);
                stopTemp = int.Parse(EndTextBox.Text);
                rateTemp = int.Parse(RateTextBox.Text);

                TableCell tCell = new TableCell();
                TableRow tRow = new TableRow();
                if (CelciuisRadioButton.Checked == true)
                {
                    tCell.Text = "C";
                    tRow.Cells.Add(tCell);
                    tCell = new TableCell();
                    tCell.Text = "F";
                    tRow.Cells.Add(tCell);
                    TempTable.Rows.Add(tRow);
                }
                else
                {
                    tCell.Text = "F";
                    tRow.Cells.Add(tCell);
                    tCell = new TableCell();
                    tCell.Text = "C";
                    tRow.Cells.Add(tCell);
                    TempTable.Rows.Add(tRow);
                }
                while(startTemp <= stopTemp)
                {
                    tRow = new TableRow();
                    tCell = new TableCell();
                    tCell.Text = Convert.ToString(startTemp);
                    tRow.Cells.Add(tCell);
                    tCell = new TableCell();

                    if(CelciuisRadioButton.Checked == true)
                    {
                        tCell.Text = Convert.ToString(Model.TempConverter.CelciusToFahrenheit(startTemp));
                    }
                    else
                    {
                        tCell.Text = Convert.ToString(Model.TempConverter.FahrenheitToCelcius(startTemp));
                    }
                    tRow.Cells.Add(tCell);
                    TempTable.Rows.Add(tRow);
                    startTemp += rateTemp;
                }



                TempTable.Visible = true;



 
            }
        }
    }
}