# latex

-------------------------------------------

# Compilation:

To compile to pdf:
`pdflatex test.tex`
Or:
`xelatex test.tex`

-------------------------------------------

# General typesetting overview:

```
\documentclass{article}

\title{My Title}
\author{Daniel Forde}
\date{January 2023}

\begin{document}

\maketitle

\tableofcontents

\chapter{First Chapter}

\section{First Section}

\subsection{First Subsection}

% \section*{Unnumbered Section}

% This is a comment.

This word is \textbf{bold}.
This word is \underline{underlined}.
This word is in \testit{italics}.
These can be \testbf{\testit{combined}.

This is an example of contextual \emph{emphasis}.
\testit{This is an example of contextual \emph{emphasis}.}
\testbf{This is an example of contextual \emph{emphasis}.}

% \usepackage{graphicx}
% \graphicspath{{images/}}
% \includegraphics{my_image}

\begin{figure}[h]
    \centering
    \includegraphics[width=0.75\textwidth]{mesh}
    \caption{A nice plot.}
    \label{fig:mesh1}
\end{figure}

This is a reference to figure \ret{fig:mesh1}.
The referenced figure is on page \pageref{fig:mesh1}.

This is an unordered list:
\begin{itemize}
    \item Entry one.
    \item Entry two.
\end{itemize}

This is an ordered list:
\begin{enumerate}
    \item Entry one.
    \item Entry two.
\end{enumerate}

\begin{equation}
E = mc^2
\end{equation}

This in an inline equation: $E=mc^2$.

This is an alternative inline equation:
\begin{math}
E=mc^2
\end{math}
, and yet another way: \(E=mc^2\).

Table \ref{table:data} shows how to add a table caption and reference a table.
\begin{table}[h!]
\centering
\begin{tabular}{||c c c c||}
    \hline
    Col1 & Col2 & Col2 & Col3 \\ [0.5ex]
    \hline\hline
    1 & 6 & 87837 & 787 \\
    2 & 7 & 78 & 5415 \\
    3 & 545 & 778 & 7507 \\
    4 & 545 & 18744 & 7560 \\
    5 & 88 & 788 & 6344 \\ [1ex]
    \hline
\end{tabular}
\caption{Table to test captions and labels.}
\label{table:data}
\end{table}

\end{document}
```

-------------------------------------------

#latex #tex #typesetting #typography #formatting #mathematics #math
