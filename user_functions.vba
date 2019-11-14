Function ENCONTRARR(hay As String, needle As String, Optional start As Long = -1) As Long
   'wrapper for vba's InstrRev
   ENCONTRARR = InStrRev(hay, needle, start)
End Function

Function Re_Extract(myRange As Range, matchPattern As String, Optional i As Integer = 0, Optional j As Integer = 0) As Variant
    'devuelve el i match correspondiente a $j
    'necesita les Regex de VBS
    Dim regEx As Object
    Set regEx = CreateObject("vbscript.regexp")

    Dim m As Variant
    With regEx
        .Global = True
        .MultiLine = True
        .IgnoreCase = False
        .Pattern = matchPattern
        Set m = .Execute(myRange)
        Re_Extract = m(i).SubMatches(j)
    End With
End Function
