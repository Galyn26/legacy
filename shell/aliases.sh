#!/bin/bash

# --- Laboratory Lifecycle Operations ---
alias start-lab='VBoxManage startvm "ArchLinux" --type headless && VBoxManage startvm "Debian" --type headless'
alias stop-lab='VBoxManage controlvm "ArchLinux" acpipowerbutton && VBoxManage controlvm "Debian" acpipowerbutton'

# --- API & Gateway Backends ---
alias start-odysseus='python3 -m uvicorn app:app --host 0.0.0.0 --port 7000'

# ==============================================================================
# SECURE AI NETWORKING TUNNELS
# ==============================================================================

# Establish secure encrypted bridge from iMac Cockpit to Mint Odysseus AI Core
alias tunnel-odysseus="ssh -N -L 7777:127.0.0.1:7000 galyn@100.74.100.15"