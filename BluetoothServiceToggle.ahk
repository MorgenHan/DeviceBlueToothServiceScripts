; 使用 explorer.exe 打开“Control Panel\Hardware and Sound\Devices and Printers”页面
Run('explorer.exe shell:::{A8A91A66-3A7D-4424-8D24-04E180695C7A}')
if !WinWait('Devices and Printers', , 10) ; 等待窗口加载，超时为10秒
{
    MsgBox("Failed to open Devices and Printers window.")
    ExitApp
}

if !WinActive('Devices and Printers')
    WinActivate('Devices and Printers')

if !WinWaitActive('Devices and Printers', , 10) ; 等待窗口激活，超时为10秒
{
    MsgBox("Devices and Printers window failed to activate.")
    ExitApp
}

; 退出脚本
ExitApp



