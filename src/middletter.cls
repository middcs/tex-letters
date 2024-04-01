\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{middletter}

\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{mathptm}
\RequirePackage{helvet}
\RequirePackage{times}
\RequirePackage{xcolor}
\RequirePackage{blindtext}
\RequirePackage{adjustbox}
\RequirePackage{tikzpagenodes}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\pagestyle{plain}
\definecolor{middblue}{HTML}{003F84}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

\graphicspath{{src}{../src}}

\newcommand{\midd@fromaddr}{short}

% adjust these
\newcommand{\midd@name}{Dr. CS Professor}
\newcommand{\midd@title}{A Professor}
\newcommand{\midd@dept}{Department of Computer Science}
\newcommand{\midd@college}{Middlebury College}
\newcommand{\midd@collegeurl}{www.middlebury.edu}
\newcommand{\midd@addressfirst}{75 Shannon Street, Room 218}
\newcommand{\midd@addresssecond}{Middlebury, VT 05753}
\newcommand{\midd@depturl}{https://www.middlebury.edu/college/academics/computer-science}
\newcommand{\midd@email}{me@middlebury.edu}

\newcommand{\email}[1]{\renewcommand{\midd@email}{#1}}
\newcommand{\fax}[1]{\renewcommand{\midd@fax}{#1}}

\date{}

  
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions

\LoadClass{letter}
\RequirePackage{fullpage}

\setlength{\topmargin}{-0.25in}
\setlength{\footskip}{0.5in}
\setlength{\textwidth}{6.5in}
\setlength{\longindentation}{0pt}


\renewcommand{\closing}[1]{
  #1 \\ 
  \fromsig
}

\signature{
    % \vspace{-50pt} 
    \includegraphics[scale=0.4]{signature.png}  \\ 
    \midd@name  \\
    \midd@title  \\
    \midd@dept \\ 
    \midd@college
}

\address{
    \begin{tikzpicture}[remember picture,overlay]
      \node[xshift=-10cm,yshift=-0.5cm]{\includegraphics[width=6cm]{midd-shield.png}};
    \end{tikzpicture}
      \hfill {\footnotesize {\color{middblue}\textsf{ \textbf{\midd@name}}}}\\[-2pt]
      \hfill {\footnotesize \textsf{\midd@title}}\\[-2pt]
      \hfill {\footnotesize \textsf{\midd@dept}} \\[-2pt]
      \hfill {\footnotesize \textsf{\midd@college}} \\[-2pt]
      \hfill {\footnotesize \textsf{\midd@email}} \\[-2pt] \\[-2pt] 
      \hfill {\footnotesize \textsf{\midd@addressfirst}} \\[-2pt] 
      \hfill {\footnotesize \textsf{\midd@addresssecond}} \\[-2pt] 
      \hfill {\footnotesize \textsf{\midd@collegeurl}} 
  }



  
