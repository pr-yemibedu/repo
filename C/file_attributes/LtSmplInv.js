//*****************************************************************************
// desc: inventories the laptop sample directories
// author: Brian Pfeil
//*****************************************************************************
var SMPL_DIR_ROOT = "C:\\Data\\SampleRecs";
var SMPL_INV_LOG_DIR = "C:\\Upload";
var SMPL_INV_LOG_NAME = "LtSmplInv.log";
var fso, rootFldr, folders, folder, files, file, inventoryString = "";
fso = new ActiveXObject("Scripting.FileSystemObject");
if (fso.FolderExists(SMPL_DIR_ROOT)) {
    rootFldr = fso.GetFolder(SMPL_DIR_ROOT);
    folders = new Enumerator(rootFldr.SubFolders);
    for (;!folders.atEnd();folders.moveNext()) {
        files = new Enumerator(folders.item().Files);
        for (;!files.atEnd();files.moveNext()) {
            inventoryString = inventoryString +
                Quote(toDateString(new Date())) + "," +
                Quote(files.item().ParentFolder.path) + "," +
                Quote(files.item().name) + "," +
                Quote(files.item().size) + "," +
                Quote(toUTCDateString(files.item().DateCreated)) + "," +
                Quote(toUTCDateString(files.item().DateLastModified)) + "," +
                Quote(toUTCDateString(files.item().DateLastAccessed)) + "\n";
        }
    }
    if (inventoryString != "") {
        if (!fso.FolderExists(SMPL_INV_LOG_DIR)) {
            fso.CreateFolder(SMPL_INV_LOG_DIR)
        }
        AppendStringToFile(SMPL_INV_LOG_DIR + "\\" + SMPL_INV_LOG_NAME, inventoryString);
    }
}

function AppendStringToFile(path, s) {
    var fso, fileStream;
    fso = new ActiveXObject("Scripting.FileSystemObject");
    fileStream = fso.OpenTextFile(path, 8, true);
    fileStream.Write(s);
}

function toDateString(dt) {
    dt = new Date(dt);
    var utcString = "";
    utcString += (pad(dt.getFullYear()) + "-");
    utcString += (pad((dt.getMonth() + 1)) + "-");
    utcString += (pad(dt.getDate()) + " ");
    utcString += (pad(dt.getHours()) + ":");
    utcString += (pad(dt.getMinutes()) + ":");
    utcString += (pad(dt.getSeconds()));
    return(utcString);
}

function pad(s) {
    s = new String(s);
    if (s.length == 1) {
        return("0" + s);
    } else {
        return(s);
    }   
}

function Quote(s) {
    return "\"" + s + "\"";
}