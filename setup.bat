@echo off

REM ---------------------------------------------------------
REM  INSTALLAZIONE DELL'ASSISTENTE E AVVIO DELL'ASSISTENTE
REM  RICHIEDE I PRIVILEGI DI AMMINISTRATORE QUESTA VERSIONE
REM ---------------------------------------------------------

mode con: cols=96 lines=21

NET SESSION >nul 2>&1
if %errorlevel% neq 0 ( 
	PowerShell -Command "& {Start-Process %0 -Verb RunAs}"
	exit
) else (
    call :crea
    goto installazione0
)

:crea
cd\
if not exist ProgrammazioneTimeAssistant (
	mkdir ProgrammazioneTimeAssistant
	echo %userprofile%\desktop>ProgrammazioneTimeAssistant\percorso.txt
	copy /b %userprofile%\desktop\setup.bat  ProgrammazioneTimeAssistant\PT_bot.bat
) else (
    goto inizio0
)
cls
goto :EOF




REM ---------------------------------------------------------
REM  MENU' DELL'ASSISTENTE
REM ---------------------------------------------------------

:installazione0
title INSTALLAZIONE ASSISTENTE
color 0f
echo                                         ÚÄÄÄÄÄ¿
ping localhost -n 1 > nul
color 0e
echo                                         ³     ³
ping localhost -n 1 > nul
color 0d
echo                                         ³     ³
ping localhost -n 1 > nul
color 0c
echo                                         ³     ³
ping localhost -n 1 > nul
color 0b
echo                                     \ÄÄÄÙ     ÀÄÄÄ/
ping localhost -n 1 > nul
color 0a
echo                                       \         / 
ping localhost -n 1 > nul
color 0e
echo                                         \     /
ping localhost -n 1 > nul
color 0d
echo                                           \ /
ping localhost -n 1 > nul
color 0c
echo                                      INSTALLAZIONE
ping localhost -n 1 > nul
color 0b
echo                                     ±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0a
echo                                     ±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                                     ±±±±±±±±±±±±±±±  
ping localhost -n 1 > nul
color 0d
echo                                     ±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0f
echo                                     ±±±±±±±±±±±±±±±
echo.
echo.
goto username

:installazione
cls
echo                                         ÚÄÄÄÄÄ¿
echo                                         ³     ³
echo                                         ³     ³
echo                                         ³     ³
echo                                     \ÄÄÄÙ     ÀÄÄÄ/
echo                                       \         / 
echo                                         \     /
echo                                           \ /
echo                                      INSTALLAZIONE
echo                                     ±±±±±±±±±±±±±±±
echo                                     ±±±±±±±±±±±±±±±
echo                                     ±±±±±±±±±±±±±±±  
echo                                     ±±±±±±±±±±±±±±±
echo                                     ±±±±±±±±±±±±±±±
echo.
echo.
:username
set/p "user=Inserisci il tuo Username: "
if '%user%' == '' echo Username non valido. Inserisci un Username valido. && pause && goto username
choice /c SN /m "Confermi il tuo Username '%user%' ?"
if %errorlevel% == 2 goto installazione
echo %user%>C:\ProgrammazioneTimeAssistant\username.txt
echo Username confermato.
echo.
cls
echo INSTALLAZIONE COMPLETATA ;)
pause
mklink %userprofile%\desktop\PT_bot C:\ProgrammazioneTimeAssistant\PT_bot.bat
mklink %appdata%\Microsoft\Windows\Start Menu\Programs\Startup\PT_bot C:\ProgrammazioneTimeAssistant\PT_bot.bat
cls
ping localhost -n 1 > nul
del/q %0

:inizio0
set/p user=<C:\ProgrammazioneTimeAssistant\username.txt
title Programmazione Time Assistant ©
cls
color 0f
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
ping localhost -n 1 > nul
color 0e
echo                                  º           º                º
ping localhost -n 1 > nul
color 0d
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
ping localhost -n 1 > nul
color 0c
echo                                  º           º     º    º
ping localhost -n 1 > nul
color 0b
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
ping localhost -n 1 > nul
color 0a
echo                                  º    º            º    º
ping localhost -n 1 > nul
color 0e
echo                                  º    º            º    º
ping localhost -n 1 > nul
color 0d
echo                                  º    º            º    º
ping localhost -n 1 > nul
color 0f
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
goto menu

:inizio
mode con: cols=96 lines=21
set/p user=<C:\ProgrammazioneTimeAssistant\username.txt
title Programmazione Time Assistant ©
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
:menu
echo  %date%                                               User: %user%
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [1] Gestione file                           ³  [5] Ricerca File                             ³
echo ³  [2] Gestione Utenti                         ³  [6] Gestisci processi                        ³
echo ³  [3] Gestione data/ora                       ³  [7] Rete                                     ³
echo ³  [4] Gestisci sessione                       ³  [8] Impostazioni                             ³
echo ³                                              ³                                               ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
choice /c 012345678 /n /m "Scegli una delle opzioni (per uscire premi 0):"
if %errorlevel% == 1 exit
if %errorlevel% == 2 goto gestione_file
if %errorlevel% == 3 goto utenti
if %errorlevel% == 4 goto data_ora
if %errorlevel% == 5 goto sessione
if %errorlevel% == 6 goto ricerca
if %errorlevel% == 7 goto processi
if %errorlevel% == 8 goto rete
if %errorlevel% == 9 goto impostazioni
pause
goto inizio




