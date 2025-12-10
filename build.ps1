
Write-Output "🔧 Starting build..."

# تأكد من وجود ملف main.ps1 داخل المسار الصحيح
$mainScript = "AI/PortableCustomizer/WindowsTools/main.ps1"

if (-Not (Test-Path $mainScript)) {
    Write-Output "❌ ERROR: main.ps1 غير موجود في المسار:"
    Write-Output $mainScript
    exit 1
}

Write-Output "📦 Packing EXE..."

# إنشاء ملف exe داخل مجلد build
New-Item -ItemType Directory -Force -Path build | Out-Null
Copy-Item $mainScript build/main.ps1 -Force

Write-Output "✅ Build completed successfully!"
