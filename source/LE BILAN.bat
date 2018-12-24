@echo off
cls
title LE BILAN  /  par Daooda Davinho

:HOME
cls
color 0f
echo.
echo  BONJOUR
echo  Ce programme vous permet de faire le bilan quand vous jouez au Scrabble !
echo.
echo  1/  Commencer le bilan maintenant !
echo  2/  Comment l'utiliser ?
echo  3/  A propos de..
echo  4/  Quitter
echo.
set /p main=faite votre choix ? : 
pause
if %main% EQU 1 goto NEXT else (goto IND1)
if %main% EQU 2 goto AIDE else (goto IND1)
if %main% EQU 3 goto WHO else (goto IND1)
if %main% EQU 4 goto QUIT else (goto IND1)

:IND1
cls
color 0c
echo.
echo  Veuillez saisir un choix valide SVP
echo  1, 2, 3 ou 4 ?
pause
goto HOME

:NEXT
cls
color 0f
echo.
echo  Nombre De Joueur
echo  Vous etes combien de joueur ?
echo.
set /p nbr=faites votre choix ? : 
pause
if %nbr% EQU 2 goto PLAYER2 else (goto IND2)
if %nbr% EQU 3 goto PLAYER3 else (goto IND2)
if %nbr% EQU 4 goto PLAYER4 else (goto IND2)

:IND2
cls
color 0c
echo.
echo  Le scrabble se joue entre 2 joueurs, 3 joueurs ou 4 joueurs.
echo  Donc faites le bon choix SVP.
pause
goto NEXT

:PLAYER2
cls
echo.
echo  Deux Joueur
set /p pnom1=Entrer le nom du premier joueur : 
set /p pnom2=Entrer le nom du deuxieme joueur : 
:PLAY2
cls
color 09
set /p cpt1=Nombre de point(s) pour %pnom1% = 
if %cpt1% LSS 0 goto AVRT1
if %cpt1% GTR 200 goto AVRT1
if %cpt1% EQU 199 goto BILAN2P
pause
:BACK1
cls
color 0e
set /p cpt2=Nombre de point(s) pour %pnom2% = 
if %cpt2% LSS 0 goto AVRT2
if %cpt2% GTR 200 goto AVRT2
if %cpt2% EQU 199 goto BILAN2P
pause
set /a i=i+cpt1
set /a j=j+cpt2
goto PLAY2
:AVRT1
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto PLAY2
:AVRT2
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK1



:PLAYER3
cls
echo.
echo  Trois Joueur
set /p pnom1=Entrer le nom du premier joueur : 
set /p pnom2=Entrer le nom du deuxieme joueur : 
set /p pnom3=Entrer le nom du troisieme joueur : 
:PLAY3
cls
color 09
set /p cpt1=Nombre de point(s) pour %pnom1% = 
if %cpt1% LSS 0 goto AVRT3
if %cpt1% GTR 200 goto AVRT3
if %cpt1% EQU 199 goto BILAN3P
pause
:BACK2
cls
color 0e
set /p cpt2=Nombre de point(s) pour %pnom2% = 
if %cpt2% LSS 0 goto AVRT4
if %cpt2% GTR 200 goto AVRT4
if %cpt2% EQU 199 goto BILAN3P
pause
:BACK3
cls
color 0a
set /p cpt3=Nombre de point(s) pour %pnom3% = 
if %cpt3% LSS 0 goto AVRT5
if %cpt3% GTR 200 goto AVRT5
if %cpt3% EQU 199 goto BILAN3P
pause
set /a i=i+cpt1
set /a j=j+cpt2
set /a k=k+cpt3
goto PLAY3
:AVRT3
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto PLAY3
:AVRT4
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK2
:AVRT5
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK3



:PLAYER4
cls
echo.
echo  Quatre Joueur
set /p pnom1=Entrer le nom du premier joueur : 
set /p pnom2=Entrer le nom du deuxieme joueur : 
set /p pnom3=Entrer le nom du troisieme joueur : 
set /p pnom4=Entrer le nom du quatrieme joueur : 
:PLAY4
cls
color 09
set /p cpt1=Nombre de point(s) pour %pnom1% = 
if %cpt1% LSS 0 goto AVRT6
if %cpt1% GTR 200 goto AVRT6
if %cpt1% EQU 199 goto BILAN4P
pause
:BACK4
cls
color 0e
set /p cpt2=Nombre de point(s) pour %pnom2% = 
if %cpt2% LSS 0 goto AVRT7
if %cpt2% GTR 200 goto AVRT7
if %cpt2% EQU 199 goto BILAN4P
pause
:BACK5
cls
color 0a
set /p cpt3=Nombre de point(s) pour %pnom3% = 
if %cpt3% LSS 0 goto AVRT8
if %cpt3% GTR 200 goto AVRT8
if %cpt3% EQU 199 goto BILAN4P
pause
:BACK6
cls
color 0d
set /p cpt4=Nombre de point(s) pour %pnom4% = 
if %cpt4% LSS 0 goto AVRT9
if %cpt4% GTR 200 goto AVRT9
if %cpt4% EQU 199 goto BILAN4P
pause
set /a i=i+cpt1
set /a j=j+cpt2
set /a k=k+cpt3
set /a l=l+cpt4
goto PLAY4
:AVRT6
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto PLAY4
:AVRT7
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK4
:AVRT8
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK5
:AVRT9
echo.
cls
color 0c
echo  Veuillez saisir le bon nombre de points SVP !
pause
goto BACK6


