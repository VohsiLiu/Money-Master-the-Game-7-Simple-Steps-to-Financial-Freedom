\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MoneyMasterTheGame7SimpleStepsToFinancialFreedom}
\LoadClass[zihao=-4,a4paper,12pt,twoside,fontset=none]{ctexart}
\RequirePackage[top=3.2cm,bottom=2.7cm,left=3.18cm,right=3.18cm]{geometry}
\RequirePackage{xcolor,graphicx}

% 中文各字体独立设置；西文保留模板的 Times New Roman。
\RequirePackage[AutoFallBack=true]{xeCJK}
\setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01}
\setCJKsansfont[BoldFont={FZHei-B01}]{FZHei-B01}
\setCJKmonofont[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\setCJKfamilyfont{zhsong}[BoldFont={FZHei-B01}]{FZShuSong-Z01}
\setCJKfamilyfont{zhhei}[BoldFont={FZHei-B01}]{FZHei-B01}
\setCJKfamilyfont{zhkai}[BoldFont={FZHei-B01}]{FZKai-Z03}
\setCJKfamilyfont{zhfs}[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\providecommand{\songti}{}
\renewcommand*{\songti}{\CJKfamily{zhsong}}
\providecommand{\heiti}{}
\renewcommand*{\heiti}{\CJKfamily{zhhei}}
\providecommand{\kaishu}{}
\renewcommand*{\kaishu}{\CJKfamily{zhkai}}
\providecommand{\fangsong}{}
\renewcommand*{\fangsong}{\CJKfamily{zhfs}}
\newCJKfontfamily\xbsong{FZXiaoBiaoSong-B05S}
\setCJKfallbackfamilyfont{\CJKrmdefault}{TH-Sy-P0,FZSongS--GB1-5,FZSONG_ZHSJ_02--GB1-5}
\xeCJKDeclareCharClass{CJK}{"2160 -> "216F, "2460 -> "2473}
\setmainfont{Times New Roman}[SmallCapsFont=TeX Gyre Termes:+smcp]
\RequirePackage{newunicodechar}
\newunicodechar{∶}{\ensuremath{\mathrel{:}}}
\xeCJKsetup{CJKecglue=\hskip 0.15em plus 0.05em minus 0.03em}

% 正文与页眉。封面的字体、字号和页面参数沿用原模板。
\RequirePackage{fancyhdr,emptypage,indentfirst,setspace}
\setlength{\parindent}{2em}
\setlength{\parskip}{0.25em}
\setstretch{1.5}
\setlength{\emergencystretch}{1.5em}
\setlength{\headheight}{15pt}
\raggedbottom
\fancypagestyle{tocstyle}{%
  \fancyhf{}\renewcommand{\headrulewidth}{0.35pt}%
  \fancyhead[C]{\kaishu\small 目录}\fancyfoot[C]{\small\thepage}}
\fancypagestyle{docstyle}{%
  \fancyhf{}\renewcommand{\headrulewidth}{0.35pt}%
  % 长页眉向上容纳，保持与原模板相同的版心及页脚位置。
  \fancyhead[CO]{\parbox[b][\dimexpr\headheight-\dp\strutbox\relax][b]{\headwidth}{\centering\kaishu\small\setstretch{1.1}\nouppercase{\leftmark}}}%
  \fancyhead[CE]{\kaishu\small 钱：7步创造终身收入}%
  \fancyfoot[C]{\small\thepage}}
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}
\renewcommand{\subsectionmark}[1]{}

% 篇、章、小节：目录沿用原书的篇章层级。
\RequirePackage{titlesec}
\setcounter{secnumdepth}{0}
\setcounter{tocdepth}{1}
\titleformat{\section}[block]
  {\centering\xbsong\zihao{-2}\xeCJKsetup{CJKglue=\hskip 1.5pt}}
  {}{0pt}{}
\titleformat{\subsection}[block]
  {\centering\heiti\setstretch{1.25}\zihao{-3}}{}{0pt}{}
\titleformat{\subsubsection}[block]
  {\heiti\setstretch{1.25}\zihao{4}}{}{0pt}{}
\titlespacing*{\section}{0pt}{1.8em}{1.6em}
\titlespacing*{\subsection}{0pt}{1.5em}{0.8em}
\titlespacing*{\subsubsection}{0pt}{1.1em}{0.5em}
\newcommand{\q}{\ \ }
\renewcommand*{\l@part}[2]{%
  \vskip 0.65em\@plus\p@\@dottedtocline{0}{0em}{0em}{\bfseries #1}{\bfseries #2}}
\newcommand*{\l@bookfront}[2]{\@dottedtocline{0}{0em}{0em}{#1}{#2}}
\renewcommand*{\l@section}[2]{\@dottedtocline{1}{1.5em}{0em}{#1}{#2}}
\newcommand{\BookFront}[1]{%
  \clearpage\phantomsection\section*{#1}%
  \markboth{#1}{}\addcontentsline{toc}{bookfront}{#1}}
\newcommand{\BookPart}[2]{%
  \clearpage\phantomsection\markboth{#1\q #2}{}%
  \addcontentsline{toc}{part}{#1\q #2}\thispagestyle{empty}%
  \vspace*{0.15\textheight}%
  \begin{center}{\heiti\zihao{3}#1\par}\vspace{1.6em}%
  {\xbsong\zihao{-1}#2\par}\end{center}\cleardoublepage}
\newcommand{\BookChapter}[1]{%
  \clearpage\setcounter{section}{#1}\setcounter{table}{0}\setcounter{figure}{0}}
\renewcommand{\thefigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{section}.\arabic{table}}

% 引文和列表保持正文行距。
\RequirePackage{enumitem}
\setlist{topsep=0pt,partopsep=0pt,itemsep=0pt,parsep=\parskip,leftmargin=2em}
\setlist[itemize]{label=\textbullet}
% 将已有段间距计入前后各0.5em，避免与parskip叠加。
\newenvironment{BookQuote}{%
  \par\addvspace{\dimexpr1em-\parskip\relax}\begingroup\kaishu
}{%
  \par\endgroup\addvspace{\dimexpr1em-\parskip\relax}}
\newcommand{\BookCheckBox}{\fbox{\rule{0pt}{0.6em}\rule{0.6em}{0pt}}}

% 图表使用标准容器；长表重复表头并在每页收尾。
\RequirePackage{array,tabularx,longtable,booktabs}
\RequirePackage[font=small,labelfont=bf,labelsep=quad]{caption}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}
\AtBeginEnvironment{longtable}{%
  \small\setstretch{1.18}\setlength{\tabcolsep}{6pt}%
  \setlength{\LTpre}{0.8em}\setlength{\LTpost}{0.8em}}
% 原书以图编号的表格式图示重绘后，仍沿用原图编号。
\newenvironment{BookFigureTable}{%
  \begingroup\let\c@table\c@figure\let\thetable\thefigure
  \let\theHtable\theHfigure\let\fnum@table\fnum@figure
  \renewcommand{\tablename}{图}\def\ext@table{lof}}{\endgroup}

\RequirePackage[stable,bottom]{footmisc}
\RequirePackage{perpage}
\MakePerPage{footnote}
% 将完整注释和对应引用标记留在同一页。
\interfootnotelinepenalty=10000
\RequirePackage{hyperref}
\hypersetup{colorlinks=true,allcolors=black,linktoc=all,
  bookmarksopen=true,bookmarksopenlevel=1,
  pdftitle={钱：7步创造终身收入},pdfauthor={托尼·罗宾斯}}
\def\toclevel@bookfront{0}
\renewcommand{\theHfigure}{\arabic{section}.\arabic{figure}}
\renewcommand{\theHtable}{\arabic{section}.\arabic{table}}
\endinput