REM ---------------------------------------------------------
REM  GESTISCI FILE
REM ---------------------------------------------------------

:gestione_file
mode con: cols=96 lines=22
title Programmazione Time Assistant © ~ Gestione File
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Crea file                               ³  [f] Nascondi file/cartelle                   ³
echo ³  [b] Crea cartelle                           ³  [g] Visualizza file/cartelle nascosti        ³
echo ³  [c] Elimina file                            ³  [h] Copia file/cartelle                      ³
echo ³  [d] Elimina cartelle                        ³  [i] Sposta file/cartelle                     ³
echo ³  [e] Rinomina file                           ³  [l] Visualizza contenuto file                ³
echo ³                                              ³                                               ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefghil /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto crea_file
if %errorlevel% == 3 goto crea_cartelle
if %errorlevel% == 4 goto elimina_file
if %errorlevel% == 5 goto elimina_cartelle
if %errorlevel% == 6 goto rinomina_file
if %errorlevel% == 7 goto nascondi_file
if %errorlevel% == 8 goto vfile_nascosti
if %errorlevel% == 9 goto copia_file
if %errorlevel% == 10 goto sposta_file
if %errorlevel% == 11 goto vcontenuto_file

:vcontenuto_file
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Visualizza contenuto file
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome del percorso\file.estensione da visualizzare: "
if '%file%' == '' echo Nome file non valido, inserisci un percorso\file corretto. && pause && goto vcontenuto_file
if %file% == / goto gestione_file
mode con: cols=96 lines=35
type %file% | more
if %errorlevel% == 1 echo Errore... riprova. && pause && goto vcontenuto_file
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:sposta_file
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
mode con: cols=110 lines=21
title Programmazione Time Assistant © ~ Gestione File: Sposta file
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file1=Inserisci il nome del file.estensione/cartella da spostare: "
if '%file1%' == '' echo Nome file/cartella non valido, inserisci un file/cartella corretto. && pause && goto sposta_file
if %file1% == / goto gestione_file
set/p "file2=Inserisci il percorso della cartella dove spostare il file/cartella precedente: "
if '%file2%' == '' echo Percorso non valido, inserisci un percorso corretto. Ricorda che deve essere completo (es. C:\%userprofile%\desktop). && pause && goto sposta_file1
if %file2% == / goto gestione_file
:prosegui
move /y %file1% %file2%
if %errorlevel% == 1 echo Errore... riprova. && pause && goto sposta_file
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:sposta_file1
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
echo Inserisci il nome del file.estensione/cartella da spostare: %file1%
set/p "file2=Inserisci il percorso della cartella dove spostare il file/cartella precedente: "
if '%file2%' == '' echo Percorso non valido, inserisci un percorso corretto. Ricorda che deve essere completo (es. C:\%userprofile%\desktop). && pause && goto sposta_file1
if %file2% == / goto gestione_file
goto prosegui

:copia_file
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Copia file/cartelle
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file1=Inseriscil il nome del file.estensione/cartella da copiare: "
if '%file1%' == '' echo Nome file/cartella non valido, inserisci un file/cartella corretto. && pause && goto copia_file
if %file1% == / goto gestione_file
set/p "file2=Inserisci il percorso della cartella dove copiare il file/cartella precedente: "
if '%file2%' == '' echo Percorso non valido, inserisci un percorso corretto. Ricorda che deve essere completo (es. C:\%userprofile%\desktop). && pause && goto copia_file1
if %file2% == / goto gestione_file
:prosegui1
copy /b %file1% %file2%
if %errorlevel% == 1 echo Errore... riprova. && pause && goto copia_file
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:copia_file1
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
echo Inserisci il nome del file.estensione/cartella da spostare: %file1%
set/p "file2=Inserisci il percorso della cartella dove copiare il file/cartella precedente: "
if '%file2%' == '' echo Percorso non valido, inserisci un percorso corretto. Ricorda che deve essere completo (es. C:\%userprofile%\desktop). && pause && goto copia_file1
if %file2% == / goto gestione_file
goto prosegui1

