using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{

    public class User
    {
        private int id;
        private string fullName;
        private DateTime dob;
        private string username;
        private string password;
        private string email;
        private string address;
        private string phoneNum;
        private string linkFacebook;
        private string avatar;
        private double userPoint;
        private DateTime createdDate;

        public User()
        {

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

        public string FullName
        {
            get
            {
                return fullName;
            }

            set
            {
                fullName = value;
            }
        }

        public DateTime Dob
        {
            get
            {
                return dob;
            }

            set
            {
                dob = value;
            }
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string PhoneNum
        {
            get
            {
                return phoneNum;
            }

            set
            {
                phoneNum = value;
            }
        }

        public string LinkFacebook
        {
            get
            {
                return linkFacebook;
            }

            set
            {
                linkFacebook = value;
            }
        }

        public string Avatar
        {
            get
            {
                return avatar;
            }

            set
            {
                avatar = value;
            }
        }

        public double UserPoint
        {
            get
            {
                return userPoint;
            }

            set
            {
                userPoint = value;
            }
        }

        public DateTime CreatedDate
        {
            get
            {
                return createdDate;
            }

            set
            {
                createdDate = value;
            }
        }

        public User(int id, string fullName, DateTime dob, string username, string password, string email, string address, string phoneNum, string linkFacebook, string avatar, double userPoint, DateTime createdDate)
        {
            this.Id = id;
            this.FullName = fullName;
            this.Dob = dob;
            this.Username = username;
            this.Password = password;
            this.Email = email;
            this.Address = address;
            this.PhoneNum = phoneNum;
            this.LinkFacebook = linkFacebook;
            this.Avatar = avatar;
            this.UserPoint = userPoint;
            this.CreatedDate = createdDate;
        }


    }
}