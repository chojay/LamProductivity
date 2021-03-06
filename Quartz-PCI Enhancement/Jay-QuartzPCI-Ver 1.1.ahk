;Quartz-PCI Enhancment by Jay Cho
;Last Update - 11/07/2015

#SingleInstance force

msgbox, 0, Hello! :), Quartz-PCI Interface Enhancement Ver. 1.1`n `nBy Jay Cho (jay.cho@lamresearch.com) `n`nTested on Windows 7 and Quartz PCI Version 9`n`nAvailable Commands (As of 11/09/2015) : `n`n • ↑ or WheelUp : Scroll Up `n • ↓ or WheelDown : Scroll Down `n • ← or Shift+WheelUp : Scroll Left `n • → or Shift+WheelDown : Scroll Right `n • Alt+WheelUp/WheelDown : Switch Between Images`n • Alt+, or Alt+. : Switch Between Images`n • Ctrl+= or Ctrl+WheelUp : Zoom In (Window Fits to Active Image Size) `n • Ctrl+- or Ctrl+WheelDown : Zoom Out `n • Ctrl+D : Default Image Size (No Zoom)`n • Ctrl+M : Maximize Image Window (After 'Zoom Tool' is used) `n • Ctrl+N : Minimize Image Window`n • Ctrl+R : Restore Image Window (After Minimized)`n`n • ? : Help / Show Available Commands Again`n

#IfWinActive ahk_class ScanFrame
Left:: ; Scroll Left. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x114, 0, 0, %control%, A ; 0x114 is WM_HSCROLL 
return

Right:: ; Scroll right. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x114, 1, 0, %control%, A ; 0x114 is WM_HSCROLL 
return

Up:: ; Scroll Up. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x115, 0, 0, %control%, A ; 0x115 is WM_VSCROL
return

Down:: ; Scroll Up. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x115, 1, 0, %control%, A ; 0x115 is WM_VSCROL
return


+WheelUp:: ; Scroll Left. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x114, 0, 0, %control%, A ; 0x114 is WM_HSCROLL 
return

+WheelDown:: ; Scroll right. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x114, 1, 0, %control%, A ; 0x114 is WM_HSCROLL 
return

WheelUp:: ; Scroll Up. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x115, 0, 0, %control%, A ; 0x115 is WM_VSCROLL
return

WheelDown:: ; Scroll Up. 
ControlGetFocus, control, A 
Loop 100
   SendMessage, 0x115, 1, 0, %control%, A ; 0x115 is WM_VSCROLL
return

!WheelDown::
Send, ^+{F6}
SendMessage, 0x0112, 0xF120, 0x3f30051, CPCIMDIChild1, A
return

!WheelUp::
Send, ^{F6}
SendMessage, 0x0112, 0xF120, 0x3f30051, CPCIMDIChild1, A
return

!.::
Send, ^+{F6}
SendMessage, 0x0112, 0xF120, 0x3f30051, CPCIMDIChild1, A
return
!,::
Send, ^{F6}
SendMessage, 0x0112, 0xF120, 0x3f30051, CPCIMDIChild1, A
return



^WheelUp::
Send, ^=
SendMessage, 0x0112, 0xF030, 0x6502c3, CPCIMDIChild1, A
return
^WheelDown::
Send, ^-
SendMessage, 0x0112, 0xF030, 0x6502c3, CPCIMDIChild1, A
return

^=::
Send, ^=
SendMessage, 0x0112, 0xF030, 0x6502c3, CPCIMDIChild1, A
return


^-::
Send, ^-
SendMessage, 0x0112, 0xF030, 0x6502c3, CPCIMDIChild1, A
return


^d::^n

^n::
SendMessage, 0x0112, 0xF020, 0x6003c3, CPCIMDIChild1, A
return


^m::
SendMessage, 0x0112, 0xF030, 0x6502c3, CPCIMDIChild1, A
return

^r::
SendMessage, 0x0112, 0xF120, 0x3f30051, CPCIMDIChild1, A
send, ^{F6}
return

^.::
return
^,::
return



+/::
msgbox, 0, Hello! :), Quartz-PCI Interface Enhancement Ver. 1.1`n `nBy Jay Cho (jay.cho@lamresearch.com) `n`nTested on Windows 7 and Quartz PCI Version 9`n`nAvailable Commands (As of 11/09/2015) : `n`n • ↑ or WheelUp : Scroll Up `n • ↓ or WheelDown : Scroll Down `n • ← or Shift+WheelUp : Scroll Left `n • → or Shift+WheelDown : Scroll Right `n • Alt+WheelUp/WheelDown : Switch Between Images`n • Alt+, or Alt+. : Switch Between Images`n • Ctrl+= or Ctrl+WheelUp : Zoom In (Window Fits to Active Image Size) `n • Ctrl+- or Ctrl+WheelDown : Zoom Out `n • Ctrl+D : Default Image Size (No Zoom)`n • Ctrl+M : Maximize Image Window (After 'Zoom Tool' is used) `n • Ctrl+N : Minimize Image Window`n • Ctrl+R : Restore Image Window (After Minimized)`n`n • ? : Help / Show Available Commands Again`n

#IfWinActive   


