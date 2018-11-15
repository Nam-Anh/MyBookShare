using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class BookRatings
    {
        private int id;
        private int userID;
        private int bookID;
        private double ratePoint;


        public BookRatings(int id, int userID, int bookID, double ratePoint)
        {
            this.id = id;
            this.userID = userID;
            this.bookID = bookID;
            this.ratePoint = ratePoint;
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

        public int UserID
        {
            get
            {
                return userID;
            }

            set
            {
                userID = value;
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

        public double RatePoint
        {
            get
            {
                return ratePoint;
            }

            set
            {
                ratePoint = value;
            }
        }
    }
}