% ---
% LaTeX class for handouts
% ---

\ProvidesClass{handout}

% Load base class
\LoadClass[11pt]{scrartcl}

% Define custom vars
\newcommand{\Title}{Title}
\newcommand{\Date}{Date}
\newcommand{\Author}{Author}
\newcommand{\Class}{}
\newcommand{\Sub}{}
\newcommand{\Bibfile}{}

% Load packages
\usepackage{ifthen}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage[utf8]{luainputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[style=numeric, backend=bibtex]{biblatex}
\RequirePackage{url}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage[a4paper]{geometry}
\RequirePackage[headsepline,footsepline]{scrlayer-scrpage}
\RequirePackage{enumitem}
\setitemize{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt}

\newcounter{sec}

\newenvironment{2col}{%
  \setitemize{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt,before=\vspace{-\baselineskip},leftmargin=0em}
  \setcounter{sec}{0}
  \begin{longtable}[ht]{>{\bfseries}p{0.22\textwidth} p{0.72\textwidth}}
}{%
  \end{longtable}
}

\let\origsubsection\subsection%
\renewcommand{\subsection}[1]{%
  \ifthenelse{\equal{\@currenvir}{longtable}}{%
    \ifnum\the\value{sec}>0 \\ \else\fi
    \stepcounter{sec}
    #1 & %
  }{%
    \origsubsection{#1}
  }
}

% Customize maketitle
\renewcommand\maketitle{
  \thispagestyle{handout-index}
  \vspace*{-10mm}
  \begin{center}
    \usekomafont{section}{\textsc{\LARGE\Title}} \\
    %{\textsc{\LARGE\Title}} \\
  \end{center}
  \vspace*{2mm}
}

\graphicspath{ {./} }

\setlength\textwidth{170mm}
\setlength\textheight{245mm}
\setlength\oddsidemargin{-5mm}
\setlength\evensidemargin{0in}
\setlength\topmargin{-1.25cm}
\setlength\parindent{0in}
\setlength\parskip{0.5em}
\setlength\headheight{28pt}

\newpairofpagestyles{handout-index}{%
  \ihead{\Author\\\Sub}
  \ohead{\Date\\\Class}
  \cfoot{\thepage}
}

\newpairofpagestyles{handout}{%
  \chead{\Title}
  \cfoot{\thepage}
}

\pagestyle{handout}
