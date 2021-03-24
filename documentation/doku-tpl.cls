\ProvidesClass{doku-tpl} 
\ProcessOptions\LoadClass[a4paper,oneside]{article} 

% Select language (for date/time etc.)
%\RequirePackage[ngerman]{babel} 
\RequirePackage[english]{babel}

% Pakets
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage[a4paper]{geometry}
\RequirePackage[usenames]{color}
\RequirePackage[utf8]{inputenc} 			% Encoding
\RequirePackage{fancyhdr}
\RequirePackage[hyphens]{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\usepackage{ifthen}
\geometry{verbose,tmargin=3cm,bmargin=3.5cm,lmargin=2.5cm,rmargin=2cm}
\frenchspacing % integration of appropriate spaces after the periods
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

% Default prameters
\def\subject#1	    {\gdef\@subject{#1}}
\def\title#1		{\gdef\@title{#1}}
\def\subtitle#1		{\gdef\@subtitle{#1}}
\def\discipline#1	{\gdef\@discipline{#1}}
\def\author#1		{\gdef\@author{#1}}
\def\adviser#1		{\gdef\@adviser{#1}}
\def\data#1			{\gdef\@data{#1}}

% Default discipline
\ifx \@discipline \undefined
	\def \@discipline {Industrial Technologies}
\fi

% Front Page
\newcommand{\frontpage}{
	\begin{titlepage}
		\begin{center}
			%\vspace*{3cm}
		
			% Top of page
			\textsc{\LARGE \bfseries Hochschule Luzern T\&A}\\[0.2cm]
			\textsc{\large Technik \& Architektur}\\[1cm]
			\textsc{\large Master of Science in Engineering}\\[.1cm]
			\textsc{\large Field of specialization: \@discipline}\\[.5cm]
			\vspace{4cm}
			%\begin{figure}[h!]
			%    \begin{center}
			%    	\leavevmode
			%    	\includegraphics[scale=0.35, trim = 0mm 0mm 0mm 0mm, clip]{logo.jpg}
			%    \end{center}
			%\end{figure}
			\vspace{0.2cm}
			\textsc{\Large \@subject}

			% Title
			\HRule \\[0.4cm]{
				\huge \bfseries \@title\\[0.3cm]
				\large \@subtitle
			}\\[0.4cm]
			\HRule \\[1.0cm]
			
			% Author
			%\begin{minipage}{0.7\textwidth}
				%\begin{center}
				%	\normalsize
				%	Verfasst von:\\
				%	\large
				%	\@author\\[.7cm]
				%	\normalsize
				%	Betreut von:\\
				%	\large
				%	\@adviser
				%\end{center}
			%\end{minipage}
			
			\begin{tabular}{rl}
				\textbf{Author} 				& Silvio Emmenegger \\
				 			                    & Hochschule Luzern T\&A 
				\vspace{0.2cm} 
				\\ \textbf{Advisor} 			& Prof. Dr. Jürgen Wassner \\
				 	                            & Hochschule Luzern T\&A
				\vspace{0.2cm} 
				\\ \textbf{Industrial partner}	%& t.b.d. \\
				              					& Prof. Dr. Thomas Graf \\
				              				    & Hochschule Luzern T\&A
   				\vspace{0.2cm} 	
				\\ \textbf{Expert} 			    & Dr. David Perels \\
				              				    & Sonova AG
			\end{tabular}

			% Bottom of page
			\vfill
			{\large \@data}
		\end{center}
	\end{titlepage}
}