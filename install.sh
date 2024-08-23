#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to run a command and print colorful messages
run_step() {
    local step_message=$1
    local command=$2

    echo -e "${YELLOW}${step_message}...${NC}"
    eval $command

    if [[ $? -eq 0 ]]; then
        echo -e "${GREEN}${step_message} completed successfully!${NC}"
    else
        echo -e "${RED}${step_message} failed.${NC}"
        exit 1
    fi
}

run_step "Step 1: Updating package list" "sudo apt-get update"

run_step "Step 2: Installing stow" "sudo apt-get install -y stow"

run_step "Step 3: Running stow" "stow --no-folding -t $HOME dotfiles"
