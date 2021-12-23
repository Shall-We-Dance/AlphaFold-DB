# AlphaFold-DB

Fix Database problem for [AlphaFold](https://github.com/deepmind/alphafold).

While using AlphaFold to make prediction, the pipeline would be failed sometimes, since the databases used to generate the matrix are old, as they used in those papers.

For example: ["HHblits fail"](https://github.com/deepmind/alphafold/issues/257#issuecomment-986183590)

## What's the difference

1. Databases below are updated:

+ uniclust30
+ mgnify
+ pdb70

2. Changed `docker/run_docker.py` to fetch up the databases' update.


## How to use

1. Clone this repository

```

git clone https://github.com/Shall-We-Dance/AlphaFold-DB.git
```

2. If you are new to AlphaFold

```
git clone https://github.com/deepmind/alphafold.git
```

Then, copy the script into it.

```
cp -r -f <AlphaFold-DB_dir> <alphafold_dir>
```

Setup the alphafold following the manual provided by alphafold.
