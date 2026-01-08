# ===== Change Directory =====
$RepoPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Write-Host "Using repo path: $RepoPath" -ForegroundColor Cyan
Set-Location $RepoPath

# ===== Discard Changes (selected files only) =====
Write-Host "Discarding local changes for selected files..." -ForegroundColor Yellow

# tracked な変更をインデックス＆作業ツリー両方から完全に破棄
git restore --staged --worktree -- "Assets/Art/Font/"
git restore --staged --worktree -- "Assets/StreamingAssets/player_sav.json"
git restore --staged --worktree -- "Assets/TextMesh Pro/Resources/Fonts & Materials/LiberationSans SDF - Fallback.asset"
git restore --staged --worktree -- "Assets/Resources/DOTweenSettings.asset"

# ===== Run Program =====
Write-Host "Running program..." -ForegroundColor Green

$Program = "C:\Program Files\Git\bin\git.exe"  # ← replace with what you want to run
# & $Program  # Uncomment if you actually want to run something

Write-Host "Script finished." -ForegroundColor Cyan
Pause