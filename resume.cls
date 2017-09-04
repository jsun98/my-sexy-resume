%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]
\LoadClass[10pt,letterpaper]{article} % Font size and paper type


\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{fontawesome}
\RequirePackage[hidelinks,unicode]{hyperref}
\usepackage{fontspec}
\usepackage{xcolor}
\setmainfont{Arial}

\pagestyle{empty} % Suppress page numbers


%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%---------------------------------------------------------------------------------------

\definecolor{gray}{HTML}{696969}
\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\sectionspace}[0]{\vspace{0.5em}}
\newcommand*{\sectionitemspace}[0]{\vspace{0.25em}}
\newcommand*{\sectionsubtitlespace}[0]{\vspace{0.25em}}
\newcommand*{\sectiontitlestyle}[1]{{
  \fontsize{14pt}{1em} 
  \MakeUppercase{\bf #1}
}}
\newcommand*{\subsectiontitlestyle}[3]{{
  	\fontsize{12pt}{1em} 
  	{\bf #1} \space\it {#3} \hfill {#2} \vspace{-0.2em} \\
}}
\newcommand*{\subsectiondescriptionstyle}[1]{{
  	\fontsize{8pt}{1em} 
	\vspace{0em}\it {#1}
}}
\newcommand*{\honoritemstyle}[3]{{
  	{\fontsize{10pt}{1em}
    	{\bf #1} 
    	\space\it {#2} 
        \hfill {#3}
    }
    \vspace{0em}
}}

% \printname is used to print the name as a page header
\def \printname {
	\begin{center}
    	\bf\fontsize{32pt}{1em}\selectfont \@name\vspace{-0.15em}
    \end{center}
    
}

\def \printsocial {
	\begin{center}
    	{\Large Software Engineering Student\vspace{0.25em}\\}
        \faMobile\space\@mobile
        \space\textbar\space
    	\href{mailto:\@email}{\faEnvelope\space\@email}
    	\textbar\space
    	\href{https://github.com/\@github}	
    	{\faGithub\space\@github}
        \textbar\space
        \href{http://www.\@homepage}{\faHome\space\@homepage}
    \end{center}
    \vspace{0.25em}
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
  \printsocial
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionspace
  \sectiontitlestyle{#1}
  \sectionlineskip
  \hrule % Horizontal line
  \vspace{0.5em}
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{expSec}[4]{
 {\subsectiontitlestyle{#1}{#2}{#3}} 
 {\subsectiondescriptionstyle{#4}}
  \begin{list}{$\textbullet$}{\leftmargin=0.8em}
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \sectionitemspace
}

%----------------------------------------------------------------------------------------
%	PROJECTS FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{projSec}[3]{
 {\subsectiontitlestyle{#1}{#2}{#3}}
  \vspace{-1em}
  \begin{list}{$\textbullet$}{\leftmargin=0.8em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \sectionitemspace
}


%----------------------------------------------------------------------------------------
%	HONORS FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{honorSec}[3]{
 {\honoritemstyle{#1}{#2}{#3}\\}
  \vspace{-1.5em}
}



% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\huge} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\bigskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
