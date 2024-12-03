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


; Switch to next desktop with scroll wheel
#WheelDown::
{
    Send("#^{Left}")
}

; Switch to previous desktop with scroll wheel 
#WheelUp::
{
    Send("#^{Right}")
}

; Volume control with Esc + scroll
Esc & WheelUp:: 
{
    SoundSetVolume "+5"
}

Esc & WheelDown:: 
{
    SoundSetVolume "-5"
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
