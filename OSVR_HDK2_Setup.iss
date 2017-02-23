[Setup]
AppName=OSVR Plugin for SteamVR
AppVerName=SteamVR-OSVR-Win-Build-v0.1-296-g7011d81-core-v0.6-1935-ga2cba4b6
AppPublisher=Kevin Godby
AppPublisherURL=https://github.com/OSVR/SteamVR-OSVR
AppSupportURL=https://github.com/OSVR/SteamVR-OSVR
AppUpdatesURL=https://github.com/OSVR/SteamVR-OSVR
DefaultDirName={pf32}\Steam\steamapps\common\SteamVR\drivers\osvr
DefaultGroupName=Steam\SteamVR
OutputBaseFilename=OSVR_HDK2_Setup
SetupIconFile=release_icon.ico
UninstallDisplayIcon=release_icon.ico
Compression=lzma
SolidCompression=yes
InfoBeforeFile=eula.txt
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
;Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Dirs]
;Name: "{app}\screenshots"

[Code]

[Files]
Source: "steamvr.vrsettings"; DestDir: "{pf32}\Steam\config"; CopyMode: alwaysoverwrite
Source: "SteamVR-OSVR\lib\openvr\osvr\bin\*"; DestDir: "{pf32}\Steam\steamapps\common\SteamVR\drivers\osvr\bin"; CopyMode: alwaysoverwrite
Source: "SteamVR-OSVR\lib\openvr\osvr\bin\win32\*"; DestDir: "{pf32}\Steam\steamapps\common\SteamVR\drivers\osvr\bin\win32"; CopyMode: alwaysoverwrite
Source: "SteamVR-OSVR\lib\openvr\osvr\bin\win64\*"; DestDir: "{pf32}\Steam\steamapps\common\SteamVR\drivers\osvr\bin\win64"; CopyMode: alwaysoverwrite

[Icons]
;Name: "{group}\Game"; Filename: "{app}\AutoPatcher.exe"; WorkingDir: "{app}";
;Name: "{group}\Uninstall Game"; Filename: "{app}\unins000.exe"; Tasks: desktopicon; WorkingDir: "{app}"
;Name: "{userdesktop}\Game Launcher"; Filename: "{app}\AutoPatcher.exe"; Tasks: desktopicon; WorkingDir: "{app}"

[Run]
;Filename: "{tmp}\install_dotnet.cmd"; Description: "{cm:LaunchProgram,.NET 4.0 Framework Installer}"; Flags: postinstall skipifsilent; Parameters: "{tmp}";
;Filename: "{tmp}\install_vcredist.cmd"; Description: "{cm:LaunchProgram,Unpack Microsoft Visual C++ 2010 SP1 Redistributable Package Installer}"; Flags: postinstall skipifsilent; Parameters: "{tmp}";
;Filename: "{tmp}\install_xna.cmd"; Description: "{cm:LaunchProgram,Unpack Microsoft XNA 4 Redistributable Package Installer}"; Flags: postinstall skipifsilent; Parameters: "{tmp}";
;Filename: "{app}\AutoPatcher.exe"; WorkingDir: "{app}"; Description: "{cm:LaunchProgram,Sector 13}"; Flags: nowait postinstall skipifsilent runascurrentuser;
