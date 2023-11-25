@echo off
echo Pre-Commit

REM Stash unstaged changes
for /f %%i in ('git diff') do set "hasChanges=true"
if defined hasChanges (
    echo Stashing unstaged changes
    git stash push --keep-index
)

REM Flutter formatter
echo Running Flutter Formatter
dart format .

for /f %%i in ('git diff') do set "hasNewFilesFormatted=true"
if defined hasNewFilesFormatted (
    git add .
    echo Formatted files added to git stage
)
echo Finished running Flutter Formatter

REM Flutter Analyzer
echo Running Flutter Analyzer
flutter analyze
if errorlevel 1 (
    echo Flutter analyzer error
    goto :cleanup
)
echo Finished running Flutter Analyzer

@REM REM Unit tests
@REM echo Running Unit Tests
@REM flutter test
@REM if errorlevel 1 (
@REM     echo Unit tests error
@REM     goto :cleanup
@REM )
@REM echo Finished running Unit Tests

:cleanup
REM Pop stash changes
if defined hasChanges (
    echo === Applying git stash changes ===
    git stash pop
)
