param(
    [Parameter(Position=0)]
    [ValidateSet("pull", "push", "status")]
    [string]$Action = "status",
    
    [Parameter(Position=1)]
    [string]$Message = "Update skills"
)

$SkillsDir = "$HOME\.gemini\config\skills"
Set-Location $SkillsDir

switch ($Action) {
    "status" {
        Write-Host "=== Antigravity Skills Git Status ===" -ForegroundColor Cyan
        git status
    }
    "pull" {
        Write-Host "=== Pulling latest skills from GitHub ===" -ForegroundColor Cyan
        git pull origin main
        Write-Host "Done!" -ForegroundColor Green
    }
    "push" {
        Write-Host "=== Staging and committing changes ===" -ForegroundColor Cyan
        git add .
        $status = git status --porcelain
        if (-not $status) {
            Write-Host "No changes to commit." -ForegroundColor Yellow
            return
        }
        git commit -m $Message
        Write-Host "=== Pushing changes to GitHub ===" -ForegroundColor Cyan
        git push origin main
        Write-Host "Done! Skills synchronized." -ForegroundColor Green
    }
}