:A
rem @set CSC="C:\Windows\Microsoft.NET\Framework\v3.5\csc"
@set CSC=%windir%\Microsoft.NET\Framework\v4.0.30319\csc
@set MANAGED=C:\Games\Kiss\COM3D2\COM3D2x64_Data\Managed
@set OPTS=/noconfig /optimize+ /nologo /nostdlib+ /define:COM3D2 /define:UNITY_5_6_OR_NEWER /define:UNITY_5_5_OR_NEWER
@set OPTS=%OPTS% /t:library /lib:%MANAGED%,..\,..\..\ /r:UnityEngine.dll /r:UnityEngine.UI.dll /r:JsonFx.Json.dll /r:Assembly-CSharp.dll /r:Assembly-CSharp-firstpass.dll
@set OPTS=%OPTS% /r:UnityInjector.dll /r:ExIni.dll
@set OPTS=%OPTS% /r:%MANAGED%\mscorlib.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Core.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Data.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Xml.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Xml.Linq.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Drawing.dll
@set OPTS=%OPTS% /r:%MANAGED%\System.Windows.Forms.dll
@set OPTS=%OPTS% /resource:Resource\checkoff.png
@set OPTS=%OPTS% /resource:Resource\checkon.png
@set OPTS=%OPTS% /resource:Resource\circle.png
@set OPTS=%OPTS% /resource:Resource\copy.png
@set OPTS=%OPTS% /resource:Resource\cross.png
@set OPTS=%OPTS% /resource:Resource\file.png
@set OPTS=%OPTS% /resource:Resource\folder.png
@set OPTS=%OPTS% /resource:Resource\minus.png
@set OPTS=%OPTS% /resource:Resource\paste.png
@set OPTS=%OPTS% /resource:Resource\picture.png
@set OPTS=%OPTS% /resource:Resource\plus.png
@set OPTS=%OPTS% /resource:Resource\preset_base.png
@set OPTS=%OPTS% /resource:Resource\preset_empty.png
@set OPTS=%OPTS% /resource:Resource\preset_focus.png

del COM3D2.AlwaysColorChangeEx.Plugin.dll
%CSC% %OPTS% /out:COM3D2.AlwaysColorChangeEx.Plugin.dll .\*.cs /recurse:.\Data\*.cs /recurse:.\Util\*.cs /recurse:.\UI\*.cs /recurse:.\Render\*.cs /recurse:.\TexAnim\*.cs

@pause
@goto A