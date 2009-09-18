using System;
using System.Diagnostics;
using System.Windows.Forms;

class Launch
{
    public static void Main()
    {
        ProcessStartInfo psi = new ProcessStartInfo();
        psi.FileName = @"C:\WINNT\system32\notepad.exe";
        psi.Arguments = "";
        psi.UseShellExecute = false;
        psi.RedirectStandardOutput = true;
        psi.WindowStyle = ProcessWindowStyle.Hidden;
        Process app = new Process();
        app.StartInfo = psi;
        app.Start();
        //MessageBox.Show(app.StandardOutput.ReadToEnd());
        app.WaitForExit();
    }
}
