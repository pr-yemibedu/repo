using System;

public abstract class MusicServer {
    public virtual void Play() {
        Console.WriteLine("MusicServer : Play()");
    }
}

public class NapsterMusicServer : MusicServer {
    public override void Play() {
        Console.WriteLine("NapsterMusicServer : Play()");
    }
}

public class KazaMusicServer : MusicServer {
    public override void Play() {
        Console.WriteLine("KazaMusicServer : Play()");
    }
}

public class App {
    public static void Main() {
        MusicServer ms = new NapsterMusicServer();
        ms.Play();
        ms = new KazaMusicServer();
        ms.Play();
    }
}