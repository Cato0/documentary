---
id: Latex
title: Latex
sidebar_label: Latex
---

# Sections

    \section{Related Work}
    \subsection{Implementation}
    \subsubsection{Evaluation}

# Häufig benutzte Befehle

    \tableofcontents
    \clearpage

# Import

Insert a seperate .tex file into your project. (File: texFileName.tex)

\input{texFileName}

TexFile E.g:

\section{Test}
Start Writing
	
# Literature

include bibliography. F8 (Bibliographie), to include References in the Paper.
It shows a list of the ones that are actually Referenced in the Paper, not all that are in the Bib File

At the end of the Paper:

    \bibliography{MyCollection}

Referencing:

	\cite{Ratzlaff2018}
	
The name Ratzlaff2018 is inside the Bib File - MyCollection.
E.g. @article{Ratzlaff2018, ...}

Order can be done Alphabetical but standart is in order or appearance. Meaning, whatevery gets cited first in the Paper gets listet first in the References

## Mendeley

Software for editing Bib-File

Email:
an.konhardt@
wta

1. install Mendeley Add on in the Browser, and Desktop App
2. Open a research Paper
3. Save the 

# Figures / Images

https://www.youtube.com/watch?v=INf7VKipMdQ

## Half width

    \begin{figure} 
    \centerline{\psfig{figure=figure/Config_K52.png,width=3.34in}}
    \caption{Example taken from a paper that was held from production because the image quality is poor.  ASME sets figures captions in 8pt, Helvetica Bold.}
    \label{fig_example1.ps}
    \end{figure}

## Full width

    \begin{figure*} 
    \centerline{\psfig{figure=figure/Config_K52.png,width=6.85in}}
    \caption{A figure expanded to double column width the text from Figure~\ref{fig_example1.ps}}
    \label{fig_example4.ps}
    \end{figure*}

## Other

	\begin{figure}[H]
		\begin{minipage}[b]{0.9\textwidth }
			\includegraphics[width=1.0\linewidth]{./images/screenshot_LDW_TSR_2}
			\caption[Display 7-Zoll]{ADAF}
			\label{fig:TRS_1}
		\end{minipage}
	\end{figure}

	\begin{figure}[H]
		\centering
		\begin{minipage}[b]{0.9\textwidth }
			\includegraphics[width=0.8\linewidth]{./images/ADAF_screenshot}
			\caption[Display 7-Zoll]{ADAF Screenshot}
			\label{fig:TRS_1}
		\end{minipage}
	\end{figure}

# Tables

    \begin{table}[t]
    \caption{Figure and table captions do not end with a period}
    \begin{center}
    \label{table_ASME}
    \begin{tabular}{c l l}
    & & \\ % put some space after the caption
    \hline
    Example & Time & Cost \\
    \hline
    1 & 12.5 & \$1,000 \\
    2 & 24 & \$2,000 \\
    \hline
    \end{tabular}
    \end{center}
    \end{table}

# Enumerate / Auflistung

	\begin{enumerate}
	\item
	The format for the title, author, and abstract in the cover page.
	\item
	The font for title should be 24 pt Helvetica bold.
	\end{enumerate}
	
# Math

    \begin{equation}
    f(t) = \int_{0_+}^t F(t) dt + \frac{d g(t)}{d t}
    \label{Equation_Id}
    \end{equation}
	
	Later you can Reference this equation with the Lable Id:
	- \ref{Equation_Id}
	
	E.g:
	
	X_{Adversarial} = X + \epsilon.sign(\nabla_{x}J(\theta,x,y) )

    \(D_{s}\)
    => D_s

# 

- kleiner gleich
    \le
- größer gleich
    \ge
- Ungleich !=
    \neq
- 


	
# Footnote

	\footnotetext{Examine the input file, asme2ej.tex, to see how a footnote is given in a head.}
	paper\footnote{Avoid footnotes if at all possible.}
	
# Other

