
ifeq ($(XSIM), 1)
  export SIMULATOR = xsim
  include Makefile.xsim
else
  export SIMULATOR = verilator
  include Makefile.verilator
endif

make_sim_dir:
	mkdir -p $(SIM_ROOT)

package:
	tar czvf package.$(SIMULATOR).tar.gz -C $(CL_ROOT) ./design/code ./design/signals.h ./verif/scripts/design.f $(EXTRA_PACKAGE_FILES)
