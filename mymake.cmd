@set pd=C:\Users\bvt\AppData\Roaming\QGIS\QGIS3\profiles\default\python\plugins

@echo on
call "C:\Program Files\QGIS 3.4\bin\o4w_env.bat"
call "C:\Program Files\QGIS 3.4\bin\qt5_env.bat"
call "C:\Program Files\QGIS 3.4\bin\py3_env.bat"
@echo on

call pyrcc5 -o %0\..\impact_analysis\resources.py %0\..\impact_analysis\resources.qrc
call pyrcc5 -o %0\..\impact_analysis_administration\resources.py %0\..\impact_analysis_administration\resources.qrc

md %pd%\impact_analysis 2>nul
md %pd%\impact_analysis_administration 2>nul

xcopy /Y /E %0\..\impact_analysis %pd%\impact_analysis
xcopy /Y /E %0\..\impact_analysis_administration %pd%\impact_analysis_administration

pause