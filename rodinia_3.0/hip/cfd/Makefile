# include ../../common/make.config

# # C compiler
# CC = gcc
# CC_FLAGS = -g

# $(TESTNAME): euler3d.o
# 	$(HIPLD) $(CC_FLAGS) euler3d.o -o euler3d -lm

# %.o: %.[ch]
# 	$(CC) $(CC_FLAGS) $< -c

# euler3d.o: euler3d.cu
# 	$(HIPCC) $(HIPCC_FLAGS) -c euler3d.cu

# clean:
# 	rm -f *.o *~ euler3d density density_energy momentum isa.txt *.out *.diff *.perf


ROCM_HOME = /opt/rocm/
LLVM_HOME := /home/min/a/cgusthin/git/llvm-project-rocm/build_cfm
COMMAND_GEN_SCRIPT := $(LLVM_HOME)/../scripts/gen_compile_command.py


# clang
HIPCC := $(ROCM_HOME)/bin/hipcc
HIPCC_FLAGS := -O2 -c


SRC = euler3d.cu
HIP_EXECUTABLE = euler3d.hip
CFM_EXECUTABLE = euler3d.cfm
# BF_EXECUTABLE = bitonic_sort.bf

all : $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE)

# $(CFM_EXECUTABLE) : $(SRC)
# 	mkdir -p tmp
# 	$(HIPCC) -### $(HIPCC_FLAGS)  $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
# 			 --ptx-opt-level=O0 --cfmelder-options="--cf-merging-similarity-threshold=0.5" > ./tmp/compile_command_cfm.sh
# 	. ./tmp/compile_command_cfm.sh

$(HIP_EXECUTABLE) : $(HIP_EXECUTABLE).o
	/opt/rocm/hip/bin/hipcc -g $^ -o $@ -lm

$(HIP_EXECUTABLE).o : $(SRC)
	mkdir -p tmp
	$(HIPCC) -### $(HIPCC_FLAGS)  $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			 --ptx-opt-level=O0 --disable-pass > ./tmp/compile_command.sh
	. ./tmp/compile_command.sh

$(CFM_EXECUTABLE) : $(CFM_EXECUTABLE).o
	/opt/rocm/hip/bin/hipcc -g $^ -o $@ -lm

$(CFM_EXECUTABLE).o : $(SRC)
	mkdir -p tmp
	$(HIPCC) -### $(HIPCC_FLAGS)  $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			 --ptx-opt-level=O0  > ./tmp/compile_command_cfm.sh
	. ./tmp/compile_command_cfm.sh

# $(BF_EXECUTABLE) : $(SRC)
# 	mkdir -p tmp
# 	$(HIPCC) -### $(HIPCC_FLAGS)  $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
# 			 --ptx-opt-level=O0 --cfmelder-options="--run-branch-fusion-only" >  ./tmp/compile_command_bf.sh
# 	. ./tmp/compile_command_bf.sh


clean :
	rm -rf $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE) ./tmp *.o

rocprof_clean:
	rm -f *.db *.csv *.sysinfo.txt *.json ./tmp_metrics/*

