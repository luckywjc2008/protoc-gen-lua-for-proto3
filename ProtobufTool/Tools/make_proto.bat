for %%i in (%~dp0ProtoFiles\*.proto) do (  
	%~dp0Tools\protoc.exe --proto_path=%~dp0ProtoFiles --csharp_out=..\PhotonServerStudy\Common\ProtoBuf\ %%i
)