using System;

namespace bank
{
	using NUnit.Framework;

	[TestFixture]
	public class AccountTest
	{
		[Test]
		public void TransferFunds()
		{
			Account source = new Account();
			source.Deposit(200.00F);
			Account destination = new Account();
			destination.Deposit(150.00F);

			source.TransferFunds(destination, 100.00F);
			Assert.AreEqual(150.00F, destination.Balance);
			Assert.AreEqual(200.00F, source.Balance);
		}
	}
}
