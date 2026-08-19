# Antigravity Skills Repository 🚀

노트북과 데스크탑 간에 Google Antigravity 커스텀 스킬(`~/.gemini/config/skills/`)을 Git으로 동기화하기 위한 Private 저장소입니다.

## 📦 포함된 스킬 목록

- **company-deep-analyzer**: 기업 360도 심층 분석 (재무, 뉴스 타임라인, SWOT, 비즈니스 전략, 면접 준비 가이드)
- **job-application-strategist**: 채용공고 & 자소서 문항 분석, 지원자 경험 매핑, 이력서/면접 전략 수립
- **job-posting-analyzer**: 직무 기술서(JD) 심층 분석, 밸류체인 매핑, 실무 페인포인트 도출
- **job-url**: 위 3개 스킬을 결합하여 공고 URL 또는 텍스트 기반 원스톱 종합 분석 리포트 생성

---

## 🖥️ 집 데스크탑(PC) 최초 설정 방법 (최초 1회)

집 데스크탑에서 PowerShell을 열고 아래 명령어를 순서대로 실행합니다:

``powershell
# 1. Antigravity config 디렉토리 생성 및 이동
New-Item -ItemType Directory -Force -Path "$HOME\.gemini\config"
Set-Location "$HOME\.gemini\config"

# 2. 기존 skills 폴더가 있다면 백업 (선택사항)
if (Test-Path "$HOME\.gemini\config\skills") {
    Rename-Item -Path "$HOME\.gemini\config\skills" -NewName "skills_backup_$(Get-Date -Format 'yyyyMMdd_HHmmss')"
}

# 3. skills 폴더로 private repo 복제 (clone)
git clone https://github.com/Seonghwanindaeyo/antigravity-skills.git skills
``

> **참고**: 데스크탑에서도 GitHub 로그인(Git Credential Manager 또는 GitHub 계정 인증)이 필요합니다.

---

## 🔄 일상 동기화 방법 (노트북 ↔ 데스크탑)

스킬을 새로 추가하거나 수정한 후 양쪽 기기에서 동기화하는 방법입니다.

### 방법 1. 원클릭 동기화 스크립트 사용 (`sync.ps1`)

PowerShell에서:

``powershell
# ~/.gemini/config/skills 디렉토리로 이동
cd $HOME\.gemini\config\skills

# [가져오기] 다른 PC에서 올린 최신 스킬 당겨오기
.\sync.ps1 pull

# [올리기] 현재 PC에서 수정한 스킬 GitHub에 푸시하기
.\sync.ps1 push "스킬 추가 또는 수정 내용"

# [상태 확인]
.\sync.ps1 status
``

### 방법 2. 일반 Git 명령어로 동기화

``powershell
cd $HOME\.gemini\config\skills

# 최신 변경사항 반영 (Pull)
git pull origin main

# 수정사항 커밋 & 푸시 (Push)
git add .
git commit -m "스킬 수정 내용"
git push origin main
``