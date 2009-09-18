using System;
using System.Collections.Generic;
using System.Text;

namespace Visual_Studio_2005_Unit_Testing_Examples
{
    public class Person
    {
        private string _fullName;

        public string FullName
        {
            get { return _fullName; }
            set { _fullName = value; }
        }
        private DateTime _dateOfBirth;

        public DateTime DateOfBirth
        {
            get { return _dateOfBirth; }
            set { _dateOfBirth = value; }
        }

        public int GetAgeAtDate(DateTime date)
        {
            return 1;
        }

        public Person(string fullName, DateTime dateOfBirth)
        {
            _fullName = fullName;
            _dateOfBirth = dateOfBirth;
        }

        ~Person()
        {
            
        }

        public const int MaxAge = 1;
    }
}
