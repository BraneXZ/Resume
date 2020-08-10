\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fortythree_resume}[2020/06/01 Custom resume class]
\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{fontspec}

% Packages
\usepackage[hidelinks]{hyperref} % Remove ugly links
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Border control

% Name command
% Parameter: {first_name,last_name}
\newcommand{\namesection}[2]{
	\begin{center}{\fontsize{30pt}{45pt}
	\normalfont\bfseries
		\selectfont #1 
		\selectfont #2
	}
	\end{center}
}

% Section seperators 
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Section headings
\titleformat
	{\section}
	{\fontspec{Stencil}\LARGE\bfseries\raggedright\uppercase}
	{}
	{0em}{}
	
% Subsection headings
\titleformat
	{\subsection}
	{\normalsize\fontspec{Cambria}\bfseries\raggedright}
	{}
	{0em}{}
	
% Description command
\newcommand{\descript}[1]{
	\raggedright
	\normalsize
	\selectfont {#1 \\}
}

% Company and Title command
\newcommand{\company}[2]{
	\raggedright
	\fontsize{10pt}{12pt}
	\selectfont\bfseries\uppercase {#1}\fontsize{9pt}{11pt}\selectfont\itshape{, #2}\\
}

% Project command
\newcommand{\project}[2]{
	\raggedright
	\fontsize{10pt}{12pt}
	\selectfont\bfseries\uppercase{#1}
	\normalfont\fontsize{10pt}{12pt}\selectfont
	\hfill {#2}
}

% Location & time command
\newcommand{\location}[2]{
	\raggedright
	\fontsize{10pt}{12pt}
	\selectfont {#1}
	\normalfont\fontsize{10pt}{12pt}\selectfont
	\hfill {#2}
}

\newcommand{\itemdescript}[1]{
	\normalsize
	\normalfont
	\selectfont {#1}
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}