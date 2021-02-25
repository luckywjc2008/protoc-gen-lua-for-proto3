# protoc-gen-lua-for-proto3
工具使用说明：
本项目只支持proto3协议的输出，定义协议时文件头务必带上syntax = "proto3";
本项目支持lua int64的数据类型；
1、进入ProtobufTool文件夹
ProtoCSharp 为 CSharp输出目录
Protol 为 lua输出目录
ProtoFiles 为 Proto编辑目录
点击autoAll.bat批处理，自动在输出目录生成对应语言的proto输出文件。

2、CSharp篇
拷贝GoogleCSharpDeserialize到unity的Asset文件夹目录下，同时拷贝ProtoCSharp输出目录下的proto输出文件到asset文件夹下。
	将协议转成字节数组
	C2M_Reload c2M_Reload = new C2M_Reload() {Account = account, Password = password};
	byte[] result = c2M_Reload.ToByteArray();
	将字节数组转成协议
                C2M_Reload c2M_Reload2 = C2M_Reload.Parser.ParseFrom( result );

3、lua篇
3.1拷贝ProtobufLuaDeserialize内文件到unity的Asset/LuaFramework/ToLua/Lua/protobuf文件夹目录下，同时拷贝Protol输出目录下的proto输出文件到lua工程文件夹下。
3.2在lua启动文件头部require proto输出文件比如：
	Hall_pb = require("Protol.Hall_pb");
	
3.3数据传输
	将协议转成字符串
	local text = Hall_pb.Test();
    	text.t1 = 10;
    	text.t2 = 6.6;
    	text.t3 = "xxx";
    	text.t4 = true;
    	text.t5 = "xxx";

    	local textEncodeStr = text:SerializeToString();

	将字符串转成协议
	local deTest = Hall_pb.Test();
    	deTest:ParseFromString(textEncodeStr);
    	print("deTest t1 = "..tostring(deTest.t1));
    	print("deTest t2 = "..tostring(deTest.t2));
    	print("deTest t3 = "..tostring(deTest.t3));
    	print("deTest t4 = "..tostring(deTest.t4));
    	print("deTest t5 = "..tostring(deTest.t5));

如果对你有帮助请点个star
