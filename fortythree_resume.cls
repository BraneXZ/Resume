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

% Personal information command
% Parameter: {title,info}

% Skills command
% Parameter: {skill_name}

% Section separators