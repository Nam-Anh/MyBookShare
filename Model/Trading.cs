using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Trading
    {
        private int id;
        private string description;
        private int tradingStatus;
        private DateTime completedTime;
        private double lenderRatePoint;
        private double borrowerRatePoint;
        private int bookID;
        private int lenderID;
        private int borrowerID;

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

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        public int TradingStatus
        {
            get
            {
                return tradingStatus;
            }

            set
            {
                tradingStatus = value;
            }
        }

        public DateTime CompletedTime
        {
            get
            {
                return completedTime;
            }

            set
            {
                completedTime = value;
            }
        }

        public double LenderRatePoint
        {
            get
            {
                return lenderRatePoint;
            }

            set
            {
                lenderRatePoint = value;
            }
        }

        public double BorrowerRatePoint
        {
            get
            {
                return borrowerRatePoint;
            }

            set
            {
                borrowerRatePoint = value;
            }
        }

        public int BookID
        {
            get
            {
                return bookID;
            }

            set
            {
                bookID = value;
            }
        }

        public int LenderID
        {
            get
            {
                return lenderID;
            }

            set
            {
                lenderID = value;
            }
        }

        public int BorrowerID
        {
            get
            {
                return borrowerID;
            }

            set
            {
                borrowerID = value;
            }
        }

        public Trading()
        {

        }

        public Trading(int id, string description, int tradingStatus, int borrowerRatePoint, int bookID, int borrowerID)
        {
            this.id = id;
            this.description = description;
            this.tradingStatus = tradingStatus;
            this.borrowerRatePoint = borrowerRatePoint;
            this.bookID = bookID;
            this.borrowerID = borrowerID;
        }

        public Trading(int id, string description, int tradingStatus, DateTime completedTime, double lenderRatePoint, double borrowerRatePoint, int bookID, int lenderID, int borrowerID)
        {
            this.id = id;
            this.description = description;
            this.tradingStatus = tradingStatus;
            this.completedTime = completedTime;
            this.lenderRatePoint = lenderRatePoint;
            this.borrowerRatePoint = borrowerRatePoint;
            this.bookID = bookID;
            this.lenderID = lenderID;
            this.borrowerID = borrowerID;
        }
    }
}