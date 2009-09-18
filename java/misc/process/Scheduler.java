import java.util.*;

public class Scheduler
{
    public static void main(String[] argv)
    {
        String path = argv[0];
        String command = path;
        long freqInSecs = Long.parseLong(argv[1]);
        CommandTask task = new CommandTask(command);
        Timer timer = new Timer();
        timer.scheduleAtFixedRate(task, 0, (freqInSecs * 60000)); // milliseconds in minute 
    }
}

class CommandTask extends TimerTask
{
    protected String command;
    public CommandTask(String command)
    {
        this.command = command;
    }
    
    public void run()
    {
        try
        {
            System.out.println("Starting \"" + command + "\" ...");
            Process p = Runtime.getRuntime().exec(command);
            int status = p.waitFor();
            System.out.println("\" + command + "\" execution " + (status == 0) ? "SUCCEEDED" : "FAILED");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}