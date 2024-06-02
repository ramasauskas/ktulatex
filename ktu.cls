\LoadClass[12pt, a4paper]{article}

% Margins
\RequirePackage[
	left=30mm,
	top=20mm,
	right=10mm,
	bottom=20mm,
]{geometry}

% Justified
\sloppy
\hyphenpenalty=10000
\exhyphenpenalty=10000

% Lithuanian language support
\RequirePackage[lithuanian]{babel}
\RequirePackage[T1]{fontenc}

% Remove indentation
\RequirePackage{parskip}

% One half spacing
\RequirePackage{setspace}
\setstretch{1.15}

% Spacing between paragraphs 10pt
\setlength{\parskip}{10pt}

% No indendation
\setlength{\parindent}{0em}

\RequirePackage{titlesec}

% Spacing between sections
\titlespacing\section{0pt}{10pt plus 0pt minus 0pt}{10pt plus 0pt minus 0pt}
\titlespacing\subsection{0pt}{10pt plus 0pt minus 0pt}{10pt plus 0pt minus 0pt}
\titlespacing\subsubsection{0pt}{10pt plus 0pt minus 0pt}{10pt plus 0pt minus 0pt}

\titleformat{name=\section,numberless}
  {\center \normalfont\normalsize\bfseries}{}{0em}{}
\titleformat{name=\section}
  {\normalfont\normalsize\bfseries}{\thesection.}{1em}{}
\titleformat{name=\subsection,numberless}
  {\normalfont\normalsize\bfseries}{}{0em}{}
\titleformat{name=\subsection}
  {\normalfont\normalsize\bfseries}{\thesubsection.}{1em}{}
\titleformat{name=\subsubsection}
  {\normalfont\normalsize\bfseries}{\thesubsubsection.}{1em}{}
\titleformat{name=\subsubsection,numberless}
  {\normalfont\normalsize\bfseries}{}{0em}{}

% Page numbers on right
\usepackage{fancyhdr}
\fancypagestyle{plain}{% Redefining plain page style
  \fancyhf{} %clear all header and footer fields
  \fancyfoot[RO]{\thepage}
}%
\fancyhf{} %clear all header and footer fields
\fancyfoot[RO]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}% Fancy page style

% click sections
\RequirePackage[hidelinks]{hyperref}
\hypersetup{
    colorlinks=False,
}

\RequirePackage{graphicx}
\usepackage{subcaption}
\RequirePackage{float}

% list items remove indent
\RequirePackage{enumitem}
\setlist{nosep, leftmargin=*}
\setlist[1]{topsep=0pt, labelindent=\parindent}

% captions and tables
\RequirePackage[
font={small,
stretch=1.15
}, 
tableposition=top,
figureposition=bottom,
labelfont=bf 
]{caption}
\captionsetup[table]{singlelinecheck=false, justification=raggedright,labelsep=period, belowskip=0pt}
\DeclareCaptionLabelSeparator{mysep}{ }
\captionsetup*[figure]{labelsep=mysep, justification=centering, belowskip=0pt}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}

\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

\RequirePackage{booktabs}

\RequirePackage{calc}
\RequirePackage{tocloft}
\setlength{\cfttabindent}{0pt} % No indentation for list of tables
\setlength{\cftfigindent}{0pt} % No indentation for list of figures
\setlength{\cftsecindent}{0pt}
\setlength{\cftsubsecindent}{0pt}
\setlength{\cftsubsubsecindent}{0pt}
\setlength{\cftbeforesecskip}{0pt}
\renewcommand*{\cftsecaftersnum}{.}
\renewcommand*{\cftsubsecaftersnum}{.}
\renewcommand*{\cftsubsubsecaftersnum}{.}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\cfttabfont}{\normalfont}
\renewcommand{\cftsubsecfont}{\normalfont}
\renewcommand{\cftsubsubsecfont}{\normalfont}
\renewcommand{\cftfigpagefont}{\normalfont}
\renewcommand{\cfttabpagefont}{\normalfont}
\renewcommand{\cftlottitlefont}{\hfill\normalsize\bfseries}
\renewcommand{\cftafterlottitle}{\hspace*{\fill}}
\renewcommand{\cfttabpresnum}{}
\renewcommand{\cfttabaftersnum}{ lentelė.}
\renewcommand{\cftfigaftersnum}{ pav.}
\setlength{\cfttabnumwidth}{\widthof{99 lentelė }}
\setlength{\cftfignumwidth}{\widthof{99 pav.}}
\renewcommand\cfttoctitlefont{\hfill\normalsize\bfseries}
\renewcommand\cftaftertoctitle{\hfill\mbox{}}
\renewcommand\cftloftitlefont{\hfill\normalsize\bfseries}
\renewcommand\cftafterloftitle{\hfill\mbox{}}
\renewcommand\cftdotsep{1}
\renewcommand{\cftsecpagefont}{\normalfont}

\RequirePackage[
    alldates=iso,
    seconds=true,
    % Iš publikavimo datos rodomi tik metai
    date=year,
    % pakeičiame žodžių skaidymą skiemenimis, kai langid nėra lithuanian
    autolang=hyphen,
    backend=biber,
    eprint=false,
    sortcites=true,
    sorting=anyt,
    giveninits=true,
    style=iso-alphabetic,
    abbreviate=false,
    minalphanames=3,
    maxalphanames=3,
    maxnames=9,
    minnames=4,
    style=iso-numeric,
]{biblatex}
\addbibresource{bibliography.bib}

\DefineBibliographyStrings{lithuanian}{%
    % Literatūros sąrašas.
    references = {Literatūros sąrašas},
    in = {iš},
    % Terminai, vartojami biblatex-iso690 bibliografijos stiliuje.
    % Žr. https://github.com/michal-h21/biblatex-iso690/wiki/Translation-Guideline
    urlalso = {prieiga per internetą},
    urlfrom = {prieiga per internetą},
    urlseen = {žiūrėta},
    % Žr. https://terminai.vlkk.lt/konsultacijos/1986-on-line-prijungtas-prijungtis
    online = {internetinis},
}

\DeclareFieldFormat{doi}{\addcolon\space\url{https://doi.org/#1}}
\DeclareNameAlias{default}{given-family}
% Skirtukai tarp autorių padaromi kableliais
\DeclareDelimFormat{multinamedelim}{\addcomma\space}
\DeclareDelimFormat{finalnamedelim}{\addcomma\space}
\renewcommand{\familynameformat}[1]{#1}
\usepackage{silence}
\WarningFilter{biblatex}{File 'american-iso.lbx' not found!}
\WarningFilter{biblatex}{File 'lithuanian-iso.lbx' not found!}
\renewbibmacro*{medium-type}{%
  \iffieldundef{howpublished}{}% Don't print anything
    {\ifboolexpr{
        test {\iffieldequalstr{howpublished}{online}}
        and not test {\iftoggle{bbx:url}}
        and not test {\ifentrytype{online}}
      }
        {}% Don't print 'howpublished' field
        {\printfield{howpublished}}}%
}


% title page color
\RequirePackage[dvipsnames]{xcolor}
\definecolor{lines_name}{RGB}{212,175,54}

\fancypagestyle{noNumber}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\RequirePackage{tabularx}
\RequirePackage{multirow}
