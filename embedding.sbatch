#!/usr/bin/bash
#SBATCH --job-name=embedding
#SBATCH --output=/home/%u/out/embedding.%j.out
#SBATCH --error=/home/%u/err/embedding.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
pip3 install --upgrade gensim
pip3 install --user --upgrade certifi
pip3 install nltk
python3 -m nltk.downloader all
python3 embedding.py
