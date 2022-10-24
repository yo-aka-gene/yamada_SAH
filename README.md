# yamada_SAH
SAH project by Yamada et al.

## User Guide
### Setting the Virtual Env
1. fork this repository and clone it to your local environment
2. install Docker into your local environment (if already satisfied, skip this)
3. run `make init` cmd in the cloned directory. (**WARNING**: if you rather not use the make cmd, you need to edit `docker-compose.yml` to specify your user id)
4. jupyter notebook is succesfully launched.

### Data Avalilability of Our Primary Immunostaining Data
1. run `make histology-data` cmd to download the data, and the rawdata file will be automatically formatted.
2. To unzip the file you need a pwd. Check [here](https://docs.google.com/document/d/1mWYTNaSMP3A-MsR-W2q6ocpkTeiid-B0yP-AFFaHDxE/edit?usp=sharing) for details.

### Data Availability of Secondary RNA-seq Data
1. if you used `make init` cmd above, `GSE79416` has been automatically downloaded; otherwise, run `make gse79416` to download respective data.
2. Data will be formatted and automatically undergo logaristic transformation (log2(RKPM+1)) by `make gse79416` cmd. A label matrix is also generated.

---
## Copyright of the datasets
### GSE79416
- Altered expression profile of long non-coding RNA and mRNA in mice cortex around bleeding areas after subarachnoid hemorrhage
- [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416)
- Contributors: [Jiang Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Jiang%20Y[Author]), [Sun X](https://www.ncbi.nlm.nih.gov/pubmed/?term=Sun%20X[Author]), [Wu Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Wu%20Y[Author]), [Peng J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Peng%20J[Author]), [Zhong J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Zhong%20J[Author])
- Citation: Peng J, Wu Y, Tian X, Pang J et al. High-Throughput Sequencing and Co-Expression Network Analysis of lncRNAs and mRNAs in Early Brain Injury Following Experimental Subarachnoid Haemorrhage. Sci Rep 2017 Apr 18;7:46577. PMID: [28417961](https://www.ncbi.nlm.nih.gov/pubmed/28417961)
- Contact name: Jianhua Peng
- E-mail: [544029930@qq.com](mailto:544029930@qq.com)
