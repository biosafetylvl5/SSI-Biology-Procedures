\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ssiBio}[2017/10/31 SSI Biology Template]
\LoadClass[letterpaper]{article}

%% Language and font encodings
\RequirePackage[english]{babel}
%\RequirePackage[utf8x]{inputenc}
%\RequirePackage[T1]{fontenc}

%%% Useful packages
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{tcolorbox}
\RequirePackage[nodayofweek]{datetime}

% Sets page size, footer, indent and margins
\RequirePackage[a4paper,top=2.5cm,bottom=3.5cm,left=2.25cm,right=2.25cm,marginparwidth=2.25cm]{geometry}
\setlength\parindent{0pt}
\setlength{\footskip}{66pt}
\pagestyle{fancy}

% Safety Environment 
\definecolor{safetyFrame}{HTML}{FFFFFF}
\newenvironment{safety}{%
\begin{tcolorbox}[width=\textwidth, colframe=safetyFrame, arc=1.5mm]
}%
{\end{tcolorbox}}

% Footer
\lfoot{\includegraphics[height=1.5cm]{./resources/1000x350-Horiz-Logo-WhiteRed-BlackText.png}}
\rfoot{\includegraphics[height=1.25cm]{./resources/ssiBiologyLogo.png}}

% Substitution Commands
\newcommand{\tdt}{Terminal Deoxynucleotidyl Transferase}
\newcommand{\C}{$^{\circ}$C}
\newcommand{\uL}{$\mu{}$L}
\newcommand{\BdATP}{3'-O-(2-nitrobenzyl)-2'-dATP}

%Stop Point (Optional)
\newcommand{\stopPoint}{\begin{center}
\rule{0.5\textwidth}{.4pt}\\
\vspace{1mm} 
OPTIONAL STOP POINT\\
\rule{0.5\textwidth}{.4pt}
\end{center}}

%Recommended Stop Point
\newcommand{\RstopPoint}{\begin{center}
\rule{0.5\textwidth}{.4mm}\\
\vspace{1mm} 
RECOMMENDED STOP POINT\\
\rule{0.5\textwidth}{.4mm}
\end{center}}

% Magic row numbers for table below
\newcounter{magicrownumbers}
\newcommand\rownumber{\stepcounter{magicrownumbers}\arabic{magicrownumbers}}

%Remove boxes around links and set them to SSIRed - dark
\definecolor{ssiRedDark}{HTML}{680811}
\hypersetup{
    colorlinks,
    linkcolor={ssiRedDark},
    citecolor={ssiRedDark},
    urlcolor={ssiRedDark}
}
\input{./resources/safetyInfo.tex}
% vi:syntax=context