:vfile_nascosti
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Visualizza file/cartelle nascosti
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome del file.estensione/cartella da rendere visibile (valgono i caratteri jolly * e ?): "
if '%file%' == '' echo Nome file/cartella non corretto, inserisci un nome valido. && pause && goto vfile_nascosti
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 attrib -h %file% /S && if %errorlevel% == 1 goto vfile_nascosti1
if %errorlevel% == 2 attrib -h %file% && if %errorlevel% == 1 goto vfile_nascosti1
echo.
echo File/cartelle visibili.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:vfile_nascosti1
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Visualizza file/cartelle nascosti
mode con: cols=110 lines=22
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
echo C'Š stato un errore nel trovare il file/cartella indicata. Inserisci un nome valido.
set/p "file=Inserisci il nome del file.estensione/cartella da rendere visibile (valgono i caratteri jolly * e ?): "
if '%file%' == '' echo Nome file/cartella non corretto, inserisci un nome valido. && pause && goto vfile_nascosti
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 attrib -h %file% /S && if %errorlevel% == 1 goto vfile_nascosti1
if %errorlevel% == 2 attrib -h %file% && if %errorlevel% == 1 goto vfile_nascosti1
echo.
echo File/cartelle visibili.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:nascondi_file
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Nascondi file/cartelle
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome del file.estensione/cartella da nascondere (valgono i caratteri jolly * e ?): "
if '%file%' == '' echo Nome file/cartella non corretto, inserisci un nome valido. && pause && goto nascondi_file
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 attrib +h %file% /S && if %errorlevel% == 1 goto nascondi_file1
if %errorlevel% == 2 attrib +h %file% && if %errorlevel% == 1 goto nascondi_file1
echo.
echo File/cartelle nascoste.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:nascondi_file1
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
title Programmazione Time Assistant © ~ Gestione File: Nascondi file/cartelle
mode con: cols=110 lines=22
cls
echo (Per tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
echo C'Š stato un errore nel trovare il file/cartella indicata. Inserisci un nome valido.
set/p "file=Inserisci il nome del file/cartella da nascondere (valgono i caratteri jolly * e ?): "
if '%file%' == '' echo Nome file/cartella non corretto, inserisci un nome valido. && pause && goto nascondi_file
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 attrib +h %file% /S && if %errorlevel% == 1 goto nascondi_file1
if %errorlevel% == 2 attrib +h %file% && if %errorlevel% == 1 goto nascondi_file1
echo.
echo File/cartelle nascoste.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:rinomina_file
title Programmazione Time Assistant © ~ Gestione File: Rinomina file/cartelle
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
set/p "num=Inserisci il numero di file/cartelle da rinominare: "
if '%num%' == '' echo Non hai inserito un numero corretto, inserisci un valore valido. && pause && goto rinomina_file
if %num% == / goto gestione_file
set/a controllo=%num%
if %num% equ %controllo% (
if %num% LEQ 0 (
echo Hai inserito un numero minore o uguale a 0. Inserisci un valore positivo.
pause
goto rinomina_file
) else (
for /L %%a IN (1,1,%num%) DO (
cls
echo -File/cartella %%a su %num%-
call :rinomina
)
)
) else (
echo Non hai inserito un numero. Inserisci un valore valido.
pause
goto rinomina_file
)
cls
echo File/cartelle rinominate.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
echo.
pause
goto inizio


:rinomina
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file1=Inserisci il nome del file.estensione/cartella da rinominare: "
if '%file1%' == '' echo Nome file.estensione/cartella non valido && pause && goto rinomina
if %file1% == / goto gestione_file
:rinomina1
set/p "file2=Inserisci il nome nuovo: "
if '%file2%' == '' echo Nome file.estensione/cartella non valido && pause && goto rinomina1
if %file2% == / goto gestione_file
ren %file1% %file2%
goto :EOF

:elimina_cartelle
title Programmazione Time Assistant © ~ Gestione File: Elimina cartelle
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
set/p "num=Inserisci il numero di cartelle da eliminare: "
if '%num%' == '' echo Non hai inserito un numero corretto, inserisci un valore valido. && pause && goto elimina_cartelle
if %num% == / goto gestione_file
set/a controllo=%num%
if %num% equ %controllo% (
if %num% LEQ 0 (
echo Hai inserito un numero minore o uguale a 0. Inserisci un valore positivo.
pause
goto elimina_cartelle
) else (
for /L %%a IN (1,1,%num%) DO (
cls
echo -Cartella %%a su %num%-
call :elimina1
)
)
) else (
echo Non hai inserito un numero. Inserisci un valore valido.
pause
goto elimina_cartelle
)
cls
echo Cartelle eliminate.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
echo.
pause
goto inizio

:elimina1
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome della cartella da eliminare: "
if '%file%' == '' echo Nome cartella non valido && pause && goto elimina1
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 rd /S /Q %file%
if %errorlevel% == 2 rd /Q %file%
goto :EOF

:elimina_file
title Programmazione Time Assistant © ~ Gestione File: Elimina file
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
set/p "num=Inserisci il numero di file da eliminare: "
if '%num%' == '' echo Non hai inserito un numero corretto, inserisci un valore valido. && pause && goto elimina_file
if %num% == / goto gestione_file
set/a controllo=%num%
if %num% equ %controllo% (
if %num% LEQ 0 (
echo Hai inserito un numero minore o uguale a 0. Inserisci un valore positivo.
pause
goto elimina_file
) else (
for /L %%a IN (1,1,%num%) DO (
cls
echo -File %%a su %num%-
call :elimina2
)
)
) else (
echo Non hai inserito un numero. Inserisci un valore valido.
pause
goto elimina_file
)
cls
echo File eliminati.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
echo.
pause
goto inizio

:elimina2
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome del file.estensione da eliminare: "
if '%file%' == '' echo Nome file non valido && pause && goto elimina2
if %file% == / goto gestione_file
cls
choice /c SN /m "Applicare l'opzione anche alle sottocartelle?"
if %errorlevel% == 1 del /S /Q %file%
if %errorlevel% == 2 del /Q %file%
goto :EOF

:crea_cartelle
title Programmazione Time Assistant © ~ Gestione File: Crea cartelle
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
set/p "num=Inserisci il numero di cartelle da creare: "
if '%num%' == '' echo Non hai inserito un numero corretto, inserisci un valore valido. && pause && goto crea_cartelle
if %num% == / goto gestione_file
set/a controllo=%num%
if %num% equ %controllo% (
if %num% LEQ 0 (
echo Hai inserito un numero minore o uguale a 0. Inserisci un valore positivo.
pause
goto crea_cartelle
) else (
for /L %%a IN (1,1,%num%) DO (
cls
echo -Cartella %%a su %num%-
call :crea_c
)
)
) else (
echo Non hai inserito un numero. Inserisci un valore valido.
pause
goto crea_cartelle
)
cls
echo Cartelle create.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
echo.
pause
goto inizio

:crea_c
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome della cartella da creare: "
if '%file%' == '' echo Nome cartella non valido && pause && goto crea_c
if %file% == / goto gestione_file
cls
mkdir %file%
goto :EOF

:crea_file
title Programmazione Time Assistant © ~ Gestione File: Crea file
mode con: cols=110 lines=21
cls
echo (Per tornare indietro inserisci /)
set/p "num=Inserisci il numero di file da creare: "
if '%num%' == '' echo Non hai inserito un numero corretto, inserisci un valore valido. && pause && goto crea_file
if %num% == / goto gestione_file
set/a controllo=%num%
if %num% equ %controllo% (
if %num% LEQ 0 (
echo Hai inserito un numero minore o uguale a 0. Inserisci un valore positivo.
pause
goto crea_file
) else (
for /L %%a IN (1,1,%num%) DO (
cls
echo -File %%a su %num%-
call :crea_f
)
)
) else (
echo Non hai inserito un numero. Inserisci un valore valido.
pause
goto crea_file
)
cls
echo File creati.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
echo.
pause
goto inizio

:crea_f
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cd %mypath%
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path di partenza: %mypath%)
set/p "file=Inserisci il nome del file.estensione da creare: "
if '%file%' == '' echo Nome file non valido && pause && goto crea_f
if %file% == / goto gestione_file
cls
fsutil file createNew %file% 0
goto :EOF




