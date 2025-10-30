@echo off
setlocal enabledelayedexpansion

REM Check if claude command exists
where claude >nul 2>nul
if %errorlevel% NEQ 0 (
    echo [Error]: Could not find claude CLI - is it installed? 1>&2
    goto :eof
)

REM Pass all arguments to claude with --dangerously-skip-permissions flag
if "%~1"=="" (
    claude --dangerously-skip-permissions
) else (
    claude --dangerously-skip-permissions %*
)

endlocal
