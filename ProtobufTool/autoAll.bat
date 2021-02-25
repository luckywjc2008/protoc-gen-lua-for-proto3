::删除老文件
call deleteOldFile.bat
::生成luaProto
call buildLua.bat
::生成csProto
call make_proto_CSharp.bat
pause