REM ---------------------------------------------------------
REM  GESTISCI UTENTI
REM ---------------------------------------------------------

:utenti
mode con: cols=96 lines=21
title Programmazione Time Assistant © ~ Gestione Utenti
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Crea account                            ³  [e] Disattiva account                        ³
echo ³  [b] Elimina account                         ³  [f] Imposta password a un account            ³
echo ³  [c] Visualizza account                      ³  [g] Cambia password a un account             ³
echo ³  [d] Attiva account                          ³  [h] Rimuovi password a un account            ³
echo ³                                              ³                                               ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefgh /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto crea_account
if %errorlevel% == 3 goto elimina_account
if %errorlevel% == 4 goto visualizza_account
if %errorlevel% == 5 goto attiva_account
if %errorlevel% == 6 goto disattiva_account
if %errorlevel% == 7 goto i_password
if %errorlevel% == 8 goto c_password
if %errorlevel% == 9 goto r_password

:r_password
title Programmazione Time Assistant © ~ Gestione Utenti: Rimuovi password a un account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account a cui rimuovere la password: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto r_password
if %nome% == / goto utenti
net user %nome% passwordreq:no
if %errorlevel% == 2 goto niente
echo.
echo Password rimossa.
:niente
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:c_password
title Programmazione Time Assistant © ~ Gestione Utenti: Cambia password a un account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account a cui cambiare la password: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto c_password
if %nome% == / goto utenti
net user %nome% *
if %errorlevel% == 2 goto niente
echo.
echo Password cambiata.
:niente
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:i_password
title Programmazione Time Assistant © ~ Gestione Utenti: Imposta password a un account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account a cui cambiare la password: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto i_password
if %nome% == / goto utenti
net user %nome% *
if %errorlevel% == 2 goto niente
echo.
echo Password impostata.
:niente
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:disattiva_account
title Programmazione Time Assistant © ~ Gestione Utenti: Disattiva account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account da disattivare: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto disattiva_account
if %nome% == / goto utenti
net user %nome% /active:no
echo.
echo Account disattivato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:attiva_account
title Programmazione Time Assistant © ~ Gestione Utenti: Attiva account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account da attivare: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto disattiva_account
if %nome% == / goto utenti
net user %nome% /active:yes
echo.
echo Account attivato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:visualizza_account
title Programmazione Time Assistant © ~ Gestione Utenti: Visualizza account
cls
net user
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto utenti

