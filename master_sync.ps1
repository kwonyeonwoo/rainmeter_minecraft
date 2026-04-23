function Sync-Repo($path) {
    if (Test-Path $path) {
        Write-Host "`n--- Syncing: $path ---" -ForegroundColor Cyan
        Push-Location $path
        # 1. 원격 변경사항 가져오기
        git pull origin main --rebase
        # 2. 로컬 변경사항 저장 및 푸시
        if ((git status --porcelain)) {
            git add .
            git commit -m "Auto-sync from $(hostname) at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
            git push origin main
            Write-Host "Changes pushed successfully!" -ForegroundColor Green
        } else {
            Write-Host "No local changes to sync." -ForegroundColor Gray
        }
        Pop-Location
    } else {
        Write-Host "Warning: $path not found. Skipping." -ForegroundColor Yellow
    }
}

Sync-Repo "Anti_AI_Filter"
Sync-Repo "image-organizer-source"
Sync-Repo "scheduler-v2"

Write-Host "`n[DONE] All projects are fully synced!" -ForegroundColor Green
