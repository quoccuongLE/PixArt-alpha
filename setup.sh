#!/bin/bash
VENV_DIR=${1:-".venv/pixart"}
if [ -f lock.conda.yaml ]; then
    conda env create -f lock.conda.yaml --prefix $VENV_DIR
else
    conda env create -f conda.yaml --prefix $VENV_DIR
    conda env export -p $VENV_DIR > lock.conda.yaml
fi

# To get started you may need to restart your current shell.
# This would reload your PATH environment variable to include
# Cargo's bin directory ($HOME/.cargo/bin).

# To configure your current shell, you need to source
# the corresponding env file under $HOME/.cargo.

# This is usually done by running one of the following (note the leading DOT):
# . "$HOME/.cargo/env"            # For sh/bash/zsh/ash/dash/pdksh
# source "$HOME/.cargo/env.fish"  # For fish
# source "$HOME/.cargo/env.nu"    # For nushell
# conda install conda-forge::transformers conda-forge::diffusers conda-forge::accelerate conda-forge::sentencepiece conda-forge::opencv \
#     conda-forge::timm \
#     conda-forge::mmcv-full \
#     conda-forge::tensorboard \
#     conda-forge::gradio

# conda install conda-forge::transformers conda-forge::diffusers conda-forge::accelerate conda-forge::sentencepiece conda-forge::timm
# conda install conda-forge::tensorboard conda-forge::gradio

# # conda-forge::opencv conda-forge::mmcv=1.7.0

# python -m pip install ftfy~=6.1.1 beautifulsoup4~=4.11.1 einops mmcv==1.7.0 opencv-python