:elimina_account
title Programmazione Time Assistant © ~ Gestione Utenti: Elimina account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account da eliminare: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto elimina_account
if %nome% == / goto utenti
net user %nome% /delete
if %errorlevel% == 2 goto niente1
echo.
echo Account eliminato.
:niente1
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:crea_account
title Programmazione Time Assistant © ~ Gestione Utenti: Crea account
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome dell'account da creare: "
if '%nome%' == '' echo Nome utente non valido, inserisci un nome corretto. && pause && goto crea_account
if %nome% == / goto utenti
choice /c SN /m "Gi… che ci sei imposti anche una password?"
if %errorlevel% == 1 net user %nome% * /add
if %errorlevel% == 2 net user %nome% /add
echo.
echo Account creato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio




REM ---------------------------------------------------------
REM  GESTISCI DATA E ORA
REM ---------------------------------------------------------

:data_ora
mode con: cols=96 lines=19
title Programmazione Time Assistant © ~ Gestione Data/Ora
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Cambia data                                                                             ³
echo ³  [b] Cambia l'orario                                                                         ³
echo ³                                                                                              ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0ab /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto cambia_data
if %errorlevel% == 3 goto cambia_ora

:cambia_ora
title Programmazione Time Assistant © ~ Gestione Data/Ora: Cambia l'oraio
cls
choice /c SN /m "Sei sicuro di cambiare l'orario'? Una volta accettato non puoi tornare indietro."
if %errorlevel% == 2 goto data_ora
echo (per tornare indietro ti tocca uscire dal programma)
time
echo.
echo Orario cambiato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:cambia_data
title Programmazione Time Assistant © ~ Gestione Data/Ora: Cambia data
cls
choice /c SN /m "Sei sicuro di cambiare la data? Una volta accettato non puoi tornare indietro."
if %errorlevel% == 2 goto data_ora
echo (per tornare indietro ti tocca uscire dal programma)
date
echo.
echo Data cambiata.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio




REM ---------------------------------------------------------
REM  GESTISCI SESSIONE
REM ---------------------------------------------------------

:sessione
mode con: cols=96 lines=20
title Programmazione Time Assistant © ~ Gestisci sessione
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Spegni il PC (istanteno)                ³  [e] Ferma spegnimento/riavvio a tempo        ³
echo ³  [b] Riavvia il PC (istanteno)               ³  [f] Metti in ibernazione il PC               ³
echo ³  [c] Spegni il PC (a tempo)                  ³  [g] Forza la chiusura delle applicazioni     ³
echo ³  [d] Riavvia il PC (a tempo)                 ³                                               ³
echo ³                                              ³                                               ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefg /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto spegni_i
if %errorlevel% == 3 goto riavvia_i
if %errorlevel% == 4 goto spegni_t
if %errorlevel% == 5 goto riavvia_t
if %errorlevel% == 6 goto ferma_sr
if %errorlevel% == 7 goto iberna
if %errorlevel% == 8 goto chiusura_app

:chiusura_app
title Programmazione Time Assistant © ~ Gestisci sessione: Forza la chiusura delle applicazioni
cls
choice /c SN /m "Sei sicuro di forzare la chiusura delle applicazioni?"
if %errorlevel% == 2 goto sessione
shutdown -f
exit

:iberna
title Programmazione Time Assistant © ~ Gestisci sessione: Metti in ibernazione il PC
cls
choice /c SN /m "Sei sicuro di ibernare il PC?"
if %errorlevel% == 2 goto sessione
shutdown -h
goto inizio

:ferma_sr
title Programmazione Time Assistant © ~ Gestisci sessione: Ferma spegnimento/riavvio a tempo
cls
shutdown -a
echo Spegnimento/riavvio a tempo interrotto.
echo (Una volta premuto un qualsiasi tasto tornerai al men— della gestione sessione)
pause
goto sessione

:riavvia_t
title Programmazione Time Assistant © ~ Gestisci sessione: Riavvia il PC (a tempo)
cls
echo (Per tornare indietro inserisci /)
set/p "tempo=Inserisci i secondi di attesa per il riavvio 1-315360000 (10 anni): "
if '%tempo%' == '' echo Tempo non valido, inserisci un tempo corretto. && pause && goto riavvia_t
set/a input=%tempo%
if %tempo% neq %input% (
echo Tempo non valido, inserisci un tempo corretto.
pause
goto riavvia_t
)
if %tempo% leq 0 (
echo Tempo non valido, inserisci un tempo corretto.
pause
goto riavvia_t
)
cls
shutdown -r -t %tempo%
echo Riavvio a tempo avviato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— della gestione sessione)
pause
goto sessione

:spegni_t
title Programmazione Time Assistant © ~ Gestisci sessione: Spegni il PC (a tempo)
cls
echo (Per tornare indietro inserisci /)
set/p "tempo=Inserisci i secondi di attesa per lo spegnimento 1-315360000 (10 anni): "
if '%tempo%' == '' echo Tempo non valido, inserisci un tempo corretto. && pause && goto spegni_t
set/a input=%tempo%
if %tempo% neq %input% (
echo Tempo non valido, inserisci un tempo corretto.
pause
goto spegni_t
)
if %tempo% leq 0 (
echo Tempo non valido, inserisci un tempo corretto.
pause
goto spegni_t
)
cls
shutdown -s -t %tempo%
echo Spegnimento a tempo avviato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— della gestione sessione)
pause
goto sessione

