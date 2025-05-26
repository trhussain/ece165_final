#%Module
# $Header: /public/Templates/course/public/modulefiles/RCS/course,v 1.2 2010/09/06 15:17:22 root Exp $

#################################################################

#global env
#
#module-whatis "Customizes your environment for [module-info name]."
#
#proc ModulesHelp { } {
#        puts stderr "
#	Loading the [module-info name] module customizes your environment
#	for this course.
#        "
#}

## Standard includes
#  source	/public/Modules/lib/utils.tcl
#
## Prepend this module's name to ':' delimited envvar PREPPROMPT
#  source	/public/Modules/lib/prepprompt.tcl
#
## Adjusts PATH and MANPATH to include (optional) bin, man, and share/man
## directories found in the course umbrella, and sets envvar PREPLABEL.
## Defines UMBRELLA and PUBLIC environment vars.
#  source	/public/Modules/lib/umbrella_paths.tcl
#
## If storagedir exists, chdir there when module is loaded.
## On module unload, "chdir ."
#  source	/public/Modules/lib/cd_storagedir.tcl
#
## On module load, preserve current umask, then set new one.
## On unload, restore preserved umask.  "umask" must be set before
## umask.tcl is sourced.
##  set		umask 007
##  source 	$env(ACMS_MODULES)/lib/umask.tcl
#
## Interpret "broadcast.sh" file, and "cat" broadcast message, .
## Also runs "$PUBLIC/custom.sh" if it exists.
#  source 	/public/Modules/lib/broadcast.tcl

###############################################################################
 
# Additional course specific customization;  Following lines are
# commented-out, but here to serve as an example of addiitiona
# customization to course "modulefile".

# module	load		dot
# Display schedule updates...
# set		sched		$PUBLIC/schedule_update
# set		pager		/public/Modules/bin/pager
# if { [file exists $sched] } {
# 	system "$pager $sched"
# }
#
# set		home		$env(HOME)
# set-alias	ls		"ls -C --color"
# set-alias	ls		"ls -C --color"
# set-alias	f		finger
 alias	h		history
 alias	f		finger
 alias	h		history
# set-alias 	turnin		"$PUBLIC/turnin"
# set-alias	verify		"$PUBLIC/verify"
#

#The following line is used as a workaround to launch Virtuoso (Cadence Case#46610204)
setenv LD_PRELOAD /usr/lib64/libssl.so.1.0.2k:/usr/lib64/libcrypto.so.1.0.2k

module load cadence-ic618.83
setenv PDK      /software/ECE/Cadence-gpdk045/gpdk045_v_6_0
setenv CDSHOME /software/ECE/Cadence-IC618.83/
setenv PVSHOME /software/ECE/Cadence-PVS211
setenv QRC_HOME /software/ECE/Cadence-QUANTUS212
module load cadence-genus211
#module load cadence-innovus211
#module load cadence-xcelium2203.001
module load cadence-spectre181


# add PVS paths to $PATH
setenv PATH $PATH\:/software/ECE/Cadence-PVS211\:/software/ECE/Cadence-PVS211/tools/dfII/bin\:/software/ECE/Cadence-PVS211/tools/bin\:/software/ECE/Cadence-PVS211/bin\:/software/ECE/Cadence-PVS211/pvs/bin

# add QRC paths to $PATH
setenv PATH $PATH\:/software/ECE/Cadence-QUANTUS212\:/software/ECE/Cadence-QUANTUS212/tools/dfII/bin\:/software/ECE/Cadence-QUANTUS212/tools/bin\:/software/ECE/Cadence-QUANTUS212/bin


#module load cadence-incisiv152
#module load cadence-xcelium2009
#module load cadence-xcelium2109


#module load design-compiler-Q2019.12

#setenv MGC_HOME         /acsnfs3/software/calibre-2016.2/aoi_cal_2016.2_18.12
#set path = ($path $MGC_HOME/bin)

