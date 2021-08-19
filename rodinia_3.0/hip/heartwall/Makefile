# include ../../common/make.config

# # link objects(binaries) together
# $(TESTNAME): main.o ./AVI/avilib.o ./AVI/avimod.o 
# 	$(HIPLD) main.o ./AVI/avilib.o ./AVI/avimod.o -lm -o heartwall

# %.o: %.[ch]
# 	$(HIPCC) $(HIPCC_FLAGS) $< -c
	
# main.o: main.cu kernel.cu define.c 
# 	$(HIPCC) $(HIPCC_FLAGS) -DOUTPUT $(KERNEL_DIM) main.cu -I./AVI -c

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# # delete all object files
# clean: 
# 	rm -f *.o AVI/*.o heartwall *.linkinfo



ROCM_HOME := /opt/rocm/
LLVM_HOME := /home/min/a/cgusthin/git/llvm-project-rocm/build_cfm
COMMAND_GEN_SCRIPT := $(LLVM_HOME)/../scripts/gen_compile_command.py
METRICS_LOC := /home/min/a/cgusthin/git/divergence-microbench/scripts
# clang
HIP_CC = $(ROCM_HOME)/bin/hipcc
HIP_FLAGS = -O3 

SRC := main.cu kernel.cu define.c 
HIP_EXECUTABLE := heartwall.hipcc
CFM_EXECUTABLE := heartwall.cfm

all : $(HIP_EXECUTABLE) $(CFM_EXECUTABLE)

# $(CFM_EXECUTABLE) : $(SRC)
# 	mkdir -p tmp
# 	$(HIP_CC) -### $(HIP_FLAGS)  $^ -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
# 				--ptx-opt-level=O0  > ./tmp/compile_command_cfm.sh
# 	. ./tmp/compile_command_cfm.sh




$(HIP_EXECUTABLE).o : $(SRC)
	mkdir -p tmp
	$(HIP_CC) -### $(HIP_FLAGS)  main.cu -o $@ -I./AVI/ -c 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
				--ptx-opt-level=O0 --disable-pass > ./tmp/compile_command.sh
	. ./tmp/compile_command.sh

$(HIP_EXECUTABLE) : $(HIP_EXECUTABLE).o ./AVI/avilib.o ./AVI/avimod.o 
	$(HIP_CC) $^ -lm -o $@


$(CFM_EXECUTABLE).o : $(SRC)
	mkdir -p tmp
	$(HIP_CC) -### $(HIP_FLAGS)  main.cu -o $@ -I./AVI/ -c 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
				--ptx-opt-level=O0  > ./tmp/compile_command_cfm.sh
	. ./tmp/compile_command_cfm.sh

$(CFM_EXECUTABLE) : $(CFM_EXECUTABLE).o ./AVI/avilib.o ./AVI/avimod.o 
	$(HIP_CC) $^ -lm -o $@

clean :
	rm -rf ./tmp $(CFM_EXECUTABLE) $(HIP_EXECUTABLE) *.o ./AVI/*.o 

rocprof_clean :
	rm -f metrics.* ./tmp_metrics/*
