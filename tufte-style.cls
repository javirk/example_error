\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tufte-style}[]

%	O P T I O N S
%
\newif\if@justified\@justifiedfalse
\DeclareOption{boxey}{
    \@justifiedtrue
}

\ExecuteOptions{}
\ProcessOptions\relax
\LoadClassWithOptions{book}

\if@justified
    \AtBeginDocument{
        \justifying
    }
\else
    \AtBeginDocument{
        \setlength{\RaggedRightParindent}{1em}
        \RaggedRight
    }
\fi

%	P A C K A G E   D E F I N I T I O N
%
\RequirePackage{sidenotes}		% for margin stuff
\RequirePackage[
	hypcap=false				% hypcap=true spits an error
]{caption}						% for caption formatting
\RequirePackage[T1]{fontenc}	% font encoding
\RequirePackage[osf]{libertinus}% main font
\RequirePackage{ragged2e}		% for better raggedright
\RequirePackage{graphicx}		% for images
\RequirePackage{setspace}
\RequirePackage[
    hidelinks,
    final,
    breaklinks,
    bookmarks,
    pdfusetitle,
    colorlinks,
    linkcolor=black,
    citecolor=black  % This is for margin notes
]{hyperref}	% automatic references in pdf				% automatic references in pdf
\RequirePackage{placeins}		% for floatbarrier

%	F I G U R E S  A N D  S T U F F
%
% 	caption formatting

%	figure macros
\AtBeginDocument{\usepackage[export]{adjustbox}} % for 'outer' mode
\newcommand{\plainwidefig}[5][!htb]{%
    \FloatBarrier%
    \begin{figure*}[#1]%
        {\includegraphics[width=#2\linewidth, left]{#3}}%
        \caption{#4\label{#5}}%
    \end{figure*}%
}


%		S  T   R   E   T     C      H
%
\AtBeginDocument{%
	\setstretch{1.12}
}