using System;

namespace MyComponents {
    public class MyComponent {
        private string key;
        private string value;

        public MyComponent(string key, string value) {
            this.key = key;
            this.value = value;
        }
        
        public string Key {
            get { return this.key; }
        }
        
        public string Value {
            get { return this.value; }
        }
    }
}
