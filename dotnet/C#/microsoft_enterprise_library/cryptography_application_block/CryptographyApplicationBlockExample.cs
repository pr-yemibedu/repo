using System;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Security.Cryptography;

namespace CryptographyApplicationBlockExample
{
    public class AppRunner
    {
        public static void Main()
        {
            Console.WriteLine("Enter string to encrypt:");
            string stringToEncrypt = Console.ReadLine();

            // encrypt
            byte[] valueToEncrypt = Encoding.Unicode.GetBytes(stringToEncrypt);
            byte[] encryptedContents = Cryptographer.EncryptSymmetric("My DPAPI Symmetric Cryptography Provider", valueToEncrypt);

            string stringToDecrypt = (new UnicodeEncoding()).GetString(encryptedContents);
            Console.WriteLine("Encrypted as \"{0}\"", stringToDecrypt);            
            
            // decrypt
            byte[] valueToDecrypt = Encoding.Unicode.GetBytes(stringToDecrypt);
            byte[] decryptedContents = Cryptographer.DecryptSymmetric("My DPAPI Symmetric Cryptography Provider", valueToDecrypt);
            string plainText = (new UnicodeEncoding()).GetString(decryptedContents);
            
            Console.WriteLine("Decrypted to \"{0}\"", plainText);

            // hashing
            string stringValueToHash = "password";
            byte[] valueToHash = (new UnicodeEncoding()).GetBytes(stringValueToHash);
            byte[] generatedHash = Cryptographer.CreateHash("MySHA1Managed", valueToHash);
            string hashString = (new UnicodeEncoding()).GetString(generatedHash);
            
            Console.WriteLine("Hash of \"{0}\" is \"{1}\"", stringValueToHash, hashString);
            
            byte[] stringToCompare = (new UnicodeEncoding()).GetBytes(stringValueToHash);
            bool comparisonSucceeded = Cryptographer.CompareHash("MySHA1Managed", stringToCompare, generatedHash);
            
            Console.WriteLine("\"{0}\" hashes to \"{1}\" = {2} ", stringValueToHash, hashString, comparisonSucceeded);
            
            Console.Read();
        }
    }
}
