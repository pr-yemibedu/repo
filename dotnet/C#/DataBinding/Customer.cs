using System;
using System.Collections.Generic;
using System.Text;

namespace DataBinding
{
    class Customer
    {
        private int _id;
        private string _name = string.Empty;

        public int Id
        {
            set { _id = value; }
            get { return _id; }
        }

        public string Name
        {
            set { _name = value; }
            get { return _name; }
        }
    }
}
