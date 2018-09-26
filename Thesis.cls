\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{mathtools}
\usepackage{amsmath}
\usepackage{mathrsfs,amssymb}
\usepackage[scriptsize]{subfigure}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%   begin local macros %%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\vl{{\bf l}}
\def\vt{\mbox{\rm \boldmath$\theta$\unboldmath} } %DO NOT DELETE SPACES
\def\vx{{\bf x}}
\def\rs{\rm rs}
\def\lle{\rm ll}
\def\ang{\,{\rm\AA}}
\def\flux{\,{\rm erg\,cm^{-2}\,arcsec^{-2}\,\AA^{-1}\,s^{-1}}}
\def\GeV{\,{\rm GeV}}
\def\TeV{\,{\rm TeV}}
\def\gev{\,{\rm GeV}}
\def\lsim{\mathrel{\raise.3ex\hbox{$<$\kern-.75em\lower1ex\hbox{$\sim$}}}}
\def\gsim{\mathrel{\raise.3ex\hbox{$>$\kern-.75em\lower1ex\hbox{$\sim$}}}}
\def\keV{\,{\rm keV}}
\def\MeV{\,{\rm MeV}}
\def\sec{\,{\rm sec}}
\def\Gyr{\,{\rm Gyr}}
\def\yr{\,{\rm yr}}
\def\rcm{\,{\rm cm}}
\def\pc{\,{\rm pc}}
\def\kpc{\,{\rm kpc}}
\def\Mpc{\,{\rm Mpc}}
\def\mpc{\,{\rm Mpc}}
\def\eV{{\,\rm eV}}
\def\ev{{\,\rm eV}}
\def\erg{{\,\rm erg}}
\def\cmm2{{\,\rm cm^{-2}}}
\def\cm2{{\,{\rm cm}^2}}
\def\cmm3{{\,{\rm cm}^{-3}}}
\def\gcmm3{{\,{\rm g\,cm^{-3}}}}
\def\kms{\,{\rm km\,s^{-1}}}
\def\HO{{100h\,{\rm km\,sec^{-1}\,Mpc^{-1}}}}
\def\mpl{{m_{\rm Pl}}}
\def\mpp{{m_{\rm Pl,0}}}
\def\trh{T_{\rm RH}}
\def\g{\tilde g}
\def\R{{\cal R}}
\def\zl{z_{\rm LSS}}
\def\zeq{z_{\rm EQ}}
\def\he{$^4$He}
\def\VEV#1{\left\langle #1\right\rangle}
\def\la{\mathrel{\mathpalette\fun <}}
\def\ga{\mathrel{\mathpalette\fun >}}
\def\fun#1#2{\lower3.6pt\vbox{\baselineskip0pt\lineskip.9pt
  \ialign{$\mathsurround=0pt#1\hfil##\hfil$\crcr#2\crcr\sim\crcr}}}
\def\lcdm{$\Lambda$CDM~}
\def\eg{{\it e.g.}}
\def\ie{{\it i.e.}}
\def\etal{{\it et al.}}
\def\apriori{{\it a priori }}
\def\dis{{\Delta}}
\def\be{\begin{equation}}
\def\ee{\end{equation}}
\def\bea{\begin{eqnarray}}
\def\eea{\end{eqnarray}}
\newcommand{\vs}{\nonumber\\}
\def\across{a^\times}
\def\tcross{T^\times}
\def\ccross{C^\times}
\newcommand{\ec}[1]{Eq.~(\ref{eq:#1})}
\newcommand{\Ec}[1]{(\ref{eq:#1})}
\newcommand{\eql}[1]{\label{eq:#1}}
\newcommand{\dcl}{\chi_L}
\newcommand{\dcs}{\chi_S}
\newcommand{\rhos}{\rho_s}
\newcommand{\vm}{v_{\rm max}}
\newcommand{\rd}{r_\Delta}
\newcommand{\cd}{c_\Delta}
\newcommand{\pderiv}[2]{\frac{\partial#1}{\partial#2}}
\newcommand{\Cl}[2]{C_{#2}(#1)}
\newcommand{\Clobs}[2]{C^{\rm obs}_{#2}(#1)}
\newcommand{\fsky}{f_{\rm sky}}
\newcommand{\ngal}{\bar{n}^{\rm gal}}
\def\Msol{M_{\odot}}
\def\hMsol{h^{-1}M_{\odot}}
\newcommand{\ppp}{f_{\rm SUSY}}
\newcommand{\vesc}{v_{\rm esc}}
\newcommand{\ra}[1]{\renewcommand{\arraystretch}{#1}}

%---------Macros-------------
\newcommand{\vmin}{v_\mathrm{min}}
\newcommand{\qhat}{\hat{\mathbf{q}}}
\newcommand{\acos}{\cos^{-1}}
\newcommand{\asin}{\sin^{-1}}
\newcommand{\atan}{\tan^{-1}}
\newcommand{\dbd}[2]{\ifmmode \frac{\textrm{d}#1}{\textrm{d}#2}\else $\textrm{d}#1/\textrm{d}#2$\fi}

\newcommand{\erf}{\mathrm{erf}}

\newcommand{\vy}{\langle v_y \rangle}
\newcommand{\vT}{\sqrt{\langle v_T^2 \rangle}}


\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {Anne M. Green}
\examiner    {}
\degree      {PhD Physics}
\authors     {Ciaran A. J. O'Hare}
\university  {\texorpdfstring{\href{http://www.nottingham.ac.uk}
                {University of Nottingham}}
                {University of Nottingham}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.nottingham.ac.uk}
                {\sc University of Nottingham}}
                {\sc University of Nottingham}}
\department  {\texorpdfstring{\href{http://www.nottingham.ac.uk/physics}
                {School of Physics and Astronomy}}
                {School of Physics and Astronomy}}
\DEPARTMENT  {\texorpdfstring{\href{http://www.nottingham.ac.uk/physics}
                {SCHOOL OF PHYSICS AND ASTRONOMY}}
                {SCHOOL OF PHYSICS AND ASTRONOMY}}
\group       {\texorpdfstring{\href{http://www.nottingham.ac.uk/~ppzphy7/webpages/}
                {Particle Theory Group}}
                {Particle Theory Group}}
\GROUP       {\texorpdfstring{\href{http://www.nottingham.ac.uk/~ppzphy7/webpages/}
                {PARTICLE THEORY GROUP}}
                {PARTICLE THEORY GROUP}}
\faculty     {\texorpdfstring{\href{http://www.nottingham.ac.uk/~ppzphy7/webpages/}
                {Particle Theory Group}}
                {Particle Theory Group}}
\FACULTY     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null
    \begin{center}
      \vskip -60\p@
      \setlength{\parskip}{0pt}
      {\includegraphics[trim = 0mm 40mm 0mm 0mm, clip,width=0.7\textwidth]{Figures/logo.png}\par}
      \vfill
      {\Huge \bf \@title \par}
      \vfill
      {\Huge \authornames \par}
      \vfill
      {\Large Thesis submitted to the University of Nottingham \par}
      {\Large for the degree of Doctor of Philosophy \par}
      \bigskip
      \bigskip
      {\Large in the \par}
      {\Large \facname \par}
      {\Large \deptname \par}
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    {\huge{\textbf{Abstract}} \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{List of Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}

    \chapter*{\listsymbolname 
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textbf{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis.cls'.
