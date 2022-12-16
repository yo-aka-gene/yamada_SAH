# yamada_SAH
[![DOI](https://img.shields.io/badge/DOI-10.1186/s41232.022.00236.4-blue.svg?longCache=true)](https://doi.org/10.1186/s41232-022-00236-4)
[![PMID](https://img.shields.io/badge/PMID-unknown-orange.svg?longCache=true)]()

SAH project by Yamada et al.

## User Guide
### Setting the Virtual Env
1. fork this repository and clone it to your local environment
2. install Docker into your local environment (if already satisfied, skip this)
3. run `make init` cmd in the cloned directory. (**WARNING**: if you rather not use the make cmd, you need to edit `docker-compose.yml` to specify your user id)
4. jupyter notebook is succesfully launched (password: `jupyter`).

### Running Analysis Codes
1. run analysis code in jupyterlab environment (codes are available in `code/analysis.ipynb`).
2. figures will be exported in `out`

---
## Data Availability of Secondary RNA-seq Data (acquired by a third party)
1. if you used `make init` cmd to set-up virtual env, `GSE79416` has been automatically downloaded; otherwise, run `make gse79416` to download respective data after the docker container has been started (the deposited file is saved in `data/gse79416` dir).
2. Data will be formatted and automatically undergo logaristic transformation (log2(RKPM+1)) by `make gse79416` cmd. A label matrix is also generated (check `data/gse79416.pkl` and `data/gse79416_label.pkl`).
3. For detailed information on the dataset, check the original article.

---
## Copyright of the datasets
### GSE79416
- Altered expression profile of long non-coding RNA and mRNA in mice cortex around bleeding areas after subarachnoid hemorrhage
- [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416)
- Contributors: [Jiang Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Jiang%20Y[Author]), [Sun X](https://www.ncbi.nlm.nih.gov/pubmed/?term=Sun%20X[Author]), [Wu Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Wu%20Y[Author]), [Peng J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Peng%20J[Author]), [Zhong J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Zhong%20J[Author])
- Citation: Peng J, Wu Y, Tian X, Pang J et al. High-Throughput Sequencing and Co-Expression Network Analysis of lncRNAs and mRNAs in Early Brain Injury Following Experimental Subarachnoid Haemorrhage. Sci Rep 2017 Apr 18;7:46577. PMID: [28417961](https://www.ncbi.nlm.nih.gov/pubmed/28417961)
- Contact name: Jianhua Peng
- E-mail: [544029930@qq.com](mailto:544029930@qq.com)
