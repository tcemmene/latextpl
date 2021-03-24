Sub GenerateConfigs()
    Dim Row As Integer
    
    Row_Last = 35
    Col_Key = 1
    Col_Default = 2
    Key_Padding = 15
    
    Worksheets("RunSettings").Activate
    Prefix = Cells(Row_Last + 2, 3).Value
    Run_IDs = Split(Cells(Row_Last + 3, 3).Value, "-")
    Output_Dir = Cells(Row_Last + 4, 3).Value
    First_Run_ID = CInt(Run_IDs(0))
    Last_Run_ID = CInt(Run_IDs(1))
    
    For RUN_ID = First_Run_ID To Last_Run_ID
        Col_Run = RUN_ID + 3
        Str_Run_ID = CStr(RUN_ID)
        Str_Run_ID = WorksheetFunction.Rept("0", 2 - Len(Str_Run_ID)) & Str_Run_ID
        file = Output_Dir & Prefix & "_" & Str_Run_ID & ".yaml"
        Open file For Output As #1
        For Row = 3 To Row_Last
            K = Cells(Row, Col_Key).Value
            V = Cells(Row, Col_Default).Value
            V_Run = Cells(Row, Col_Run).Value
            If V_Run <> "" Then
                V = V_Run
            End If
            K = K & ":"
            K_Padded = K & WorksheetFunction.Rept(" ", Key_Padding - Len(K))
            If IsNumeric(V) Then
                V = Replace(V, ",", ".")
            End If
            If V <> "" Then
                out = K_Padded & V
            Else
                out = K
            End If
            Print #1, out
            
        Next Row
        Close #1
    Next RUN_ID

End Sub