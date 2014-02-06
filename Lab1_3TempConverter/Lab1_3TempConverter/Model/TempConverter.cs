using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_3TempConverter.Model
{
    public class TempConverter
    {

        public static int CelciusToFahrenheit(int tempC)
        {
             int newtemp;

             newtemp = Convert.ToInt32((tempC * 1.8) + 32);

             return newtemp;
        }
        public static int FahrenheitToCelcius(int tempF)
        {
            int newtemp;

            newtemp = Convert.ToInt32((tempF - 32) * 5 / 9);

            return newtemp;
        }

    }
}