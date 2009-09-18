using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace DataBinding
{
    public partial class SimpleDataBinding : Form
    {
        Customer currentCustomer;
        Customer customer1;
        Customer customer2;

        public SimpleDataBinding()
        {
            InitializeComponent();
        }

        private void LoadData()
        {
            customer1 = new Customer();
            customer1.Id = 1;
            customer1.Name = "John Smith";

            customer2 = new Customer();
            customer2.Id = 2;
            customer2.Name = "Tom Jones";

            currentCustomer = customer1;
        }

        private void SimpleDataBinding_Load(object sender, EventArgs e)
        {
            LoadData();

            Binding customerIdBinding = new Binding("Text", currentCustomer, "ID");
            customerId.DataBindings.Add(customerIdBinding);

            Binding customerNameBinding = new Binding("Text", currentCustomer, "Name");
            customerName.DataBindings.Add(customerNameBinding);

            
        }

        private void nextButton_Click(object sender, EventArgs e)
        {
            currentCustomer = (currentCustomer.Id != 1) ? customer1 : customer2;
        }
    }
}