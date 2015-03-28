@echo off
ECHO ----------------------------------------
echo Creating excludes

Echo .svn>exclude.txt
Echo .git>>exclude.txt
Echo Thumbs.db>>exclude.txt
Echo Desktop.ini>>exclude.txt
Echo dsstdfx.bin>>exclude.txt
Echo build.bat>>exclude.txt
Echo \skin.confluence\media\>>exclude.txt
Echo exclude.txt>>exclude.txt

ECHO ----------------------------------------
ECHO Creating XBT File...

START /B /WAIT TexturePacker -dupecheck -input ..\skin.titan.helix\media\ -output ..\skin.titan.helix\media\Textures.xbt
START /B /WAIT TexturePacker -dupecheck -input ..\skin.titan.helix\themes\classic\ -output ..\skin.titan.helix\media\classic.xbt

del exclude.txt

echo Textures.xbt build complete - Scroll Up to check for errors.
pause
