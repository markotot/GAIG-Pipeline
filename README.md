# GAIG-Pipeline

Project demonstrating the steps of an AI pipeline for machine learning projects.

## Pipeline elements
In this tutorial we will go through the process of creating an experiment pipeline for Machine Learning.
The pipeline will include the following steps:
-  Use [Hydra](https://hydra.cc/) configuration files to set the hyperparameters
-  Use [Pre-Commit](https://pre-commit.com/) with git to identify simple issues and enforce a specific coding standard
-  Use [Docker](https://www.docker.com/)/[Apptainer](https://apptainer.org/) to create a container including all of the required modules for the project
-  Use [Makefile](https://www.gnu.org/software/make/manual/make.html) to streamline the cloud server commands for logging to [QMUL Apocrita](https://docs.hpc.qmul.ac.uk/) server and submitting the jobs
-  Use [Neptune.ai](https://neptune.ai/) to automatically log the experiment metrics

## Setup

Before you run the project the following environment variables need to be setup:
```commandline
export APOCRITA_USER={APOCRITA_USERNAME}
export APOCRITA_PASSPHRASE={APOCRITA_PASSPHRASE}
export APOCRITA_USER_PASSOWRD={APOCRITA_PASSWORD}
export AP_PRIVATE_KEY_PATH={APOCRITA_PRIVATE_KEY_PATH}

export GITHUB_USER={GITHUB_USERNAME}
export GITHUB_TOKEN={GITHUB_TOKEN}

export NEPTUNE_API_TOKEN={NEPTUNE_APITOKEN}
```
After setting the environment variables we need to clone the repository inside of the Apocrita by running from the project directory:
```commandline
make apocrita_clone_repo
```
##Run
 In order to run the project we need to run
 ```commandline
make apocrita_build_and_run
```
This command will checkout the *GIT_BRANCH* define in the *Makefile* and pull the latest changes. Afterwards it will create the apptainer container, and submit the job.



