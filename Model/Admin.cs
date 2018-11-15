using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Model
{
    public class Admin
    {
        private int id;
        private string username;
        private string password;

        public Admin()
        {

        }

        public Admin(int id, string username, string password)
        {
            this.id = id;
            this.username = username;
            this.password = password;
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
    }
}