:riavvia_i
title Programmazione Time Assistant © ~ Gestisci sessione: Riavvia il PC (istanteno)
cls
choice /c SN /m "Sei sicuro di riavviare il pc il PC?"
if %errorlevel% == 2 goto sessione
shutdown -r -t 0
exit

:spegni_i
title Programmazione Time Assistant © ~ Gestisci sessione: Spegni il PC (istanteno)
cls
choice /c SN /m "Sei sicuro di spegnere il pc il PC?"
if %errorlevel% == 2 goto sessione
shutdown -p
exit




REM ---------------------------------------------------------
REM  RICERCA FILE
REM ---------------------------------------------------------

:ricerca
mode con: cols=96 lines=20
title Programmazione Time Assistant © ~ Ricerca File
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Ricerca del file tramite nome                                                           ³
echo ³  [b] Ricerca stringhe nei file                                                               ³
echo ³                                                                                              ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefg /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto ricerca_nome
if %errorlevel% == 3 goto ricerca_stringa

:ricerca_stringa
cd\
title Programmazione Time Assistant © ~ Ricerca File: Stringhe nei file
mode con: cols=110 lines=21
:percorso1
cls
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Per lasciare quello attuale inserisci \)
echo (Path di inizio ricerca: %cd%)
set/p "newpath=Inserisci il percorso da cui vuoi partire (quello attuale Š espresso sopra): "
if %newpath% == / goto sessione
if %newpath% == \ goto cerca1
if not exist %newpath% (
echo Il percorso inserito non esiste. Inserisci un percorso valido.
pause
goto percorso1
)
cd %newpath%
:cerca1
cls
echo (Per tornare alla voce precedente inserisci /)
echo (Path di inizio ricerca: %cd%)
set/p "str=Inserisci la parola che vuoi cercare nei file: "
if '%str%' == '' echo Parola non valida. Inserisci una parola corretta. && pause && goto cerca1
if %str% == / goto percorso1
:cerca2
cls
echo (Per tornare alla voce precedente inserisci /)
echo (Path di inizio ricerca: %cd%)
set/p "file=Inserisci il nome del file.estensione in cui cercare: "
if '%file%' == '' echo Nome file non valido. Inserisci un nome corretto. && pause && goto cerca2
if %file% == / goto cerca1
choice /c SN /m "Vuoi far distinzione tra maiuscole e minuscole?"
if %errorlevel% == 1 findstr /s /m %str% %file%
if %errorlevel% == 2 findstr /s /i /m %str% %file%
echo.
echo Ricerca completata.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio


:ricerca_nome
cd\
title Programmazione Time Assistant © ~ Ricerca File: Tramite nome
mode con: cols=110 lines=21
:percorso
cls
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Per lasciare quello attuale inserisci \)
echo (Path di inizio ricerca: %cd%)
set/p "newpath=Inserisci il percorso da cui vuoi partire (quello attuale Š espresso sopra): "
if '%newpath%' == '' echo Nome percorso non valido && pause && goto percorso
if %newpath% == / goto sessione
if %newpath% == \ goto cerca
if not exist %newpath% (
echo Il percorso inserito non esiste. Inserisci un percorso valido.
pause
goto percorso
)
cd %newpath%
:cerca
cls
echo (Per tornare alla voce precedente inserisci /)
echo (Path attuale: %cd%)
set/p "file=Inserisci il nome file.estensione che vuoi cercare: "
if '%file%' == '' echo Nome percorso non valido && pause && goto cerca
if %file% == / goto percorso
dir /s /b /a:-h %file%
if %errorlevel% == 1 dir /s /b /a:h %file%
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio





REM ---------------------------------------------------------
REM  GESTIONE PROCESSI
REM ---------------------------------------------------------

:processi
mode con: cols=96 lines=20
title Programmazione Time Assistant © ~ Gestione processi
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Visualizza lista processi                                                               ³
echo ³  [b] Termina processo                                                                        ³
echo ³                                                                                              ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefg /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto richiedi
if %errorlevel% == 3 goto termina

:termina
title Programmazione Time Assistant © ~ Gestione processi: Termina processo
mode con: cols=110 lines=21
cls
echo Generazione lista processi...
tasklist>C:\ProgrammazioneTimeAssistant\processi.txt
start C:\ProgrammazioneTimeAssistant\processi.txt
ping localhost -n 5 > nul
goto :t_proc
:t_procpre
pause
:t_proc
cls
echo (Per tornare indietro inserisci /)
set/p "nome=Inserisci il nome.estensione del processo da terminare: "
if '%nome%' == '' echo Nome processo non valido. Inserisci un processo valido leggendo la lista. && pause && goto t_proc
if %nome% == / goto ricerca
choice /c SN /m "Vuoi chiudere anche i sottoprocessi relativi a %nome%?"
if %errorlevel% == 1 TASKKILL /F /IM %nome% /T
if %errorlevel% == 2 TASKKILL /F /IM %nome%
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:richiedi
title Programmazione Time Assistant © ~ Gestione processi: Visualizza lista processi
mode con: cols=110 lines=21
cls
tasklist | more
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio






