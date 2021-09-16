# srsRAN

[srsRAN](https://www.srslte.com) is the open source software LTE radio suite developed by Software Radio System (SRS).
It original README is at [here](https://github.com/GTKernel/srslte/blob/master/OFFICIAL_README.md). 
This README shows you the customized implementation and deployment for our internal usecases with USRPs.

## How to start 

This repo forks the official github [repo](https://github.com/srsran/srsran), and cover all the source code, 
you will not need to download any other setups online.


### Build and Run

### Build the docker images
Build the image by the Dockerfile under root directory. UE and eNB function will use the same image.

### Run container with different entry command and configuration file

### Run container in K8s

Please take reference of `srsenb.yml` at the repo of [NextEPC](https://github.com/GTkernel/nextepc/blob/master/support/docker/k8s/).

## Support

Welcome to update and discuss the usecases througth issue tickets and pull requests.
Or, for any other question, please contact to [Carol Hsu](mailto:nosus_hsu@gatech.edu).

