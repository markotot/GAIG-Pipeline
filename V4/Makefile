#APOCRITA
AP_PRIVATE_KEY_PATH = ~/Apocrita/apocrita.ssh
APOCRITA_USER = acw549


#EXPERIMENT
.SILENT: run_experiment
run_experiment:
	sudo bash ./run_exp.sh

#.SILENT: apocrita_login
#apocrita_login:
	#sudo ssh -i ~/Apocrita/apocrita.ssh acw549@login.hpc.qmul.ac.uk


.SILENT: apocrita_login
apocrita_login:
	sudo expect ./apocrita_login.sh \
	${APOCRITA_USER} ${APOCRITA_PASSPHRASE} ${APOCRITA_USER_PASSWORD} ${AP_PRIVATE_KEY_PATH}

.SILENT: apocrita_run
apocrita_run:
	sudo expect ./apocrita_run.sh \
	${APOCRITA_USER} ${APOCRITA_PASSPHRASE} ${APOCRITA_USER_PASSWORD} ${AP_PRIVATE_KEY_PATH}



















#.SILENT: apocrita_login
#apocrita_login:
#	sudo ssh -i ~/Apocrita/apocrita.ssh acw549@login.hpc.qmul.ac.uk

#.SILENT: apocrita_login
#apocrita_login:
#	sudo expect ./apocrita_login.sh \
#	${APOCRITA_USER} ${APOCRITA_PASSPHRASE} ${APOCRITA_USER_PASSWORD} ${AP_PRIVATE_KEY_PATH}
