include ../../common/make.config

# C compiler
 CC = gcc
 CC_FLAGS = -g -O2 -Icommon

HIP_PLATFORM = hcc

ROCM_HOME = /opt/rocm/
LLVM_HOME := /home/min/a/cgusthin/git/llvm-project-rocm/build_cfm/
COMMAND_GEN_SCRIPT := $(LLVM_HOME)/../scripts/gen_compile_command.py



$(TESTNAME): common/common.o lud_kernel.hip.o lud.hip.o
	$(HIPLD) $(CC_FLAGS) $^ -o $@ -lm

common/common.o: common/common.c
	        $(CC) $(CC_FLAGS) -c $< -o $@

lud.hip.o: lud.hip.cu
	$(HIPCC)  $(HIPCC_FLAGS) -c $< -o $@

lud_kernel.hip.o: lud_kernel.hip.cu
	$(HIPCC)  $(HIPCC_FLAGS) -c $< -o $@

lud_kernel.hip.nocfm.o : lud_kernel.hip.cu
	mkdir -p tmp
	$(HIPCC) -### $(HIPCC_FLAGS) -c $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			  --ptx-opt-level=O0 --disable-pass > ./tmp/compile_command.sh
	. ./tmp/compile_command.sh

lud_kernel.hip.cfm.o : lud_kernel.hip.cu
	mkdir -p tmp
	$(HIPCC) -### $(HIPCC_FLAGS) -c $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
				--ptx-opt-level=O0 > ./tmp/compile_command_cfm.sh
	. ./tmp/compile_command_cfm.sh

lud_kernel.hip.bf.o : lud_kernel.hip.cu
	mkdir -p tmp
	$(HIPCC) -### $(HIPCC_FLAGS) -c $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
				--ptx-opt-level=O0 --cfmelder-options="-run-branch-fusion-only" > ./tmp/compile_command_bf.sh
	. ./tmp/compile_command_bf.sh

lud_kernel.hip.nocfm : common/common.o lud_kernel.hip.nocfm.o lud.hip.o 
	$(HIPLD) $(CC_FLAGS) $^ -o $@ -lm

lud_kernel.hip.cfm : common/common.o lud_kernel.hip.cfm.o lud.hip.o 
	$(HIPLD) $(CC_FLAGS) $^ -o $@ -lm

lud_kernel.hip.bf : common/common.o lud_kernel.hip.bf.o lud.hip.o
	$(HIPLD) $(CC_FLAGS) $^ -o $@ -lm


clean:
	rm -f *.o common/*.o lud *.linkinfo *.perf *.ll ./tmp/* lud_kernel.hip.nocfm lud_kernel.hip.cfm lud_kernel.hip.bf

rocprof_clean:
	rm -f *.db *.csv *.sysinfo.txt *.json ./tmp_metrics/*
