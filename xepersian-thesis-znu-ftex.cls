%%
%% This is file `xepersian-bsc-thesis-znu.cls',
%%
%%
%% This is a changed file of xepersian-thesis to use for 
%% Zanjan University BSc thesises
%% 
%% 
%%   __________________________________
%%   Copyright © 2016-2016 Saeed Rahmani
%% 
%%   License information appended.
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xepersian-thesis-znu-ftex}
              [2009/01/05 v0.1
 Persian thesis document class in XeLaTeX]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

\newif\ifadvisorexist
%\advisorexisttrue

\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\city#1{\gdef\@city{#1}}

\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsupervisor#1{\gdef\@latinsupervisor{#1}}
\def\latinadvisor#1{\gdef\@latinadvisor{#1}}
\def\latincity#1{\gdef\@latincity{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}

\def\makepersiantitle{\begin{titlepage}
\vspace{-1cm}
{\includegraphics[width=4cm]{logo-fa.png}}

\vskip 3cm
{\Huge\bfseries \@title}\par
\vskip 3cm

{\Large\bfseries\writtenfor ~ \@degree}\\
\vspace{1cm}
{\LARGE \@author}\par%{\huge\bfseries \@author}\par
\vspace{2cm}
{\Large
  \undersupervision
\Large\bfseries ~ \@supervisor}\\

\ifadvisorexist
\vskip 0.5cm
{\Large
  \underadvising
\Large\bfseries ~ \@advisor}
\fi

\vspace{3cm}
{\Large \@thesisdate}

\vskip 1cm
%
\end{titlepage}%
}
\def\abstractpage{\newpage
\thispagestyle{empty}
%\vskip*{60mm}
\begin{center}{\Small{\bfseries \@title} \\}
\end{center}
\par
\begin{abstract}}
\def\endabstractpage
{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}%{\Large\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}
\centerline{\Large \bfseries\acknowledgementname}
\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature#1#2{\par\noindent#1\dotfill\null\\*
  {\raggedright #2\par}}

\def\abstract{\vspace*{0.5cm}\subsection*{\hspace*{6.7cm}\abstractname}\small
\@normalsize}
\def\endabstract{\par}

\pagenumbering{adadi}

\def\keywords#1{\par \vspace{5mm}
{\textbf{واژه‌های کلیدی:}} {\textit{ #1}}}

\def\latinkeywords#1{\par \vspace{5mm}
\noindent {\textbf{Keywords:}} {\textit{ #1}}}

\font\titlefont=cmssbx10 scaled 2074

\font\supervisorfont=cmbxti10

\def\makelatintitle{\begin{titlepage}
{\includegraphics[width=4cm]{logo-en.png}}
\vskip 0.5cm
\addtolength{\baselineskip}{5mm}
{\Huge \@latintitle} \par%{\titlefont \@latintitle} \par
\addtolength{\baselineskip}{-5mm}
\vskip 1cm
%{\Large\bfseries \@latindegree}\\
{\Large\@latindegree}\\

\vspace{1cm}
%{\huge\bfseries \@latinauthor}\par
{\huge\@latinauthor}\par
\vskip 2cm
{\Large 
Supervisor: ~
%\Large \bfseries ~ \@latinsupervisor}\\
\Large ~ \@latinsupervisor}\\
\ifadvisorexist
\vskip 0.5cm
{\Large
Advisor:  ~ \@latinadvisor}
\fi

\vskip 2cm
{\large \@latinthesisdate}
\end{titlepage}%
}

\def\acknowledgementname{\nastaliq{قدردانی}}
\def\by{توسط}
\def\writtenfor{  پایان‌نامهٔ}
\def\undersupervision{استاد راهنما:}
\def\underadvising{استاد مشاور:}
\def\departmentof{دانشکدهٔ}
\def\universityof{دانشگاه}
\def\latinby{by}

\linespread{1.95} 


%% Copyright © 2009-2010      by Saeed Rahmani     <rahmanidashti@gmail.com>
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%% by Saeed Rahmani.
%% 
%% 
%% 
%% 
%%
%% End of file `xepersian-thesis-znu.cls'.
