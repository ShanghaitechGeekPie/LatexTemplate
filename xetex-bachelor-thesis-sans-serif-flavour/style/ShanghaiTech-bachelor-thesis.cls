\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{style/ShanghaiTech-bachelor-thesis}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options

\DeclareOption{sansserif}{ \renewcommand{\familydefault}{\sfdefault} }

\DeclareOption{10pt}{\PassOptionsToClass{10pt}{book}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{book}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{book}}

\DeclareOption{openright}{\PassOptionsToClass{openright}{book}}
\DeclareOption{openany}{\PassOptionsToClass{openany}{book}}


\ProcessOptions %\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\LoadClass[a4paper, titlepage]{book}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% required packages

\RequirePackage{amsmath}
\RequirePackage{amsxtra}
\RequirePackage{amssymb}
\RequirePackage{geometry}

\RequirePackage[bookmarks,breaklinks,hidelinks]{hyperref}
\RequirePackage[thmmarks,amsmath,hyperref,thref]{ntheorem}
\RequirePackage{fancyhdr}
\RequirePackage{color}
\RequirePackage{graphicx}


\geometry{paper=a4paper,twoside,inner=31.5mm,outer=31.5mm,top=25.5mm,bottom=25.5mm,head=5mm,headsep=10mm,foot=10mm}

\linespread{1.05}

\numberwithin{equation}{chapter}    % add the chapter number to the equation label

\vfuzz 2pt
\hfuzz 2pt
\parindent=0pt

\theoremnumbering{arabic}
\theoremstyle{plain}
\theorembodyfont{\itshape}
\theoremheaderfont{\normalfont\bfseries}
\theoremseparator{:}
\newtheorem{Theorem}{Theorem}[chapter]
\newtheorem{Lemma}{Lemma}[chapter]
\newtheorem{Corollary}{Corollary}[chapter]
\newtheorem{Definition}{Definition}[chapter]
\newtheorem{Remark}{Remark}[chapter]
\newtheorem{Assumption}{Assumption}[chapter]
\newtheorem{Proposition}{Proposition}[chapter]

\theorembodyfont{\normalfont}


\theoremstyle{nonumberplain}
\theoremsymbol{\ensuremath{\Box}}
\newtheorem{Proof}{Proof}[chapter]

\newcommand{\myparagraph}[1]{
\bigskip
\textbf{#1} \nopagebreak \\[0.2cm]}

\theoremstyle{break}
%\theoremprework{\bigskip\hrule\vspace{-0.3em}}
%\theorempostwork{\hrule\bigskip}
\theoremseparator{}
\theoremsymbol{}
\theorembodyfont{\normalfont}
\newtheorem{Algorithm}{Algorithm}[chapter]

%%%%%%%%%%%%%%%%%%%%
% maketitle
%%%%%%%%%%%%%%%%%%%%
\makeatletter

% Length of Meta Info Blank
\def\@metaBlankLen{}
\newcommand\metaBlankLen[1]{\def\@metaBlankLen{#1}}

% Title (Chinese)
% 中文标题
\def\@titleZh{}
\newcommand\titleZh[1]{\def\@titleZh{#1}\let\Title\@titleZh}

% Student Name
% 学生姓名
\def\@studentNameEn{}
\newcommand\studentNameEn[1]{\def\@studentNameEn{#1}}
\def\@studentNameZh{}
\newcommand\studentNameZh[1]{\def\@studentNameZh{#1}}

% Student ID 
% 学号
\def\@studentId{}
\newcommand\studentId[1]{\def\@studentId{#1}}

% Advisor Name
% 导师姓名
\def\@advisorNameEn{}
\newcommand\advisorNameEn[1]{\def\@advisorNameEn{#1}}
\def\@advisorNameZh{}
\newcommand\advisorNameZh[1]{\def\@advisorNameZh{#1}}

% Department Name
% 学院名称
\def\@departmentNameEn{}
\newcommand\departmentNameEn[1]{\def\@departmentNameEn{#1}}
\def\@departmentNameZh{}
\newcommand\departmentNameZh[1]{\def\@departmentNameZh{#1}}

% Major Name
% 专业名称
\def\@majorNameEn{}
\newcommand\majorNameEn[1]{\def\@majorNameEn{#1}}
\def\@majorNameZh{}
\newcommand\majorNameZh[1]{\def\@majorNameZh{#1}}

% Year of Attendance
% 入学年份
\def\@yearOfAttendance{}
\newcommand\yearOfAttendance[1]{\def\@yearOfAttendance{#1}}

\renewcommand{\maketitle}{
	\input{style/ShanghaiTech-maketitle}
}
\newcommand{\makezhtitle}{
	\input{style/ShanghaiTech-makezhtitle}
}
\newcommand{\makesisttitle}{
	\input{style/ShanghaiTech-makesisttitle}
}

\makeatother
%%%%%%%%%%%%%%%%%%%%
% maketitle - end
%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% header and footer
%%%%%%%%%%%%%%%%%%%%

\pagestyle{fancy}

\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.~#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.~#1}{}}

\pagestyle{fancy}{
\fancyhf{}
\fancyhead[LE,RO]{Share\LaTeX}
\fancyhead[RE,LO]{Guides and tutorials}
\fancyfoot[CE,CO]{\leftmark}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{1pt}
}


\fancypagestyle{plain}{%
\fancyhf{}
\fancyhead[LE,RO]{Share\LaTeX}
\fancyhead[RE,LO]{Guides and tutorials}
\fancyfoot[CE,CO]{\leftmark}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{1pt}
% \fancyhf{}
% \fancyfoot[C]{\bfseries \thepage}
% \renewcommand{\headrulewidth}{0pt}
% \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{notation}{%
\fancyhf{}
\fancyhead[LO]{\bfseries Notation}
\fancyhead[RE]{\bfseries Notation}
\fancyfoot[C]{\bfseries \thepage}
\renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{contents}{%
\fancyhf{}
\fancyhead[LE,RO]{Share\LaTeX}
\fancyhead[RE,LO]{Guides and tutorials}
\fancyfoot[CE,CO]{\leftmark}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{1pt}
}

%%%%%%%%%%%%%%%%%%%%
% header and footer - end
%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%
% abstract
%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstractZh}
  {
    \phantomsection
    \addcontentsline{toc}{chapter}{摘要}
    \thispagestyle{plain}
    \begin{center}
    {\bf\Large 摘要}
    \end{center}
    \vspace{1cm}
  }
  {
  	\newline
  	{\bf 关键词}：
  }
\newenvironment{abstractEn}
  {
    \phantomsection
    \addcontentsline{toc}{chapter}{Abstract}
    \thispagestyle{plain}
    \begin{center}
%     \uppercase{
%     	\makeatletter
%         \@title
%         \makeatother
%     }
    \uppercase{\bf\Large Abstract}
    \end{center}
    \vspace{1cm}
  }
  {
  	\newline
  	{\bf Keywords}：
  }
%%%%%%%%%%%%%%%%%%%%
% abstract - end
%%%%%%%%%%%%%%%%%%%%


\unitlength=10mm
\abovecaptionskip=0pt


\RequirePackage{style/ShanghaiTech-bachelor-thesis}
