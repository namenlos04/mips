# Universal makefile 
# Author: Denis S.Badanin @ 150, NPCAP 2016
#
# USAGE: make PROJECT=a1 target
# or just setup a DEFAULT_PROJECT variable
#
# Warning: This file dependent gen_cdf.sh file
#


#-------------TREE DIRS----------------
DTOP      = ..
DTB       = $(DTOP)/testbench
DRTL      = $(DTOP)/rtl
DREP      = $(DTOP)/report
DQUAR     = $(DTOP)/quartus
DINCLUDES = $(DTOP)/include

#-------------QUARTUS SETUP------------
# Be ensure quartus dir exists in $PATH
QSH  = quartus_sh
QPGM = quartus_pgm


#-------------PROJECT SETUP------------

DEFAULT_PROJECT = mgz

PROJ = ${PROJECT}
ifeq ($(PROJ),) 
	#default project
	PROJ = $(DEFAULT_PROJECT)
else	
endif
TCL  = $(PROJ).tcl
SRCS = $(PROJ).txt
LOG  = $(DREP)/$(PROJ).log
ELAB = elab.v.tmp
DEFS = CLK=50
TOP  = $(shell head -n 1 $(PROJ).txt | sed -E "s/.*\///" | sed -E "s/\..*//")



#------QUARTUS SETUP----
#CABLE = "USB-Blaster variant[1-9]"
CABLE = $(shell cat usbs.tmp)
CDF   = $(DQUAR)/$(PROJ).cdf

DESIGN = $(PROJ).dsn
#dump.vcd is soo static :( until changed in _tb.v
WAVE   = dump.vcd

#-----------------ICARUS VERILOG TARGETS---------------
icarus_all: icarus_run icarus_view

icarus_run: icarus_check
	vvp -l $(LOG) $(DESIGN)

icarus_compile: check
	#TODO: add precompile for defines
	iverilog -E -c $(SRCS) -o $(ELAB) -D $(DEFS) -I $(DINCLUDES)
	iverilog -o $(DESIGN) $(ELAB)
	rm $(ELAB)	
	
icarus_view:
	gtkwave $(WAVE)

#-------------------CADENCE DSC TARGETS------------------
ius_run: check
	irun -64bit -F $(SRCS) -access +rwc -logfile $(LOG) -incdir $(DINCLUDES) -nokey -top $(TOP)
	
ius_gui: check
	irun -64bit -F $(SRCS) -access +rwc -logfile $(LOG) -incdir $(DINCLUDES) -gui -top $(TOP) -nokey -errormax 5 -nowarn CUVFEP -coverage all -covdesign puma_tb -covoverwrite
	
rc_gui: check
	rc -gui -f $(TCL)

#------------------QUARTUS TARGETS-------------------	

quartus_all: quartus_compile quartus_flash
quartus_compile: check
	$(QSH) --flow compile $(DQUAR)/$(PROJ)
quartus_flash:
	jtagconfig | grep "USB" | sed -E "s/1\)\s//" > usbs.tmp
	$(QPGM) -m jtag -c "$(CABLE)" -o "p;$(DQUAR)/$(PROJ).sof"
	rm -f usbs.tmp

#------------------ModelSim Targets------------------
ms_all: ms_compile ms_run

ms_all_gui: ms_compile ms_run_gui

ms_compile:
	#setup work dir if not setted
	if [[ ! -e work ]]; then 	vlib work; fi
	#compile
	vlog -incr -f $(SRCS) +incdir+$(DINCLUDES)
	if [[ ! -e $(PROJ).do ]]; then echo "run -all" > $(PROJ).do; fi

ms_run:
	#echo $(TOP)
	vsim -c work.$(TOP) -do $(PROJ).do

ms_run_gui:
	vsim -gui work.$(TOP) -do $(PROJ).do

#------------------CHECK TARGET------------------
  
check:
	echo "*******PROJECT IS : $(PROJ)*******"

#--------------EVERYONE CLEANUP TARGETS--------------	
clean:
# backup files
	rm -rf $(DTOP)/*.bak *~ *.tmp
  
#reports
	rm -rf $(DREP)/*.log
	
# iverilog design files
	rm -rf *.dsn *.vcd a.out *.tmp
	
# quartus dir
	rm -rf $(QDIR)/db $(QDIR)/simulation $(QDIR)/incremental_db
	
	rm -rf $(QDIR)/*.done
	rm -rf $(QDIR)/*.rpt
	rm -rf $(QDIR)/*.summary
	rm -rf $(QDIR)/*.smsg
	rm -rf $(QDIR)/*.pin
	rm -rf $(QDIR)/*.bak

	rm -rf $(QDIR)/*.cdf
	rm -rf $(QDIR)/*.jdi

	rm -rf $(QDIR)/*.qpf
	rm -rf $(QDIR)/*.sof