REM ---------------------------------------------------------
REM  RETE
REM ---------------------------------------------------------

:rete
mode con: cols=96 lines=20
title Programmazione Time Assistant © ~ Rete
cls
echo                                  ÉÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo                                  º           º                º
echo                                  º     D     ÌÍÍÍÍÍ»    ÉÍÍÍÍÍ¼
echo                                  º           º     º    º
echo                                  º    ÉÍÍÍÍÍÍ¼     º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  º    º            º    º
echo                                  ÈÍÍÍÍ¼            ÈÍÍÍÍ¼
echo.
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ Opzioni Men— ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³                                                                                              ³
echo ³  [a] Visualizza IP di un sito                                                                ³
echo ³  [b] Password del tuo wifi                                                                   ³
echo ³                                                                                              ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo. 
choice /c 0abcdefg /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto sito
if %errorlevel% == 3 goto wifi

:wifi
title Programmazione Time Assistant © ~ Rete : Password del tuo wifi
cls
echo Generazione lista reti...
netsh wlan show profile>C:\ProgrammazioneTimeAssistant\reti.txt
ping localhost -n 5 > nul
start C:\ProgrammazioneTimeAssistant\reti.txt
:linea
cls
echo (In alcuni casi pu¢ non funzionare, ad esempio in LAN)
echo (Per tornare indietro inserisci /)
set/p "rete=Inserisci il nome della TUA rete: "
if '%rete%' == '' echo Nome rete non valido. Inserisci un nome corretto. && pause && goto linea
if %rete% == / goto rete
netsh wlan show profile name="%rete%" key=clear>C:\ProgrammazioneTimeAssistant\password.txt
echo Ecco la tua password:
findstr "Contenuto" C:\ProgrammazioneTimeAssistant\password.txt
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
del /q C:\ProgrammazioneTimeAssistant\password.txt
del /q C:\ProgrammazioneTimeAssistant\reti.txt
goto inizio

:sito_err
pause
:sito
title Programmazione Time Assistant © ~ Rete : IP di un sito
cls
echo (Per tornare indietro inserisci /)
set/p "sito=Inserisci il link di un sito (www.nomesito.com , senza l'http://): "
if '%sito%' == '' echo Link non valido. Inserisci un link corretto. && pause && goto sito
if %sito% == / goto rete
ping %sito%
if %errorlevel% == 1 goto sito_err
echo.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio





REM ---------------------------------------------------------
REM  IMPOSTAZIONI
REM ---------------------------------------------------------

:impostazioni
mode con: cols=84 lines=18
title Programmazione Time Assistant © ~ Impostazioni
cls
echo.
echo.
echo                CAMBIA IMPOSTAZIONI ~ Programmazione Time Assistant ©
echo.
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo º                                                                                 º 
echo º  [1] Modifica il tuo username                                                   º 
echo º  [2] Modifica il path di partenza                                               º 
echo º  [3] Disinstalla assistente                                                     º 
echo º                                                                                 º 
echo ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
echo.
choice /c 0123 /n /m "Scegli una delle opzioni (per tornare indietro premi 0):"
if %errorlevel% == 1 goto inizio
if %errorlevel% == 2 goto nome_utente
if %errorlevel% == 3 goto mypath
if %errorlevel% == 4 goto uninstall


