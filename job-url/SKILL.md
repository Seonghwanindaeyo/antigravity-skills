---
name: job-url
description: One-stop master analyzer. Takes a single job posting URL (or text) and automatically executes 3-in-1 comprehensive analysis combining company-deep-analyzer, job-posting-analyzer, and job-application-strategist into a single master report.
---

# 통합 채용 마스터 분석 가이드 (job-url)

이 스킬은 **단 1개의 채용 공고 URL(또는 공고 텍스트)**을 입력받아, 기존 3가지 전문 스킬(`company-deep-analyzer`, `job-posting-analyzer`, `job-application-strategist`)을 한 번에 연동 실행하여 기업 분석, 직무 분석, 실전 합격 전략까지 총망라된 **올인원(All-in-One) 마스터 보고서**를 생성할 때 사용합니다.

---

## 1. 연동 수행 흐름 (Workflow)

```
[입력: 1개의 채용 공고 URL / 텍스트]
       │
       ├─► 1단계: URL 콘텐츠 수집 (read_url_content) ➔ 기업명, 직무명, 공고 내용 파악
       ├─► 2단계: 기업/산업 실시간 웹 리서치 (search_web) ➔ 재무, 최근 뉴스 5선, 신사업 탐색
       │
       └─► 3단계: 3-in-1 통합 마스터 리포트 출력
             ├─ [Part 1] 기업 360도 심화 분석 (company-deep-analyzer)
             ├─ [Part 2] 직무 핵심 역량 & 비즈니스 파악 (job-posting-analyzer)
             └─ [Part 3] 실전 서류·면접 합격 전략 (job-application-strategist)
```

---

## 2. 필수 수행 지침

1. **자동 URL 읽기 & 실시간 검색**:
   - URL 입력 시 `read_url_content`를 호출하여 공고 전문을 파악합니다.
   - 기업의 최근 재무, 뉴스 5선, SWOT 수집을 위해 `search_web`을 연동합니다.
2. **3개 분야 통합 출력**:
   - **기업 관점**: 경영철학, SWOT, 3개년 재무, 최근 이슈 5선, 1분 요약
   - **직무 관점**: 비즈니스 언어 전환 표, 밸류체인 위치, 실무 페인포인트 Top 3
   - **지원자 관점**: Hidden Needs, 경험 1:1 매핑 표, 면접 예측 질문, 역질문
3. **분량 및 톤앤매너**:
   - A4 기준 약 5~8페이지 분량 (공백 포함 약 6,000자 ~ 10,000자 내외)의 압도적인 고품질 종합 리포트를 작성합니다.

---

## 3. 마스터 리포트 출력 포맷

```markdown
# [기업명 / 직무명] 올인원 통합 채용 마스터 보고서

---

# PART 1. 기업 360도 심화 분석 (company-deep-analyzer)

## 1. 기업 핵심 파악
- **기업 소개 & 비전**: (설립일, 대표자, 비전, 핵심 사업 영역)
- **경영철학 및 인재상**: (미션/비전 및 지원자 해석 가이드)
- **경쟁사 분석 (SWOT)**: [강점 / 약점 / 기회 / 위협]

## 2. 기업 심화 분석 & 재무
- **사업 내용 & 매출 비중**: 
- **재무 정보 (최근 3개년)**: (매출액, 영업이익 추이, R&D 성향)
- **중장기 성장 전략**: (신사업 방향 및 기여 방안)

## 3. 기업 최신 이슈 (뉴스 5선 & 타임라인)
- **최근 1년 핵심 뉴스 5선 & 취업 시사점**
- **최근 3개년 성과 타임라인**

---

# PART 2. 직무 핵심 역량 & 비즈니스 파악 (job-posting-analyzer)

## 1. 직무 핵심 역량 분석 (비즈니스 언어 전환)

| 구분 | 공고 내 표기 | 실무 비즈니스 역량 정의 | 요구 수준 및 배경 |
| :--- | :--- | :--- | :--- |
| 필수 요건 | ... | ... | ... |
| 우대 사항 | ... | ... | ... |

## 2. 전체 비즈니스 프로세스 내 역할
- **밸류체인(Value Chain) 내 위치**: 
- **이해관계자(Stakeholders) 협업 관계**: 
- **End-to-End 업무 수행 프로세스**: 

## 3. 실무 대표 이슈 및 문제 해결 Scenario (Top 3)
- **Issue 1**: (원인 및 해결 방안)
- **Issue 2**: (원인 및 해결 방안)
- **Issue 3**: (원인 및 해결 방안)

---

# PART 3. 실전 서류·면접 합격 전략 (job-application-strategist)

## 1. Hidden Needs 역추적 & 매핑 요약 (Conclusion)
- 공고 우대사항 뒤에 숨겨진 현업의 진짜 요구사항 및 매핑 전략 요약

## 2. 실전 합격 대응 방안 (Recommendations)
- **직무 핵심 키워드 Top 3**: (이력서 상단배치용)
- **경험 데이터 1:1 매핑 매트릭스**: 
  | JD 세부 요구사항 (Hidden Needs) | 지원자 추천 프로젝트 & 경험 매핑 전략 |
  | :--- | :--- |
  | ... | ... |
- **서류 평가 & 면접 예측 질문 (Top 3)**: 
- **고도화된 역질문 (Reverse Question 2~3개)**: 

---

# PART 4. 최종 퀵 서머리 & 복습 퀴즈

- **초스피드 1분 요약**: (면접 직전 체크용)
- **간단 복습 OX 퀴즈 10문항 & 정답/해설**
- **STAR 기법 면접 답변 구조화 가이드**
```
