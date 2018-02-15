# TiMEx

The TiMEx R package is the implementation of a generative probabilistic graphical model for the *de novo* identification of patterns of various degrees of mutual exclusivity across genetic alterations, which can indicate pathways involved in cancer progression. For more information on the underlying model or on biological applications, see the publication introducing TiMEx: 

*Constantinescu, Simona, et al. "TiMEx: a waiting time model for mutually exclusive cancer alterations." Bioinformatics 32.7 (2015): 968-975*.

## Main idea of the model
We regard tumorigenesis as a dynamic process, and base our model on the temporal interplay between the waiting times to alterations, characteristic for every gene and alteration type (mutation or copy number alteration), and the observation time. Under the assumption of rarity of events over short time intervals, TiMEx models the alteration process for each gene as a Poisson process. The waiting times are therefore modeled as exponentially distributed variables with specific rates, which correspond to the rates of evolution for each alteration. In our modeling framework, the temporal dynamics of each alteration process progresses from the onset of cancer, corresponding to the first alteration related to the growth of a malignant tumor, until the observation time, corresponding to the time of tumor biopsy. The observation time is regarded as a system failure time, and is exponentially distributed with an unknown rate. 

## Computational procedure
The computational procedure implemented in the TiMEx R package is aimed to efficiently identify mutually exclusive groups of alterations of any size in large cancer datasets. The procedure includes three steps:

1. Testing all pairs of alterations and identifying mutually exclusive pairs
2. Finding cliques in the graph defined by the previously identified pairwise interactions
3. Testing all candidate groups identified in step 2, and ranking them by their significance or intensity of mutual exclusivity.

## What is unique about TiMEx
TiMEx is the first method that describes mutual exclusivity as a consequence of a dynamic process in time. Unlike previous *de novo* approaches, TiMEx infers functional relations among genes based on an underlying temporal representation of the process of gene alteration in tumorigenesis. 

Importantly, TiMEx infers the mutual exclusivity intensity of a group as a continuous measure, which can be interpreted as a probability. This feature is biologically justified, since the small, but observable, increase in tumor fitness due to multiple alterations in a group of functionally related genes supports the hypothesis that mutual exclusivity occurs at various degrees, as opposed to a binary classification. 

Unlike most other approaches, TiMEx does not explicitly impose frequency constraints, and detects both high frequent and very low frequent alterations, solely based on the temporal relations between them. It identifies all mutually exclusive gene groups of various, not pre-defined sizes, and performs highly efficiently on large datasets.

## Intallation
TiMEx has been tested on Mac and Linux. Installing TiMEx requires the R package ```devtools```.

It can be easily installed in R as ```devtools::install_github('csimona/TiMEx')``` 

TiMEx depends on the R packages ```RBGL```, ```graph``` and ```gtools```, which will be installed automatically, so no extra input should be required from the user. 
