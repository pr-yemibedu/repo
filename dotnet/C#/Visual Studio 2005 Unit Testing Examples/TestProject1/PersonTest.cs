﻿// The following code was generated by Microsoft Visual Studio 2005.
// The test owner should check each test for validity.
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Text;
using System.Collections.Generic;
using Visual_Studio_2005_Unit_Testing_Examples;
namespace TestProject1
{
    /// <summary>
    ///This is a test class for Visual_Studio_2005_Unit_Testing_Examples.Person and is intended
    ///to contain all Visual_Studio_2005_Unit_Testing_Examples.Person Unit Tests
    ///</summary>
    [TestClass()]
    public class PersonTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }
        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for ~Person ()
        ///</summary>
        [TestMethod()]
        public void FinalizerTest()
        {
            // Unit Test Generation Error: Finalizers and destructors are not called directly from automatic test generation.
            Assert.Fail("Unit Test Generation Error: Finalizers and destructors are not called directly fr" +
                    "om automatic test generation.");
        }

        /// <summary>
        ///A test for DateOfBirth
        ///</summary>
        [TestMethod()]
        [ExpectedException(typeof(ArgumentException), "Exception message text")]
        public void DateOfBirthTest()
        {
            string fullName = null; // TODO: Initialize to an appropriate value

            DateTime dateOfBirth = new DateTime(); // TODO: Initialize to an appropriate value

            Person target = new Person(fullName, dateOfBirth);

            DateTime val = new DateTime(); // TODO: Assign to an appropriate value for the property

            target.DateOfBirth = val;
            throw new ArgumentException();

        }

        /// <summary>
        ///A test for FullName
        ///</summary>
        [TestMethod()]
        public void FullNameTest()
        {
            string fullName = "test"; // TODO: Initialize to an appropriate value

            DateTime dateOfBirth = new DateTime(); // TODO: Initialize to an appropriate value

            Person target = new Person(fullName, dateOfBirth);

            string val = null; // TODO: Assign to an appropriate value for the property

            target.FullName = "louis";


            Assert.AreEqual(val, target.FullName, "Visual_Studio_2005_Unit_Testing_Examples.Person.FullName was not set correctly.");
            //Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for GetAgeAtDate (DateTime)
        ///</summary>
        [TestMethod()]
        public void GetAgeAtDateTest()
        {
            string fullName = null; // TODO: Initialize to an appropriate value
            
            DateTime dateOfBirth = new DateTime(); // TODO: Initialize to an appropriate value

            Person target = new Person(fullName, dateOfBirth);

            DateTime date = new DateTime(); // TODO: Initialize to an appropriate value

            int expected = 0;
            int actual;

            actual = target.GetAgeAtDate(date);

            Assert.AreEqual(expected, actual, "Visual_Studio_2005_Unit_Testing_Examples.Person.GetAgeAtDate did not return the e" +
                    "xpected value.");
            Assert.Inconclusive("Verify the correctness of this test method.");
        }

        /// <summary>
        ///A test for Person (string, DateTime)
        ///</summary>
        [TestMethod()]
        public void ConstructorTest()
        {
            string fullName = null; // TODO: Initialize to an appropriate value

            DateTime dateOfBirth = new DateTime(); // TODO: Initialize to an appropriate value

            Person target = new Person(fullName, dateOfBirth);

            // TODO: Implement code to verify target
            Assert.Inconclusive("TODO: Implement code to verify target");
        }

    }


}
