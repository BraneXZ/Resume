\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fortythree_resume}[2020/06/01 Custom resume class]
\LoadClass{article}
\RequirePackage{titlesec}

% Packages
\usepackage[hidelinks]{hyperref} % Remove ugly links
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry} % Border control

% Name command
% Parameter: {first_name,last_name}
\newcommand{\namesection}[2]{
	\centering{\fontsize{40pt}{60pt} 
		\selectfont #1 
		\selectfont #2
	}
}

% Section seperators 
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Section headings
\titleformat
	{\section}
	{\normalfont\Large\bfseries\raggedright\uppercase}
	{}
	{0em}{}
	
% Subsection headings
\titleformat
	{\subsection}
	{\normalfont\bfseries\raggedright}
	{}
	{0em}{}
	
% Description command
\newcommand{\descript}[1]{
	\raggedright
	\fontsize{11pt}{13pt}
	\selectfont {#1 \\}
}

% Company and Title command
\newcommand{\company}[2]{
	\raggedright
	\fontsize{10pt}{12pt}
	\selectfont\bfseries\uppercase {#1}\fontsize{9pt}{11pt}\selectfont\itshape{, #2}\\
}

% Location & time command
\newcommand{\location}[2]{
	\raggedright
	\fontsize{9pt}{11pt}
	\normalfont
	\selectfont {#1}
	\hfill{#2}\\
}