for /f "delims=\" %%a in ('dir /b /a-d /o-d "./ProtoFiles/"') do %~dp0Tools\protoc.exe -I=%~dp0ProtoFiles --plugin=protoc-gen-lua=%~dp0Tools\protoc-gen-lua.bat --lua_out=%~dp0Protol %~dp0ProtoFiles\%%a