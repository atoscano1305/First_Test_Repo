C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319\msbuild.exe SLNNAME.sln /t:Clean;Build /p:Configuration=Release /p:BuildOutput=D:\bamboo\build-dir\TEST-TRUNK-JOB1\Output /p:BuildNumber=%1
if errorlevel 1 goto ERROR
