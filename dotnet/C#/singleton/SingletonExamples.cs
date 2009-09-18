namespace SingletonExamples
{
    class Singleton1
    {
        public static Singleton1 Instance() {
            if (_instance == null) {
                lock (typeof(Singleton1)) {
                    if (_instance == null) {
                        _instance = new Singleton1();
                    }
                }
            }
            return _instance;      
        }
        protected Singleton1() {}
        private static volatile Singleton1 _instance = null;
    }

    // more elegant solution that ***doesn't*** use lazy initialization
    sealed class Singleton2 
    {
        private Singleton2() {}
        public static readonly Singleton2 Instance = new Singleton2();
    }
}
