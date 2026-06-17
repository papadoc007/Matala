%% agentic-ai-template.cls
%% Custom document class for AI Agents course — Assignment 04
%% Engine: LuaLaTeX only
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{agentic-ai-template}[2026/06/17 AI Agents academic template]

%% Base class
\LoadClass[12pt,a4paper]{article}

%% LuaLaTeX + fonts
\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setmainlanguage{hebrew}
\setotherlanguage{english}

\defaultfontfeatures{Ligatures=TeX}

% Hebrew fonts — Arial is available on Windows; fallback chain for portability
\newfontfamily\hebrewfont{Arial}[Script=Hebrew,Language=Hebrew]
\newfontfamily\hebrewfontsf{Arial}[Script=Hebrew,Language=Hebrew]
\newfontfamily\hebrewfonttt{Arial}[Script=Hebrew,Language=Hebrew]
\newfontfamily\englishfont{Latin Modern Roman}

%% Layout
\RequirePackage[
  top=2.5cm,
  bottom=2.8cm,
  left=2.5cm,
  right=2.5cm,
  headheight=16pt
]{geometry}

\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
\RequirePackage[breakable]{tcolorbox}
\RequirePackage{csquotes}

%% Colors
\definecolor{primary}{HTML}{1E3A5F}
\definecolor{secondary}{HTML}{4A5568}
\definecolor{accentblue}{HTML}{2B6CB0}
\definecolor{accentamber}{HTML}{D69E2E}
\definecolor{accentgreen}{HTML}{2F855A}
\definecolor{lightgray}{HTML}{F7FAFC}
\definecolor{boxborder}{HTML}{CBD5E0}

%% Hyperref
\hypersetup{
  colorlinks=true,
  linkcolor=primary,
  citecolor=accentblue,
  urlcolor=accentblue,
  pdfauthor={Student},
  pdftitle={Agentic AI Architecture}
}

%% Headers / footers
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\small\textcolor{secondary}{\leftmark}}
\fancyhead[L]{\small\textcolor{secondary}{\thepage}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhf{}
  \fancyfoot[C]{\small\textcolor{secondary}{\thepage}}
  \renewcommand{\headrulewidth}{0pt}
}

%% Chapter / section styling
\titleformat{\section}
  {\Large\bfseries\color{primary}}
  {\thesection}{1em}{}
\titleformat{\subsection}
  {\large\bfseries\color{primary}}
  {\thesubsection}{1em}{}
\titleformat{\subsubsection}
  {\normalsize\bfseries\color{secondary}}
  {\thesubsubsection}{1em}{}

%% Custom commands
\newcommand{\eng}[1]{\begin{english}#1\end{english}}
\newcommand{\hebrewsection}[1]{\section{#1}}

%% Info boxes
\tcbset{
  agentbox/.style={
    breakable,
    colback=lightgray,
    colframe=boxborder,
    boxrule=0.8pt,
    arc=3pt,
    left=8pt,right=8pt,top=6pt,bottom=6pt,
    fonttitle=\bfseries\small,
    coltitle=white
  }
}

\newtcolorbox{notebox}[1][הערה]{
  agentbox,
  colframe=accentblue,
  colback=accentblue!5,
  title={#1}
}

\newtcolorbox{warningbox}[1][אזהרה]{
  agentbox,
  colframe=accentamber,
  colback=accentamber!8,
  title={#1}
}

\newtcolorbox{insightbox}[1][תובנה]{
  agentbox,
  colframe=accentgreen,
  colback=accentgreen!8,
  title={#1}
}

%% Table styling
\captionsetup[table]{
  labelfont=bf,
  textfont=it,
  skip=8pt
}
\captionsetup[figure]{
  labelfont=bf,
  textfont=it,
  skip=8pt
}

\AtBeginEnvironment{table}{%
  \small
  \setlength{\tabcolsep}{6pt}
}

\newcommand{\agenttable}[1]{%
  \begin{table}[H]
  \centering
  \renewcommand{\arraystretch}{1.25}
  #1
  \end{table}
}

%% Listings (code)
\lstdefinestyle{agentcode}{
  basicstyle=\ttfamily\small,
  breaklines=true,
  frame=single,
  rulecolor=\color{boxborder},
  backgroundcolor=\color{lightgray},
  numbers=left,
  numberstyle=\tiny\color{secondary},
  keywordstyle=\color{primary}\bfseries,
  commentstyle=\color{secondary}\itshape,
  showstringspaces=false,
  tabsize=2,
  xleftmargin=1.5em,
  framexleftmargin=1.5em
}
\lstset{style=agentcode}

%% Title page
\newcommand{\assignmenttitle}{ארכיטקטורת סוכני AI}
\newcommand{\assignmentsubtitle}{RAG, Skills, MCP, API, ו-PDF מקצועי ב-LaTeX}
\newcommand{\assignmentauthor}{בר אילן}
\newcommand{\assignmentcourse}{קורס AI Agents --- מטלה 04}
\newcommand{\assignmentdate}{\today}

\newcommand{\maketitlepage}{%
  \begin{titlepage}
    \centering
    \vspace*{1.5cm}
    {\Huge\bfseries\color{primary}\assignmenttitle\par}
    \vspace{0.8cm}
    {\Large\color{secondary}\assignmentsubtitle\par}
    \vspace{2cm}
    \begin{tikzpicture}
      \draw[primary, line width=2pt] (0,0) -- (10,0);
      \draw[accentblue, line width=1pt] (0,-0.3) -- (7,-0.3);
    \end{tikzpicture}
    \vspace{2cm}
    {\large\assignmentauthor\par}
    \vspace{0.5cm}
    {\large\assignmentcourse\par}
    \vspace{0.5cm}
    {\large\assignmentdate\par}
    \vfill
    {\small\textcolor{secondary}{מסמך אקדמי --- LuaLaTeX + \texttt{agentic-ai-template.cls}}\par}
  \end{titlepage}
}

%% Abstract environments
\newenvironment{hebrewabstract}{%
  \section*{תקציר}
  \addcontentsline{toc}{section}{תקציר}
}{}

\newenvironment{englishabstract}{%
  \begin{english}
  \section*{Abstract}
  \addcontentsline{toc}{section}{Abstract}
}{%
  \end{english}
}

%% Bibliography title
\renewcommand{\refname}{ביבליוגרפיה}
\renewcommand{\bibname}{ביבליוגרפיה}

%% Chapter command for main matter
\renewcommand{\sectionmark}[1]{\markright{#1}}

\endinput
