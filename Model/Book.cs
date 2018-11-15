using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Book
    {
        private int id;
        private string title;
        private string author;
        private string ISBN;
        private string language;
        private string description;
        private bool deleted;
        private string coverImg;
        private DateTime createdTime;
        private int creatorID;
        private string categoryID;
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

        public string Title
        {
            get
            {
                return title;
            }

            set
            {
                title = value;
            }
        }

        public string Author
        {
            get
            {
                return author;
            }

            set
            {
                author = value;
            }
        }

        public string ISBN1
        {
            get
            {
                return ISBN;
            }

            set
            {
                ISBN = value;
            }
        }

        public string Language
        {
            get
            {
                return language;
            }

            set
            {
                language = value;
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

        public string CoverImg
        {
            get
            {
                return coverImg;
            }

            set
            {
                coverImg = value;
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

        public string CategoryID
        {
            get
            {
                return categoryID;
            }

            set
            {
                categoryID = value;
            }
        }

        public bool Deleted
        {
            get
            {
                return deleted;
            }

            set
            {
                deleted = value;
            }
        }
    }
}