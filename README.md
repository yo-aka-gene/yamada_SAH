# yamada_SAH
SAH project by Yamada et al.

## User Guide
### Setting the Virtual Env
1. fork this repository and clone it to your local environment
2. install Docker into your local environment (if already satisfied, skip this)
3. run `make init` cmd in the cloned directory. (**WARNING** if you rather not use the make cmd, you need to edit `docker-compose.yml` to specify your user id)
4. jupyter notebook is succesfully launched.

### Data Avalilability
1. if you use `make init` cmd above, zip file is automatically downloaded.
2. run `make fmt-data` cmd to unzip the data, and the rawdata file will be automatically formatted.
2. To unzip the file you need a pwd. Check [here](https://docs.google.com/document/d/1mWYTNaSMP3A-MsR-W2q6ocpkTeiid-B0yP-AFFaHDxE/edit?usp=sharing) for details.
