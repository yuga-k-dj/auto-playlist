var outstr = "";

function bang() {
    outlet(0, outstr);

}

function anything() {
//    var inputstr = String(arrayfromargs(messagename, arguments));
	var inputstr = String(arrayfromargs(messagename, arguments));
	var aaa = inputstr.slice(13);
    outstr = aaa;
    bang();
}