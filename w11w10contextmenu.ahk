#SingleInstance, force

I_Icon = w11w10contextmenu.ico
ICON [I_Icon]

;Changes menu tray icon
IfExist, %I_Icon%
		Menu, Tray, Icon, %I_Icon%

; FN key detect
LastFnPress := False
*sc178:: LastFnPress:=True
*sc178 Up::LastFnPress:=False

; Disable when FN key is presed
#if not LastFNPress

RButton::
	MouseGetPos,,, winID
	WinGetClass, cls, ahk_id %winID%

	if (cls == "WorkerW" || cls == "CabinetWClass") {
		Click
		Send +{F10}
	} else {
		Click Right
	}


