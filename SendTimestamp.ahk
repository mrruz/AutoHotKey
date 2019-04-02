!+d::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
SendRaw %CurrentDateTime%
return

!+a::
FormatTime, CurrentDateTime,, 
SendRaw %CurrentDateTime%
return

