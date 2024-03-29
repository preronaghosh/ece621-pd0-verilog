#!/bin/bash 
echo "===== Computer Architecture Course Environment Setup ====="
echo "Important: this script should be used as \`source env.sh\` and should only be used in bash"
export PROJECT_ROOT=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
echo -e "Project Root (\$PROJECT_ROOT):\t\t$PROJECT_ROOT"
export VERILATOR_VERSION=$(verilator --version 2>/dev/null | head -n 1)
echo -e "verilator Version (\$VERILATOR_VERSION):\t" $VERILATOR_VERSION
if [[ $VERILATOR_VERSION != *"4.210"* ]]; then
  echo -e "\033[0;31mERROR: verilator must be version 4.210\033[0m"
fi
export VIVADO_VERSION=$(vivado -version 2>/dev/null | head -n 1)
echo -e "Vivado Version (\$VIVADO_VERSION): \t" $VIVADO_VERSION
echo "===== Computer Architecture Course Environment Done  ====="
