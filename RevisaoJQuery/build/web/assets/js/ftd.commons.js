/*
 * StringBuilder Class Definition...
 */
function StringBuilder() {
    this.strings = new Array("");
    this.newLine = "\n";
}
;

StringBuilder.prototype.append = function (value) {
    if (value) {
        this.strings.push(value);
    }
};

StringBuilder.prototype.appendLine = function (value) {
    if (value) {
        this.strings.push(this.newLine);
        this.strings.push(value);
    }
};

StringBuilder.prototype.setNewLineCode = function (newLineCode) {
    if (newLineCode) {
        this.newLine = newLineCode;
    }
};

StringBuilder.prototype.clear = function () {
    this.strings.length = 1;
};

StringBuilder.prototype.toString = function () {
    return this.strings.join("");
};

var __getURLParameterfunction = function(sParam) {
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] === sParam) {
            return sParameterName[1];
        }
    }
};