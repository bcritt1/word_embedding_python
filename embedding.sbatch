#!/bin/bash
#SBATCH --job-name=embedding
#SBATCH --output=/home/%u/out/embedding.%j.out
#SBATCH --error=/home/%u/err/embedding.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
module load python/3.9.0
pip3 install --user --upgrade certifi
pip3 install --user nltk
pip3 install --user gensim
python3 -m nltk.downloader all
python3 embedding.py
