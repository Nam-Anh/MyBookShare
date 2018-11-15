using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class TradedBookImage
    {
        private int id;
        private string image;
        private int tradingID;
        
        public TradedBookImage()
        {

        }

        public TradedBookImage(int id, string image, int tradingID)
        {
            this.id = id;
            this.image = image;
            this.tradingID = tradingID;
        }

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Image
        {
            get
            {
                return image;
            }

            set
            {
                image = value;
            }
        }

        public int TradingID
        {
            get
            {
                return tradingID;
            }

            set
            {
                tradingID = value;
            }
        }
    }
}