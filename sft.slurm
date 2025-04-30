#!/usr/bin/bash
# SBATCH --job-name=sft-wei
# SBATCH --partition=<partition-id>
# SBATCH -N 1
# SBATCH --gres=gpu:1
# SBATCH --output=/training_output/slurm_jobs/sft-%j.out
# SBATCH --error=/training_output/slurm_jobs/sft-%j.err

module load slurm cuda12.4

conda activate your-venv

export FORCE_TORCHRUN=1
export CUDA_VISIBLE_DEVICES=0

cd /path_to_LLaMA-Factory
llamafactory-cli train examples/train_full/qwen2.5_full_sft.yaml > terminal.log