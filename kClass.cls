%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kclass}[2020/11/18]

\LoadClass[landscape, a4paper, 12pt]{extarticle}

\RequirePackage[table, dvipsnames]{xcolor}
\RequirePackage[landscape, margin=16mm]{geometry}
\RequirePackage{array}
\RequirePackage{varioref}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    linkcolor={blue!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}
\RequirePackage{silence}
\WarningFilter[pdftoc]{hyperref}{Token not allowed in a PDF string}
\renewcommand{\arraystretch}{1.5}
\setlength{\parindent}{0mm}
\RequirePackage{booktabs}
\RequirePackage{fontspec}
\RequirePackage{inputenc}
\newfontfamily{\NotoEmoji} {NotoColorEmoji.ttf}[Renderer=Harfbuzz]
\newcommand{\emoji}[1]{\text{\footnotesize\NotoEmoji\symbol{"#1}}}
\renewcommand{\b}{\emoji{1F98E}}
\renewcommand{\a}{\emoji{1F988}}
\renewcommand{\d}{\emoji{1F981}}
\renewcommand{\c}{\emoji{1F43A}}
\newcommand{\x}{\emoji{1F995}}
\newcommand{\y}{\emoji{1F996}}
\newcommand{\z}{\emoji{1F419}}	
\renewcommand{\v}{\emoji{1F41D}}
\newcommand{\w}{\emoji{1F577}}
\renewcommand{\u}{\emoji{1F42C}}	
\newcommand{\s}{\emoji{1F420}}
\renewcommand{\th}{\emoji{1F42F}}
\newcommand{\tf}{\emoji{1F405}}
\newcommand{\f}{\emoji{1F433}}
\newcommand{\n}{\emoji{1F40C}}

\RequirePackage{tcolorbox}
\newtcbox{mybox}{nobeforeafter, colback=cyan!100,
colframe=cyan!100, fontupper=\bfseries\color{white}, left=0pt,right=0pt,top=0pt,bottom=0pt}

\newcommand{\msymb}[1]{\text{\colorbox{Cyan}{\color{White}\textbf{#1}} }}
\renewcommand{\equiv}{\msymb{=}}
\newcommand{\subst}{\msymb{→}}
\definecolor{numbercolor}{HTML}{d9ff60}
\definecolor{basecolor}{HTML}{ffd633}
\definecolor{powercolor}{HTML}{a9d5ff}
\definecolor{coeffcolor}{HTML}{ffff84}
\newcommand{\base}[1]{\text{\colorbox{basecolor}{\color{Black}\textbf{#1}}}}
\newcommand{\power}[1]{\text{\colorbox{powercolor}{\color{Black}\textbf{#1}}}}
\newcommand{\coeff}[1]{\text{\colorbox{coeffcolor}{\color{Black}\textbf{#1}}}}
\newcommand{\nbase}[1]{\text{\colorbox{numbercolor}{\color{Black}\textbf{#1}}}}

\newcommand{\bp}[2]{\ensuremath{\base{#1}^{\power{#2}}}}
\newcommand{\cbp}[3]{\coeff{#1} * \bp{#2}{#3}}

\newcommand{\longsubst}{\;\;\;\;\;\; \subst \;\;\;\;\;\;}
% using https://unicode.org/emoji/charts/full-emoji-list.html
\newcommand{\minus}{\emoji{2796}}
\newcommand{\plus}{\emoji{2795}}
\newcommand{\divi}{\emoji{2797}}
\newcommand{\mult}{\emoji{2716}}
\newcommand{\zero}{\emoji{0030}}
\newcommand{\one}{\emoji{0031}}
\newcommand{\nono}{\emoji{274C}}
\newcommand{\yesyes}{\emoji{2705}}
\newcommand{\pray}{\emoji{1F64F}}
\newcommand{\heart}{\emoji{2763}}
\newcommand{\dizzy}{\emoji{1F4AB}}

\RequirePackage{parskip} % skip the line between the paragraphs
\setlength{\parindent}{0mm}
\RequirePackage{pdflscape} % to be able to use \begin{landscape} ... \end{landscape}
% adding new page before every section
\let\latexsection\section
\renewcommand{\section}{\sectionbreak\latexsection}
\newcommand{\sectionbreak}{\global\let\sectionbreak\clearpage}
% adding subsubsubsection
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}
\newcommand{\subsubsubsection}[1]{\paragraph{#1}\strut\\\strut }

\RequirePackage{amsmath} % \text in math mode
\RequirePackage{mathtools} % \underbracket
\RequirePackage{xstring} % to be able to use \IfStrEq
\newcommand{\beqs}[3][dummy]{\parbox{#3}{ 
\begin{equation}\IfStrEq{#1}{dummy}{}{\label{#1}}\displaystyle #2\end{equation}}}
\usepackage{amsthm}
\theoremstyle{definition}
\newtheorem{exo}{Exercise}[section]

\definecolor{minuscolor}{HTML}{bae1ff}
\definecolor{pluscolor}{HTML}{ffb3ba}
\definecolor{divicolor}{HTML}{dbdcff}
\definecolor{multcolor}{HTML}{ffd4e5}
\definecolor{addmultcolor}{HTML}{ffc3cf}
