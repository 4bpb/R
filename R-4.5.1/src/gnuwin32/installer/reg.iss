[Icons]
Name: "{group}\R @RVERA@"; Filename: "{app}\bin\Rgui.exe"; WorkingDir: "{app}"; Parameters: "--cd-to-userdocs"
Name: "{commondesktop}\R @RVERA@"; Filename: "{app}\bin\Rgui.exe"; MinVersion: 0,6.1; Tasks: desktopicon; WorkingDir: "{app}"; Parameters: "--cd-to-userdocs"; Check: RIsAdmin
Name: "{userdesktop}\R @RVERA@"; Filename: "{app}\bin\Rgui.exe"; MinVersion: 0,6.1; Tasks: desktopicon; WorkingDir: "{app}"; Parameters: "--cd-to-userdocs"; Check: NonAdmin
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\R @RVERA@"; Filename: "{app}\bin\Rgui.exe"; Tasks: quicklaunchicon; WorkingDir: "{app}"; Parameters: "--cd-to-userdocs"

[Registry] 
Root: HKLM; Subkey: "Software\@Producer@"; Flags: uninsdeletekeyifempty; Tasks: recordversion; Check: RIsAdmin
Root: HKLM; Subkey: "Software\@Producer@\R"; Flags: uninsdeletekeyifempty; Tasks: recordversion; Check: RIsAdmin
Root: HKLM; Subkey: "Software\@Producer@\R"; Flags: uninsdeletevalue; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Tasks: recordversion; Check: RIsAdmin
Root: HKLM; Subkey: "Software\@Producer@\R"; Flags: uninsdeletevalue; ValueType: string; ValueName: "Current Version"; ValueData: "@RVER@"; Tasks: recordversion; Check: RIsAdmin
Root: HKLM; Subkey: "Software\@Producer@\R\@RVER@"; Flags: uninsdeletekey; Tasks: recordversion; Check: RIsAdmin
Root: HKLM; Subkey: "Software\@Producer@\R\@RVER@"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Tasks: recordversion; Check: RIsAdmin

Root: HKCU; Subkey: "Software\@Producer@"; Flags: uninsdeletekeyifempty; Tasks: recordversion; Check: NonAdmin
Root: HKCU; Subkey: "Software\@Producer@\R"; Flags: uninsdeletekeyifempty; Tasks: recordversion; Check: NonAdmin
Root: HKCU; Subkey: "Software\@Producer@\R"; Flags: uninsdeletevalue; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Tasks: recordversion; Check: NonAdmin
Root: HKCU; Subkey: "Software\@Producer@\R"; Flags: uninsdeletevalue; ValueType: string; ValueName: "Current Version"; ValueData: "@RVER@"; Tasks: recordversion; Check: NonAdmin
Root: HKCU; Subkey: "Software\@Producer@\R\@RVER@"; Flags: uninsdeletekey; Tasks: recordversion; Check: NonAdmin
Root: HKCU; Subkey: "Software\@Producer@\R\@RVER@"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Tasks: recordversion; Check: NonAdmin

Root: HKCR; Subkey: ".RData"; ValueType: string; ValueName: ""; ValueData: "RWorkspace"; Flags: uninsdeletevalue; Tasks: associate; Check: RIsAdmin
Root: HKCR; Subkey: "RWorkspace"; ValueType: string; ValueName: ""; ValueData: "R Workspace"; Flags: uninsdeletekey; Tasks: associate; Check: RIsAdmin
Root: HKCR; Subkey: "RWorkspace\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\RGui.exe,0"; Tasks: associate; Check: RIsAdmin 
Root: HKCR; Subkey: "RWorkspace\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\RGui.exe"" --workspace=""%1"""; Tasks: associate; Check: RIsAdmin
