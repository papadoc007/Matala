# PLAN — מטלה 04

## שלבי ביצוע

### שלב 0: סביבה
- [x] התקנת/אימות MiKTeX + LuaLaTeX
- [x] `compile.ps1` + `.gitignore`

### שלב 1: תשתית
- [x] `agentic-ai-template.cls`
- [x] `references.bib`
- [x] `main.tex` + `chapters/` + `figures/`

### שלב 2: תוכן (מתוך תמלול הרצאה 07)
| פרק | קובץ | מקור בתמלול |
|-----|------|-------------|
| 1 מבוא | ch01-intro.tex | פתיחה, מטרות |
| 2 שכבות | ch02-layers.tex | Software/Skill/Agent |
| 3 LLM | ch03-llm-memory.tex | Context, Memory |
| 4 RAG | ch04-rag.tex | וקטורים, שליפה |
| 5 Tools | ch05-tools-skills.tex | Tools, Skills |
| 6 API | ch06-api-sdk.tex | SDK/GUI/CLI/API |
| 7 MCP | ch07-mcp.tex | MCP מול Skill |
| 8 GUI | ch08-gui-limits.tex | סוכן דפדפן |
| 9 LaTeX | ch09-latex.tex | LuaLaTeX |
| 10 CLS | ch10-cls-repro.tex | רפטביליות |
| 11 QA | ch11-qa.tex | QA Super |
| 12 Orchestration | ch12-orchestration.tex | סוכן יחיד/מרובה |
| 13 CTI | ch13-cti.tex | יישום סייבר |
| 14 סיכום ניהולי | ch14-integrative.tex | סינתזה |
| 15 מסקנות | ch15-conclusions.tex | סיום |

### שלב 3: איורים וטבלאות
- [x] 6 איורי TikZ ב-`figures/`
- [x] 7+ טבלאות בפרקים

### שלב 4: קומפילציה ו-QA
- [ ] הרצת `compile.ps1`
- [ ] אימות עמודים ≥ 30
- [ ] תיקון בעיות RTL ב-CLS במידת הצורך

### שלב 5: הגשה
- [x] PRD, PLAN, TODO
- [ ] README מפורט עם דוח QA

## מיפוי נושאי שיעור → פרקים

```
שלוש שכבות     → פרק 2
LLM/Memory/RAG  → פרקים 3–4
Skills/Tools    → פרק 5
SDK/GUI/API     → פרק 6
MCP             → פרק 7
GUI limits      → פרק 8
LaTeX/LuaLaTeX  → פרק 9
CLS/Repro       → פרק 10
QA Skills       → פרק 11
Orchestration   → פרק 12
CTI (יישום)     → פרק 13
```
