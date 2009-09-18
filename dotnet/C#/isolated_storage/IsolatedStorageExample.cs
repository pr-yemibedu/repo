using System;
using System.IO;
using System.IO.IsolatedStorage;

public class ReadingAndWritingToFiles{

   public static int Main(){

      // Get an isolated store for this assembly and put it into an
      // IsolatedStoreFile object.

      IsolatedStorageFile isoStore =  IsolatedStorageFile.GetStore(IsolatedStorageScope.User | IsolatedStorageScope.Assembly, null, null);

      // This code checks to see if the file already exists.

      string[] fileNames = isoStore.GetFileNames("TestStore.txt");
      foreach (string file in fileNames){
         if(file == "TestStore.txt"){

            Console.WriteLine("The file already exists!");
            Console.WriteLine("Type \"StoreAdm /REMOVE\" at the command line to delete all Isolated Storage for this user.");

            // Exit the program.

            return 0;
         }
      }

      writeToFile(isoStore);

      Console.WriteLine("The file \"TestStore.txt\" contains:");
      // Call the readFromFile and write the returned string to the
      //console.

      Console.WriteLine(readFromFile(isoStore));

      // Exit the program.

      return 0;

   }// End of main.


   // This method writes "Hello Isolated Storage" to the file.

   private static void writeToFile(IsolatedStorageFile isoStore){

      // Declare a new StreamWriter.

      StreamWriter writer = null;

      // Assign the writer to the store and the file TestStore.

      writer = new StreamWriter(new IsolatedStorageFileStream("TestStore.txt", FileMode.CreateNew,isoStore));

      // Have the writer write "Hello Isolated Storage" to the store.

      writer.WriteLine("Hello Isolated Storage");

      writer.Close();
      
      Console.WriteLine("You have written to the file.");

   }// End of writeToFile.


   // This method reads the first line in the "TestStore.txt" file.

   public static String readFromFile(IsolatedStorageFile isoStore){

      // This code opens the TestStore.txt file and reads the string.

      StreamReader reader = new StreamReader(new IsolatedStorageFileStream("TestStore.txt", FileMode.Open,isoStore));

      // Read a line from the file and add it to sb.

      String sb = reader.ReadLine();

      // Close the reader.

      reader.Close();

      // Return the string.

      return sb.ToString();

   }// End of readFromFile.
}