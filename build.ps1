# Build.ps1 - Script to build PortableCustomizer.exe

Write-Host "🔧 Running build script..."

# Check if main script exists
if (!(Test-Path "AI/PortableCustomizer/main.ps1")) {
    Write-Host "❌ main.ps1 غير موجود!"
    exit 1
}

# Convert PS1 → EXE
Write-Host "📦 تحويل السكربت إلى EXE..."
Invoke-ps2exe -inputFile "AI/PortableCustomizer/main.ps1" -outputFile "PortableCustomizer.exe" -noConsole -icon "app.ico"

Write-Host "✅ تم إنشاء PortableCustomizer.exe بنجاح!"