:mypath
mode con: cols=84 lines=18
title Programmazione Time Assistant © ~ Impostazioni : Modifica path di partenza
set/p mypath=<C:\ProgrammazioneTimeAssistant\percorso.txt
cls
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Path predefinito: %mypath%)
set/p "newpath=Inserisci il nuovo path predefinito: "
if '%newpath%' == '' echo Percorso non valido, inserisci un percorso corretto. && pause && goto mypath
if %newpath% == / goto impostazioni
if not exist %newpath% (
echo Il nuovo percorso non esiste. Inserisci un percorso esistente.
pause
goto mypath
)
echo %newpath%>C:\ProgrammazioneTimeAssistant\percorso.txt
echo.
echo Nuovo percorso predefinito impostato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:nome_utente
mode con: cols=96 lines=21
set/p user=<C:\ProgrammazioneTimeAssistant\username.txt
title Programmazione Time Assistant © ~ Impostazioni : Modifica il tuo username
cls
echo (Per annullare tutto e tornare indietro inserisci /)
echo (Il tuo username: %user%)
set/p "newuser=Inserisci il nuovo username: "
if '%newuser%' == '' echo Username non valido, inseriscine uno corretto. && pause && goto nome_utente
if %newuser% == / goto impostazioni
echo %newuser%>C:\ProgrammazioneTimeAssistant\username.txt
echo.
echo Nuovo username impostato.
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:uninstall
color 0f
mode con: cols=96 lines=28
title Programmazione Time Assistant © ~ Impostazioni : Disintalla assistente
cls
echo.
echo                                           ±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                                       ±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0d
echo                                    ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                 ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0b
echo                               ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0a
echo                              ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                             ±±±±±±±±±±±ÛÛÛ±±±±±±±±±±±±±±ÛÛÛ±±±±±±±±±±±
ping localhost -n 1 > nul
color 0d
echo                            ±±±±±±±±±ÛÛÛÛ±±±±±±±±±±±±±±±±±ÛÛÛÛÛ±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                           ±±±±±ÛÛÛÛÛÛÛÛ±±±±±±±±±±±±±±±±±±±±ÛÛÛÛÛÛÛÛ±±±±±
ping localhost -n 1 > nul
color 0b
echo                           ±±±±ÛÛÛÛ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±ÛÛÛÛ±±±±
ping localhost -n 1 > nul
color 0a
echo                          ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                          ±±±±±±±±±ÛÛ±±±±±ÛÛÛ±±±±±±±±±±ÛÛÛ±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0d
echo                          ±±±±±±±±Û±±Û±±±±ÛÛÛÛÛ±±±±±±±±ÛÛÛÛÛ±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                          ±±±±±±±Û±±±±Û±±±ÛÛÛÛÛ±±±±±±±±ÛÛÛÛÛ±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0b
echo                           ±±±±±Û±±±±±±Û±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0a
echo                           ±±±±Û±±±±±±±±Û±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                            ±±Û±±±±±±±±±±Û±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0d
echo                             ±Û±±±±±±±±±±Û±±±±ÛÛÛÛÛÛÛÛ±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                               Û±±±±±±±ÛÛ±±ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0b
echo                                ÛÛÛÛÛÛÛ±±±ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ±±±±±±±±±±
ping localhost -n 1 > nul
color 0a
echo                                  ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo                                    ±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0d
echo                                        ±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                            ±±±±±±±±±±±±
echo.
color 0f
choice /c SN /m "Sicuro di dinstallare l'assistente?"
if %errorlevel% == 1 goto ciao
if %errorlevel% == 2 goto resta

:resta
color 0f
mode con: cols=105 lines=33
title Programmazione Time Assistant © ~ Impostazioni : Disintalla assistente
cls
echo.
echo                                 ±±±±±±±±±±                   ±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                            ±±±±±±±±±±±±±±±±±±±           ±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                          ±±±±±±±±±±±±±±±±±±±±±±±      ±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                         ±±±±±±±±±±±±±±±±±±±±±±±±±±   ±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                        ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                        ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                         ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                          ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                            ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                             ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                                 ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                  ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                                     ±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                       ±±±±±±±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                                          ±±±±±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                            ±±±±±±±±±±±±±±±±±
ping localhost -n 1 > nul
color c0
echo                                              ±±±±±±±±±±±±±
ping localhost -n 1 > nul
color 0c
echo                                                 ±±±±±±±
ping localhost -n 1 > nul
color c0
echo                                                   ±±±
ping localhost -n 1 > nul
color 0f
echo.
echo Saggia scelta ;)
echo (Una volta premuto un qualsiasi tasto tornerai al men— iniziale)
pause
goto inizio

:ciao
color 0f
mode con: cols=100 lines=22
title Programmazione Time Assistant © ~ Impostazioni : Disintalla assistente
cls
echo.
echo               ± ±  ±±±±±±  ±±±±±±  ±±±±±  ±±±±±±  ±±±±±±  ±±±±±± ±±±±±±±±
ping localhost -n 1 > nul
color 0e
echo              ±±±±± ±±   ±  ±       ±±±    ±±  ±±  ±       ±±        ±±
ping localhost -n 1 > nul
color 0d
echo               ± ±  ±±±±±±  ±±±±±      ±±  ±±±±±±  ±±±±±±  ±±        ±±
ping localhost -n 1 > nul
color 0c
echo              ±±±±± ±±  ±   ±±         ±±  ±±      ±       ±±        ±±
ping localhost -n 1 > nul
color 0b
echo               ± ±  ±±  ±   ±±±±±±  ±±±±±  ±±      ±±±±±±  ±±±±±     ±±
echo.
color 0f
echo Questo bot ti ha servito con onore.
echo Se qualcosa non Š stato gradito riferiscilo nel bot Telegram @ProgrammazioneTimeBot
echo.
echo (Una volta premuto qualsiasi tasto verr… disintallato dal PC, e sarai rindirizzato al bot TG)
pause>nul
start www.t.me/programmazionetimebot
echo @echo off>%userprofile%\desktop\uninstall.bat
echo title Disintalla PT_bot
echo del /q %userprofile%\desktop\PT_bot>>%userprofile%\desktop\uninstall.bat
echo del /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\PT_bot">>%userprofile%\desktop\uninstall.bat
echo rd /q /s C:\ProgrammazioneTimeAssistant>>%userprofile%\desktop\uninstall.bat
echo del /q %userprofile%\desktop\uninstall.bat>>%userprofile%\desktop\uninstall.bat
PowerShell -Command "& {Start-Process %userprofile%\desktop\uninstall.bat -Verb RunAs}"
exit

