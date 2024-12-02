#Requires AutoHotkey v2.0

; Switch to next desktop
#XButton2:: 
{
    Send("#^{Right}")
}

; Switch to previous desktop
#XButton1:: 
{
    Send("#^{Left}")
}

#HotIf (A_Cursor == "IBeam")
; alt+home for end
!Home:: 
{
    Send("{End}")
}

; alt+right for end
!Right:: 
{
    Send("{End}")
}

; alt+left for home
!Left:: 
{
    Send("{Home}")
}
#HotIf