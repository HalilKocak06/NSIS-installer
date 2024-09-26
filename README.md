# NSIS Installer for NotePad Application
This guide will walk you through creating an installer for a simple NotePad application using NSIS (Nullsoft Scriptable Install System).

## Installation Instructions
### Step 1: Download and Install NSIS
Download NSIS from the official website.
Install it on your machine by following the provided instructions.
### Step 2: Set Up System Path
Ensure that the makensis command is added to your system's PATH environment variable, so you can run NSIS commands from any directory.
### Step 3: Create the Installer Script
Create a .nsi file (e.g., NotePad.nsi), and use the following code to set up the installer script:
nsi
!include "MUI2.nsh"

Name "NotePad"
OutFile "NotePadInstaller.exe"
InstallDir "$PROGRAMFILES\NotePad"
RequestExecutionLevel user

Page directory
Page instfiles

Section "Main Section"
   SetOutPath "$INSTDIR"
   File "main.exe"
SectionEnd

### Step 4: Compile the Installer Script
Open a terminal or command prompt and navigate to the directory where your .nsi file is located.
Run the following command to compile the installer:
makensis NotePad.nsi

### Step 5: Run the Generated Installer
After compiling, an executable file (NotePadInstaller.exe) will be created.
You can now run this installer to install your NotePad application to the specified directory.

## Notes:
This guide assumes that your main.exe (the actual application) is located in the same directory as the .nsi script.
Feel free to customize the script for additional features like shortcuts, uninstallers, and more!
For more details about NSIS scripting and features, check out the NSIS Documentation.
