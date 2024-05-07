

#EXPERIMENT
.SILENT: run_experiment
run_experiment:
	sudo bash ./run_exp.sh

.SILENT: apptainer_build
apptainer_build:
	sudo apptainer build --force apptainer/gaig-pipeline.sif apptainer/gaig-pipeline.def;

.SILENT: apptainer_run
apptainer_run:
	sudo apptainer run --writable-tmpfs apptainer/gaig-pipeline.sif;
