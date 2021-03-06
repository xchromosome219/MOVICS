% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/runDEA.R
\name{runDEA}
\alias{runDEA}
\title{Run differential expression analysis}
\usage{
runDEA(
  dea.method = c("deseq2", "edger", "limma"),
  expr = NULL,
  moic.res = NULL,
  prefix = NULL,
  overwt = FALSE,
  sort.p = TRUE,
  verbose = TRUE,
  res.path = getwd()
)
}
\arguments{
\item{dea.method}{A string value to indicate the algorithm for differential expression analysis. Allowed value contains c('deseq2', 'edger', 'limma'). The former two require RNA-Seq raw count data and the last one requires normalized expression data (FPKM or TPM without log2 transformation is recommended).}

\item{expr}{A matrix of expression data.}

\item{moic.res}{An object returned by `getMOIC()` with one specified algorithm or `get\%algorithm_name\%` or `getConsensusMOIC()` with a list of multiple algorithms.}

\item{prefix}{A string value to indicate the prefix of output file.}

\item{overwt}{A logic value to indicate if to overwrite existing results; FALSE by default.}

\item{sort.p}{A logic value to indicate if to sort adjusted p value for output table; TRUE by default.}

\item{verbose}{A logic value to indicate if to only output id, log2fc, pvalue, and padj; TRUE by default.}

\item{res.path}{A string value to indicate the path for saving the results.}
}
\value{
Several .txt files storing differential expression analysis results by specified algorithm
}
\description{
Using choosen algorithm to run differential expression analysis between two classes identified by multi-omics clustering process.
}
\details{
runDEA
}
\examples{
# There is no example and please refer to vignette.
}
\references{
Love, M.I., Huber, W., Anders, S. (2014) Moderated estimation of fold change and dispersion for RNA-seq data with DESeq2. Genome Biol, 15(12):550-558.

Robinson MD, McCarthy DJ and Smyth GK (2010). edgeR: a Bioconductor package for differential expression analysis of digital gene expression data. Bioinformatics 26(1):139-140.

McCarthy DJ, Chen Y, Smyth GK (2012). Differential expression analysis of multifactor RNA-Seq experiments with respect to biological variation. Nucleic Acids Res. 40(10):4288-4297.

Ritchie, ME, Phipson, B, Wu, D, Hu, Y, Law, CW, Shi, W, and Smyth, GK (2015). limma powers differential expression analyses for RNA-sequencing and microarray studies. Nucleic Acids Res, 43(7):e47.
}
