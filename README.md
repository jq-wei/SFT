This is a collection of some useful files and notes for my SFT tasks.  

Base framework is LLamaFactory. This setup has offloaded optimizer, activation checkpoint ('number_checkpoints') and zero3 deepspeed.



# Usage of the framework for sft

`nohup llamafactory-cli train examples/train_full/qwen2.5_full_sft_stream.yaml > terminal.log 2>&1 &`

# Some useful slurm cmd (slurm: Simple Linux Utility for Resource Management)

1. `sbatch file.slurm` to submit a job task
2. `squeue` to visulize the job queue
3. `squeue -j 28340` to see the status of the specific job. 
4. `sacct -j 28340` to see the history of the specific job.

# Stream mode

At streaming mode, the num_examples and num_epochs are meaningless. 

num_epochs = sys.max 

see [issue](https://github.com/hiyouga/LLaMA-Factory/issues/618) and [transformers.trainer](https://github.com/huggingface/transformers/blob/main/src/transformers/trainer.py#L5341)