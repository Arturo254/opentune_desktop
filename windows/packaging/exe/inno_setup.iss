[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.12.0+25
AppName=OpenTune-Desktop
AppPublisher=Arturo254
AppPublisherURL=https://github.com/Arturo254/OpenTune-Desktop
AppSupportURL=https://github.com/Arturo254/OpenTune-Desktop
AppUpdatesURL=https://github.com/Arturo254/OpenTune-Desktop
DefaultDirName={autopf}\opentune_desktop
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=opentune_desktop-1.12.0
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\LICENSE
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\opentune_desktop.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\Harmony Music"; Filename: "{app}\opentune_desktop.exe"
Name: "{autodesktop}\Harmony Music"; Filename: "{app}\opentune_desktop.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\opentune_desktop.exe"; Description: "{cm:LaunchProgram,{#StringChange('Harmony Music', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
