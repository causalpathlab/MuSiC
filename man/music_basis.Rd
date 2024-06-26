% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/construct.R
\name{music_basis}
\alias{music_basis}
\title{Prepare Design matrix and Cross-subject Variance for MuSiC Deconvolution}
\usage{
music_basis(
  x,
  non.zero = TRUE,
  markers = NULL,
  clusters,
  samples,
  select.ct = NULL,
  cell_size = NULL,
  ct.cov = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{x}{SingleCellExperiment, single cell dataset}

\item{non.zero}{logical, default as TRUE. If true, remove all gene with zero expression.}

\item{markers}{vector or list of gene names. Default as NULL. If NULL, then use all genes provided.}

\item{clusters}{character, the colData used as clusters;}

\item{samples}{character,the colData used as samples;}

\item{select.ct}{vector of cell types. Default as NULL. If NULL, then use all cell types provided.}

\item{cell_size}{data.frame of cell sizes. 1st column contains the names of cell types, 2nd column has the cell sizes per cell type. Default as NULL. If NULL, then estimate cell size from data.}

\item{ct.cov}{logical. If TRUE, use the covariance across cell types.}

\item{verbose}{logical, default as TRUE.}
}
\value{
a list of
 \itemize{
    \item {gene by cell type matrix of Design matrix;}
    \item {subject by celltype matrix of Library size;}
    \item {vector of average library size for each cell type;}
    \item {gene by celltype matrix of average relative abundance;}
    \item {gene by celltype matrix of cross-subject variation.}
    }
}
\description{
This function is used for generating cell type specific cross-subject mean and variance for each gene. Cell type specific library size is also calcualted.
}
