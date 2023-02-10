#!/bin/bash
#SBATCH -J Pytorch-1.10
#SBATCH -p ty_zhiyuan
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --gres=dcu:1
#SBATCH -o log/%j.out
#SBATCH -e log/%j.err
module switch compiler/dtk/22.10
conda activate torch-python37
#python examples/gpt2_title_generation/train.py
python train_xl_bmtrain.py