:AIDE
cls
color 02
echo.
echo  Ce programme permet de faire le calcul des points
echo  quand vous jouez au Scrabble (le bilan).
echo.
echo  Avant de commencer, vous devez dabord donner le nombre de joueurs
echo  et le Scrabble se joue entre 2 joueurs, 3 joueurs ou 4 joueurs.
echo.
echo  Ensuite apres avoir saisit les noms des joueurs,
echo  on peut commencer le bilan .
echo.
echo  A la fin, il vous suffit de saisir le chiffre 199
echo  pour finir le bilan et voir les resultats du jeu.
echo.
pause
goto HOME

:WHO
cls
color 02
echo.
echo.
echo  PRESENTATION
echo.
echo  BONJOUR
echo  Je m'appelle Daouda BA et j'ai ecrit ce programme
echo  car j'adore jouer au Scrabble et pour me faciliter les choses quand je joue,
echo  je me suis dit, pourquoi pas cree un programme qui fait le bilan a ma place ?
echo  Et voila comment est nee ce programme.
echo.
echo.
echo.
echo  FICHE DU PROGRAMME
echo.
echo  Nom du programme          :  Le Bilan
echo  Date de creation          :  le 20 decembre 2017
echo  Version du programme      :  1.0
echo  Langage de programmation  :  Batch
echo.
echo.
echo.
echo  CONTACT
echo.
echo  Telephone :  +221 77 396 90 61
echo  Adresse   :  Guediawaye - DAKAR - Senegal
echo  E-mail    :  davinhoba9@outlook.fr
echo.
pause
goto HOME


:BILAN2P
echo. > BILAN.txt
echo. >> BILAN.txt
echo                     LE  BILAN >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom1% vous avez %i% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom2% vous avez %j% points >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   le %date% à %time% >> BILAN.txt
echo     crée par Daooda Davinho BA >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
start BILAN.txt
cls
echo.
echo %pnom1% vous avez %i% points
echo %pnom2% vous avez %j% points
echo.
pause
goto FIN

:BILAN3P
echo. > BILAN.txt
echo. >> BILAN.txt
echo                     LE  BILAN >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom1% vous avez %i% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom2% vous avez %j% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom3% vous avez %k% points >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   le %date% à %time% >> BILAN.txt
echo     crée par Daooda Davinho BA >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
start BILAN.txt
cls
echo.
echo %pnom1% vous avez %i% points
echo %pnom2% vous avez %j% points
echo %pnom3% vous avez %k% points
echo.
pause
goto FIN

:BILAN4P
echo. > BILAN.txt
echo. >> BILAN.txt
echo                     LE  BILAN >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom1% vous avez %i% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom2% vous avez %j% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom3% vous avez %k% points >> BILAN.txt
echo. >> BILAN.txt
echo   %pnom4% vous avez %l% points >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
echo   le %date% à %time% >> BILAN.txt
echo     crée par Daooda Davinho BA >> BILAN.txt
echo. >> BILAN.txt
echo. >> BILAN.txt
start BILAN.txt
cls
echo.
echo %pnom1% vous avez %i% points
echo %pnom2% vous avez %j% points
echo %pnom3% vous avez %k% points
echo %pnom4% vous avez %l% points
echo.
pause
goto FIN


:FIN
cls
color 0f
echo.
echo.
echo  1/  Retour au Menu Principale
echo  2/  Quitter le programme
echo.
set /p main=faite votre choix ? : 
pause
if %main% EQU 1 goto HOME else (goto IND3)
if %main% EQU 2 goto QUIT else (goto IND3)

:IND3
cls
color 0c
echo.
echo  Veuillez saisir un choix valide SVP !
echo  1 ou 2
pause
goto FIN

:QUIT
cls
color 0f
echo.
echo  Merci d'avoir utiliser ce programme
echo  a la prochaine :)
pause > null