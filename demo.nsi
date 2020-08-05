; Modern UI
!include "MUI2.nsh"

Unicode True
RequestExecutionLevel admin

Name "MyApplication"
OutFile "MyApplicationInstaller.exe"

; https://nsis.sourceforge.io/Reference/InstallDirRegKey
InstallDir "$PROGRAMFILES\MyApplication"
InstallDirRegKey HKCU "Software\MyApplication" ""

; Show a warning when the user wants to abort the installer.
!define MUI_ABORTWARNING

; Installer Pages
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Section

  SetOutPath "$INSTDIR"
  
  File config.ini

SectionEnd
