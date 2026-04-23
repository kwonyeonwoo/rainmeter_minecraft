# Project Root: MyAgentProject

## 🚨 CRITICAL MANDATE: AUTO-SYNC ON STARTUP
**이 프로젝트의 세션이 시작되면, 에이전트는 사용자의 다른 요청을 처리하기 전에 반드시 다음을 수행해야 합니다:**

1.  **마스터 동기화 실행:** 루트 폴더의 `master_sync.ps1`을 실행하여 모든 하위 프로젝트(Anti_AI_Filter, image-organizer-source, scheduler-v2)를 `git pull --rebase` 하고 최신 상태로 동기화합니다.
    *   명령어: `powershell.exe -ExecutionPolicy Bypass -File ./master_sync.ps1`
2.  **진행 상황 보고:** 동기화가 완료되면 각 프로젝트의 `GEMINI.md`를 참고하여 마지막 작업 내용과 다음 단계를 사용자에게 요약 보고합니다.

---

## 📂 Project Structure
- **Anti_AI_Filter:** AI 보호 필터 엔진 (v9.0 Ultimate)
- **image-organizer-source:** 이미지 관리 웹 서비스 (Next.js + Firebase)
- **scheduler-v2:** 업무 스케줄러 (Next.js + Firebase)

## 💡 Machine-to-Machine Sync Instructions
1. 새 기기에서 최초 실행 시: `git pull origin main`을 수동으로 한 번 수행하십시오.
2. 이후부터는 Gemini CLI를 실행하기만 하면 이 `GEMINI.md` 지침에 따라 자동으로 모든 프로젝트가 동기화됩니다.
3. `.env` 파일들은 보안상 Git에 포함되지 않으므로 기기 간 수동 복사가 필요합니다.
