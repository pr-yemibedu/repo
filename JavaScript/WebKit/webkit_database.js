
var db = openDatabase("mydb", "1.0", "my database", 65536);

function defErrorHandler(transaction,error) {
  alert("Error: "+error.message+" (Code: "+error.code+")");
  return true;
}

function nullDataHandler(transaction,results) {
}

db.transaction(
  function(transaction) {
    transaction.executeSql("CREATE TABLE IF NOT EXISTS books(id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,btitle TEXT,bauthor TEXT,bpublisher TEXT)",[],nullDataHandler,defErrorHandler);
  }
);
