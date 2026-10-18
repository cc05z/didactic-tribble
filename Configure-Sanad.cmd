@echo off
setlocal
cd /d "%~dp0"
if not exist ".env" copy ".env.example" ".env" >nul
if not exist ".env" (
  echo Could not create .env. Check project folder permissions.
  pause
  exit /b 1
)
echo Opening local Midad service settings in Notepad.
echo Set OPENAI_API_KEY for Sanad.
echo Set RESEND_API_KEY and EMAIL_FROM for email sign-in.
echo Save and close Notepad. Keep all keys private; never paste them into chat or frontend files.
notepad ".env"
echo.
echo Stop the Midad server if running, then start Start-Midad.cmd again.
echo Sanad requires OpenAI API access. Sign-in also requires a Resend API key and verified sender.
pause
