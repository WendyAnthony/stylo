\name{dist.cosine}
\alias{dist.cosine}
\title{Cosine Distance}
\description{
Function for computing a cosine similarity of a matrix of values,
e.g. a table of word frequencies. Recent findings (Jannidis et al. 2015) 
show that this distance outperforms other nearest neighbor approaches 
in the domain of authorship attribution.}
\usage{
dist.cosine(x)
}
\arguments{
  \item{x}{a matrix or data table containing at least 2 rows and 2 cols,
  the samples (texts) to be compared in rows, the variables in columns.}
}
\value{
The function returns an object of the class \code{dist}, containing distances
between each pair of samples. To convert it to a square matrix instead,
use the generic function \code{as.dist}.
}
\references{
Jannidis, F., Pielstrom, S., Schoch, Ch. and Vitt, Th. (2015). Improving 
    Burrows' Delta: An empirical evaluation of text distance measures.
    In: "Digital Humanities 2015: Conference Abstracts" 
    \url{http://dh2015.org/abstracts}.
}

\author{Maciej Eder}

\seealso{
\code{\link{stylo}}, \code{\link{classify}}, \code{\link{dist}}, 
\code{\link{as.dist}}
}
\examples{
# first, preparing a table of word frequencies
        Iuvenalis_1 = c(3.939, 0.635, 1.143, 0.762, 0.423)
        Iuvenalis_2 = c(3.733, 0.822, 1.066, 0.933, 0.511)
        Tibullus_1  = c(2.835, 1.302, 0.804, 0.862, 0.881)
        Tibullus_2  = c(2.911, 0.436, 0.400, 0.946, 0.618)
        Tibullus_3  = c(1.893, 1.082, 0.991, 0.879, 1.487)
        dataset = rbind(Iuvenalis_1, Iuvenalis_2, Tibullus_1, Tibullus_2, 
                        Tibullus_3)
        colnames(dataset) = c("et", "non", "in", "est", "nec")

# the table of frequencies looks as follows
        print(dataset)
        
# then, applying a distance, in two flavors
        dist.cosine(dataset)
        as.matrix(dist.cosine(dataset))

}
%\keyword{distance measure}
