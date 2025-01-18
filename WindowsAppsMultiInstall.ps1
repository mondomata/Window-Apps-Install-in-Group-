<# 
/***************************************************************************************
ENG / HUN language. (github.com/mondomata)
Favorite or Best Apps Group install with Windows Powershell to Windows 10 or 11 System
If you like all, full text copy to Powershell(admin) window, and run width Enter.

/Favorit vagy Legjobb Programok csoportos telepítése Windows Powershell parancssorból 
Windows 10 vagy 11 rendszeren.
Ha tetszik minden, a teljes szöveget másold a Powershell(rendszergazda) ablakba és futtasd Enterrel.
*****************************************************************************************/

(1) 
Open Powershell: right click Start and click Win10 Powershell(admin) or Win11 Terminal(admin)

/Nyisd meg a Terminált: jobb gombbal klikk a Tálca/Start-ra, majd Win10-en Powershell(rendszergazda) vagy Win11-en Terminál(rendszergazda) elemre. 

(2) 
Down the #Start# to #End# full text copy and paste to Powershell or Terminal window, and push Enter.
Result: the programms installing in Group.(internet connect need)
If 1-1 programm install cancel to you, down, the before "programline" write # (#"Google.Chrome.EXE" =not istall Chrome)

/Lejjebb a #Start# és #End# közötti teljes szöveget másold a vágólapra (kijelölés majd Ctrl C) illeszd be a Powershell vagy Terminál ablakba (Ctrl V), aztán nyomj Entert.
Eredmény: a kijelölt programok csoportosan települnek a Windows rendszeredbe (internet kapcsolat kell)
Ha 1-1 program mégsem kell neked, annak lejjebb a "programsor" elejére tegyél #-t, (pl. #"Google.Chrome.EXE" =nem települ a Chrome)

(3)
#>

#Start#
Write-Output "Push Y so yes, to run of script."
Write-Output "Nyomj Y-t, mint yes/igent a szkript lefutásának engedélyezéséhez."
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Write-Output "INSTALLING FAVORIT APPS IN GROUP / FAVORIT APPOK INSTALLJA - CSOPORTOSAN"
Write-Output "IF FOR YOU NEED CANCEL, AFTER RUN SCRIPT CAN UINSTALL / HA MÉGSEM KELL, A SZKRIPT LEFUTÁSA UTÁN LEHET UNINSTALL."
Write-Output "THE WORK MAYBE 2-3 MINUTES, DO NOT CLOSE THIS WINDOW. / MOST A MUNKA KB. 2-3 PERCIG TART, NE ZÁRD BE EZT AZ ABLAKOT."
Write-Output "Push Enter. / Nyomj Entert."
PAUSE
$apps = @(

"Google.Chrome.EXE" <#Chrome browser böngésző #>
"Mozilla.Firefox" <#Firefox browser böngésző #>
"Brave.Brave" <# Brave browser böngésző (Chrome engine, but ad-free, secure, personal protect / Chrome motoros, de reklám mentes) #>

"TheDocumentFoundation.LibreOffice" <# best and libre Office text-table-prezent.pack / ingyenes, nyílt forráskódú Office szövegszerk-táblázatkez-prezentáció programcsomag #>

"IrfanSkiljan.IrfanView" #Best Img Viewer and Editor / Legjobb Képnézegető és képszerkesztő
"VideoLAN.VLC" #Best sound, music, and video player / Legjobb zene és videó lejátszó 
"FreeCommander" #Free file menager / Kiváló ingyenes fájlkezelő

#"9P6PMZTM93LR" <# The Best Microsoft Windows Defender sec.app only with MS account. No need price, if is good and fast without price / A Legjobb Microsoft Windows Defender vírusirtó. Csak MS fiókkal! Felesleges fizetni, ha van ilyen jó és gyors ingyenes #> 

)

foreach ($app in $apps) {
    Write-Output "Trying to Install $app"

    Winget Install $app
    }

<# GODMODE best extended Control panel: / Godmode, a legjobb kiterjesztett Vezérlőpult: #>
New-Item -Path 'Desktop\.{ED7BA470-8E54-465E-825C-99712043E01C}' -ItemType Directory

echo "EXTRA! EXTRA! EXTRA! Wait. / Várj egy kicsit... Million thank ChrisTitus.com. Enter..."
pause
iwr -useb https://christitus.com/win | iex


#End#


