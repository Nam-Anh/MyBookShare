using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class BookReview
    {
        private int id;
        private string content;
        private DateTime createdTime;
        private int userID;
        private int bookID;

        public BookReview()
        {

        }

        public BookReview(int id, string content, DateTime createdTime, int userID, int bookID)
        {
            this.id = id;
            this.content = content;
            this.createdTime = createdTime;
            this.userID = userID;
            this.bookID = bookID;
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

        public string Content
        {
            get
            {
                return content;
            }

            set
            {
                content = value;
            }
        }

        public DateTime CreatedTime
        {
            get
            {
                return createdTime;
            }

            set
            {
                createdTime = value;
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

    }
}