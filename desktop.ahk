#Requires AutoHotkey v2.0

; Define a global variable for debounce times
debounceTimes := A_TickCount

; Function to debounce a hotkey
Debounce(key, delay := 200) {
    global debounceTimes
    currentTime := A_TickCount
    if ((currentTime - debounceTimes > delay)) {
        debounceTimes := currentTime
        return True
    }
    return False
}

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
if (Debounce("NextDesktop")) {
    Send("#^{Left}")
}
}

; Switch to previous desktop with scroll wheel 
#WheelUp::
{
if (Debounce("NextDesktop")) {
    Send("#^{Right}")
}
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

Esc:: 
{
    Send("{Esc}")
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
