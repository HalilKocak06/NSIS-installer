!include "MUI2.nsh"

Name "NotePad"
OutFile "NotePad.exe"
InstallDir "$PROGRAMFILES\NotePad"
RequestExecutionLevel user

Page directory
Page instfiles


Section "Main Section"
   SetOutPath "$INSTDIR"
   File "main.exe"

SectionEnd
