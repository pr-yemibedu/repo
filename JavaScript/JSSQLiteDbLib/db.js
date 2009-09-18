var window = {};
window.openDatabase = null;

var Database = {

  _databaseDefaults: {
    shortName: 'db1',
    version: '1.0',
    displayname: 'database 1',
    maxSizeInBytes: 65536  
  },

  SQLite: function(options) {
  
    function killTransaction(transaction, error) {
      return true; // fatal transaction error
    }
    
    function errorHandler(transaction, error) {
      console.log('Oops.  Error was '+error.message+' (Code '+error.code+')');
      var we_think_this_error_is_fatal = true;
      if (we_think_this_error_is_fatal) {
        return true;
      }
      return false;
    }
    
    function nullDataHandler(transaction, results) {}    
  
    this.put = function(name, value) {
    };
      
    this.get = function(name) {
      return [{}];
    };
    
    this.createTables = function() {
      var db = this.db;
      
      db.transaction(function(txn) {
        txn.executeSql('CREATE TABLE IF NOT EXISTS filedata(id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, datablob BLOB NOT NULL DEFAULT "");', [], nullDataHandler, errorHandler);
      });
      
    };
  
    var opts = this._databaseDefaults;
    this.db = null;
    
    if(window.openDatabase) {
      
      try {
        this.db = openDatabase(opts.shortName, opts.version, opts.displayName, opts.maxSize);
      } catch (e) {
        if (e == INVALID_STATE_ERR) {
          console.log("Invalid database version.");
        } else {
          console.log("Unknown error: " + e);
        }
      }
      
      // create tables
      if (this.db) {
        this.createTables();
      }
      
      return this;
    }
    
  }

};

var db = new Database.SQLite({
  shortName: '',
  version: '1.0',
  displayname: '',
  maxSizeInBytes: 65536
});

// data we want to store
var history = [
  {
    mrkdisplayname2: 'Pfeil, Brian',
    uid: 23,
    date: new Date()
  },
  {
    mrkdisplayname2: 'Makkar, Amir',
    uid: 45,
    date: new Date()
  }
];

// store history
db.put('history', history);

// get history
var obj = db.get('history');

// do something with the history
var i;
for (i = 0; i < obj.length; i++) {
}

// add a history item
var history2 = db.get('history');
history2.push( { mrkdisplayname2: 'Thomas, Michael', uid: 66} );

// overwrite old history
db.put('history', history2);

