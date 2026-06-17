# PRD — מטלה 04: מסמך LaTeX על ארכיטקטורת סוכני AI

## הקשר אקדמי

| שדה | ערך |
|-----|-----|
| מטלה | 04 — יצירת PDF מקצועי ב-LaTeX / LuaLaTeX / CLS |
| קורס | AI Agents (הרצאה 07) |
| נושא | ארכיטקטורת סוכני AI: RAG, Skills, MCP, API, LaTeX, CLS |
| מקור תוכן | `sources/transcript-lecture07.txt` |

## מטרת הפרויקט

להפיק מסמך PDF אקדמי מלא (לפחות 30 עמודים, עברית עם מונחי אנגלית) המסכם את ארכיטקטורת סוכני AI לפי חומר ההרצאה, כולל פרק יישומי קצר ב-CTI/OSINT/Ransomware, תוך שימוש בקובץ `agentic-ai-template.cls` מותאם ותהליך קומפילציה רפטבילי.

## קהל יעד

- מרצה / בודק מטלות בקורס AI Agents.
- סטודנטים המעוניינים להבין ארכיטקטורת סוכנים וייצור מסמכים מקצועיים.

## מבנה המסמך

1. שער, תקציר (עברית), Abstract (אנגלית)
2. תוכן עניינים, רשימת איורים, רשימת טבלאות
3. פרקים 1–15 (מבוא עד סיכום)
4. ביבליוגרפיה IEEE

## החלטות עיצוב

- **מנוע:** LuaLaTeX בלבד.
- **שפות:** polyglossia — עברית RTL ראשית, `\eng{}` לאנגלית.
- **עיצוב:** כל הסגנון ב-`agentic-ai-template.cls` (לא ב-main.tex).
- **תיבות:** notebox, warningbox, insightbox.
- **צבעים:** כחול-נייבי מקצועי, עדין.
- **גרפים:** TikZ/PGFPlots ב-`figures/`.

## קבצים בפרויקט

| קובץ | תפקיד |
|------|--------|
| `main.tex` | מסמך ראשי |
| `agentic-ai-template.cls` | מחלקת מסמך מותאמת |
| `references.bib` | ביבליוגרפיה BibTeX |
| `chapters/*.tex` | פרקי תוכן |
| `figures/*.tex` | איורי TikZ |
| `compile.ps1` | סקריפט קומפילציה |
| `PRD.md`, `PLAN.md`, `TODO.md`, `README.md` | תיעוד הגשה |

## דרישות קומפילציה

```powershell
.\compile.ps1
```

או ידנית: `lualatex main.tex` → `bibtex main` → `lualatex` ×2.

**דרישות:** MiKTeX עם LuaLaTeX ב-PATH; פונט עברי (Noto Sans Hebrew / David CLM / Arial).

## קריטריוני קבלה

- [ ] PDF ≥ 30 עמודים
- [ ] ≥ 5 טבלאות, ≥ 5 איורים
- [ ] ביבליוגרפיה IEEE עם ציטוטים [1], [2]...
- [ ] קומפילציה ללא שגיאות
- [ ] CLS נפרד עם `\eng{}`, תיבות, header/footer
- [ ] PRD, PLAN, TODO, README בשורש הפרויקט
