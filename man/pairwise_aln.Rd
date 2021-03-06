% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pairwise_aln.R
\name{pairwise_aln}
\alias{pairwise_aln}
\title{Compute Pairwise Alignments}
\usage{
pairwise_aln(file, tool = "NW", seq_type = "protein", get_aln = FALSE,
  pairwise_aln_name = NULL, path = NULL, quiet = FALSE)
}
\arguments{
\item{file}{a character string specifying the path to the file storing the sequences in FASTA format.}

\item{tool}{a character string specifying the program/algorithm that should be used: \code{tool} = \code{"NW"}.}

\item{seq_type}{a character string specifying the sequence type stored within the given FASTA file. Options are
\code{seq_type} = \code{"protein"}, \code{seq_type} = \code{"cds"}, \code{seq_type} = \code{"dna"}.
 Default is \code{seq_type} = \code{"protein"}.}

\item{get_aln}{a logical value indicating whether the produced alignment should be returned.}

\item{pairwise_aln_name}{a character string specifying the name of the stored alignment file. 
Default is \code{pairwise_aln_name} = \code{NULL} denoting a default name: 'toolname_seq_type.aln' .}

\item{path}{a character string specifying the path to the pairwise alignment program (in case you don't use the default path).}

\item{quiet}{a logical value specifying whether a successful interface call shall be printed out.}
}
\value{
In case the argument \code{get_aln} is set \code{TRUE}, an object of class alignment of the seqinr package is returned.
}
\description{
This function takes a FASTA file containing two DNA or amino acid sequences
that shall be aligned and computes a paiwise alignment using a defined alignment method.
}
\details{
This function provides an interface between R and common pairwise alignment computation methods.

The current version of this function computes pairwise alignments based on the \code{\link[Biostrings]{pairwiseAlignment}}
function implemented in the \pkg{Biostrings} package.

The default pairwise alignment method is based on the \emph{Needleman-Wunsch Algorithm}.
}
\examples{
\dontrun{        
                                            
# Needleman-Wunsch Example:  

# in case Biostrings works properly
pairwise_aln( file     = system.file('seqs/aa_seqs.fasta', package = 'orthologr'),
              tool     = "NW", 
              get_aln  = TRUE, 
              seq_type = "protein")

                                                   
                                                                                                                                                         
}
}
\author{
Sarah Scharfenberg and Hajk-Georg Drost
}
