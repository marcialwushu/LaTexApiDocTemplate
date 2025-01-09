% Arquivo apiDoc.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apiDoc}[2025/01/05 Template de Documentação de API]

\LoadClass[a4paper,12pt]{article}

% Pacotes necessários
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{listings}
\RequirePackage{xcolor}

% Configuração de margens
\geometry{top=2cm, bottom=2cm, left=2.5cm, right=2.5cm}

% Cabeçalho e Rodapé
\pagestyle{fancy}
\fancyhf{}
\lhead{Documentação API}
\rhead{Versão 1.0}
\lfoot{\textit{Confidencial}}
\rfoot{\thepage}

% Títulos
\titleformat{\section}{\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\large\bfseries}{\thesubsection}{1em}{}

% Configuração para Listings
\lstdefinelanguage{json}{
  basicstyle=\ttfamily\footnotesize,
  numbers=left,
  numberstyle=\tiny\color{gray},
  stepnumber=1,
  numbersep=5pt,
  showstringspaces=false,
  breaklines=true,
  frame=single,
  backgroundcolor=\color{gray!10},
  rulecolor=\color{black},
  string=[s]{"}{"},
  stringstyle=\color{green!50!black},
  comment=[l]{//},
  commentstyle=\color{gray},
  keywordstyle=\color{blue}\bfseries
}

% Configuração Global de Listings
\lstset{
  language=json,
  basicstyle=\ttfamily\footnotesize,
  breaklines=true,
  frame=single,
  backgroundcolor=\color{gray!10},
  rulecolor=\color{black},
  numbers=left,
  numbersep=5pt,
  numberstyle=\tiny\color{gray}
}

% Redefinir o Comando Endpoint
\providecommand{\endpoint}[4]{}
\renewcommand{\endpoint}[4]{%
  \noindent \textbf{#1:} \texttt{#2}\\
  \noindent \textbf{Descrição:} #3\\
  \noindent \textbf{Exemplo:} \texttt{\detokenize{#4}}\\
  \vspace{0.5cm}
}


% Comando para criar uma capa
\newcommand{\makecover}{%
  \begin{titlepage}
    \centering
    \vspace*{2cm}
    {\Huge\bfseries \@title\par}% Título principal
    \vspace{1cm}
    {\Large \@author\par}% Nome da organização
    \vspace{2cm}
    % Logotipo (opcional, substitua "logo.png" pelo nome do arquivo da imagem)
    % \includegraphics[width=0.4\textwidth]{logo.png}\par
    \vspace{2cm}
    {\large \@date\par}% Data
    \vfill
    \textbf{\textit{Confidencial}}\par
    \vspace*{1cm}
  \end{titlepage}
  \setcounter{page}{1}% Reinicia a numeração
}

\endinput
