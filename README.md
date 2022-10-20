# yamada_SAH
SAH project by Yamada et al.

## User Guide
### Setting the Virtual Env
1. fork this repository and clone it to your local environment
2. install Docker into your local environment (if already satisfied, skip this)
3. run `make init` cmd in the cloned directory. (**WARNING**: if you rather not use the make cmd, you need to edit `docker-compose.yml` to specify your user id)
4. jupyter notebook is succesfully launched.

### Data Avalilability of Our Primary Data
1. if you used `make init` cmd above, zip file has been automatically downloaded.
2. run `make fmt-data` cmd to unzip the data, and the rawdata file will be automatically formatted.
3. To unzip the file you need a pwd. Check [here](https://docs.google.com/document/d/1mWYTNaSMP3A-MsR-W2q6ocpkTeiid-B0yP-AFFaHDxE/edit?usp=sharing) for details.

### Data Availability of Other Secondary Data
1. if you used `make init` cmd above, both `GSE79416` and `GSE167110` have been automatically downloaded; otherwise, run `make gse79416` or `make gse167110` to download respective data.

---
## Copyright of the datasets
### GSE79416
- Altered expression profile of long non-coding RNA and mRNA in mice cortex around bleeding areas after subarachnoid hemorrhage
- [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE79416)
- Contributors: [Jiang Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Jiang%20Y[Author]), [Sun X](https://www.ncbi.nlm.nih.gov/pubmed/?term=Sun%20X[Author]), [Wu Y](https://www.ncbi.nlm.nih.gov/pubmed/?term=Wu%20Y[Author]), [Peng J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Peng%20J[Author]), [Zhong J](https://www.ncbi.nlm.nih.gov/pubmed/?term=Zhong%20J[Author])
- Citation: Peng J, Wu Y, Tian X, Pang J et al. High-Throughput Sequencing and Co-Expression Network Analysis of lncRNAs and mRNAs in Early Brain Injury Following Experimental Subarachnoid Haemorrhage. Sci Rep 2017 Apr 18;7:46577. PMID: [28417961](https://www.ncbi.nlm.nih.gov/pubmed/28417961)
- Contact name: Jianhua Peng
- E-mail: [544029930@qq.com](mailto:544029930@qq.com)

### GSE167110
- Hippocampal transcriptome changes after subarachnoid hemorrhage in mice
- [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE167110](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE167110)
- Contributors: [Regnier-Golanov AS](https://www.ncbi.nlm.nih.gov/pubmed/?term=Regnier-Golanov%20AS[Author]), [Dündar F](https://www.ncbi.nlm.nih.gov/pubmed/?term=D%C3%BCndar%20F[Author]), [Zumbo P](https://www.ncbi.nlm.nih.gov/pubmed/?term=Zumbo%20P[Author]), [Betel D](https://www.ncbi.nlm.nih.gov/pubmed/?term=Betel%20D[Author]), [Hernandez MS](https://www.ncbi.nlm.nih.gov/pubmed/?term=Hernandez%20MS[Author]), [Peterson LE](https://www.ncbi.nlm.nih.gov/pubmed/?term=Peterson%20LE[Author]), [Lo EH](https://www.ncbi.nlm.nih.gov/pubmed/?term=Lo%20EH[Author]), [Golanov EV](https://www.ncbi.nlm.nih.gov/pubmed/?term=Golanov%20EV[Author]), [Britz GW](https://www.ncbi.nlm.nih.gov/pubmed/?term=Britz%20GW[Author])
- Citation: Regnier-Golanov AS, Dündar F, Zumbo P, Betel D et al. Hippocampal Transcriptome Changes After Subarachnoid Hemorrhage in Mice. Front Neurol 2021;12:691631. PMID: [34354664](https://www.ncbi.nlm.nih.gov/pubmed/34354664)
- Contact name: Angelique Regnier-Golanov
- E-mail: [aregnier-golanov@houstonmethodist.org](mailto:aregnier-golanov@houstonmethodist.org)
