# Dex-Benchmark

The Dexamethasone Benchmarking Resource (Dex-Benchmark) is a community resource for benchmarking gene expression analysis tools. It provides datasets and code to evaluate the quality of methods for processing transcriptomics data. The resource can be accessed at https://maayanlab.github.io/dex-benchmark/. 

For any questions or comments, please submit a Github issue. 

### Benchmarking_L1000_Consensus_Methods
This folder contains the Jupyter Notebook and HTML page for benchmarking consensus signature generation methods (mean, median, weighted average) for L1000 signatures. Similarity matrices containing the Pearson correlation coefficients between consensus signatures corresponding to each named drug and CRISPR knockout target in the L1000 dataset are also provided, and can be used in the consensus benchmarking notebook. 

### Benchmarking_L1000_DEG_Methods
This folder contains the Jupyter Notebooks and HTML pages for benchmarking differential gene expression methods (characteristic direction, limma, limma-voom, logFC, Wilcoxon rank-sum test, Welch's t-test) applied to L1000 dexamethasone perturbation and NR0B1/NR1I2 CRISPR knockout data.

### Benchmarking_RNA-seq_DEG_Methods
This folder contains the Jupyter Notebook and HTML page for benchmarking differential gene expression methods (characteristic direction, limma-voom, pyDESeq2, logFC, Welch's t-test) applied to dexamethasone perturbation RNA-seq data.

### ChIP-seq_data
This folder contains the code used to transpose the ChIP-seq data from horizontal, GMT-like format to vertical columns in the format from the google sheet linked on the website.

### Microarray_data
This folder contains dexamethasone perturbation signature data from CREEDS and GEN3VA, as well as code and files for computing signatures for RNA-seq studies from GEO

### L1000_data
This folder contains metadata and links to L1000 datasets for the following dexamethasone-related perturbations, as well as the code to download and extract the relevant profiles. These data can be used in the L1000 benchmarking notebooks. 
- Dexamethasone treatment
- NR3C1 shRNA knockdown
- NR3C1 overexpression
- NR0B1 CRISPR knockout
- NR0B1 overexpression
- NR0B1 shRNA knockdown
- NR1I2 CRISPR knockout
- NR1I2 overexpression
- Controls

### RNAseq_data
This folder contains metadata and gene count matrices for example dexamethasone perturbation RNA-seq datasets downloaded from GEO and pre-processed into a standard format, which can be used in the RNA-seq benchmarking notebooks. Additionally, we also included a set of pre-computed signatures from various dexamethasone RNA-seq datasets from GEO, and the code and downloaded files used to compute the signatures. 

### website
This folder contains the HTML files and figures displayed on the website. 
