% ---
% LaTeX class for Facharbeiten
% ---

\ProvidesClass{facharbeit}

% Load base class
\LoadClass[%
  paper = a4,
  fontsize = 12pt
]{scrartcl}

\newcommand{\Title}{Title}
\newcommand{\Date}{Date}
\newcommand{\Author}{Author}
\newcommand{\Tutor}{Tutor}
\newcommand{\Class}{}
\newcommand{\Sub}{}
\newcommand{\Bibfile}{}

\RequirePackage[utf8]{luainputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[style=numeric, backend=bibtex]{biblatex}
\RequirePackage{url}
\RequirePackage{amsmath}
\RequirePackage{graphicx}

\usepackage{setspace}
\setstretch{1.5}

\usepackage{geometry}
\geometry{%
   left = 30mm,
   right = 30mm
}

\graphicspath{ {./} }

\newpairofpagestyles{facharbeit}{%
  %\ihead{\Author\\\Sub}
  %\ohead{\Date\\\Class}
  %\chead{\Title}
  \cfoot{\thepage}
}

\pagestyle{facharbeit}
