# AlphaFold-DB

To use this version for free, visit [AlphaFold@LNSGroup](http://neuralmachine.cc:8080)

**Update 03/18/23: To Match AlphaFold v2.3.1**

---

Fix Database problem for [AlphaFold](https://github.com/deepmind/alphafold).

While using AlphaFold to make prediction, the pipeline would be failed sometimes, since the databases used to generate the matrix are old, as they used in those papers.

For example: ["HHblits fail"](https://github.com/deepmind/alphafold/issues/257#issuecomment-986183590)

## What's different

1. Databases below are updated:

+ uniclust30
+ mgnify
+ pdb70

2. Changed `docker/run_docker.py` to fetch up the databases' update.


## How to use

1. **Clone this repository**

```sh
wget https://github.com/Shall-We-Dance/AlphaFold-DB/archive/refs/tags/v2.3.1.zip
unzip v2.3.1.zip
rm v2.3.1.zip
```

2. **Install**

Get the alphafold code.

```sh
wget https://github.com/deepmind/alphafold/archive/refs/tags/v2.3.1.zip
unzip v2.3.1.zip
rm v2.3.1.zip
```

Then, copy the script into it.

```sh
cp -r -f <AlphaFold-DB_dir>/* <alphafold_dir>/
```

Setup the alphafold following the manual provided by alphafold.

3. **If you already installed the alphafold**

Just redownload the updated databases using `script/update.sh`.

```sh
scripts/update.sh <DOWNLOAD_DIR>
```

**📒 Note: The download directory <DOWNLOAD_DIR> should not be a subdirectory in the AlphaFold repository directory. If it is, the Docker build will be slow as the large databases will be copied during the image creation.**

4. **The structure of `<DOWNLOAD_DIR>`**

Once the script has finished, you should have the following directory structure:

(This size info is updated at Dec 23, 2021. Size may vary for the latest version.)

```sh
$DOWNLOAD_DIR/                             # Total: ~ 2.4 TB (download: ~510 GB)
    bfd/                                   # ~ 1.7 TB (download: 271.6 GB)
        # 6 files.
    mgnify/                                # ~ 64 GB (download: 35 GB)
        mgy_clusters.fa
    params/                                # ~ 3.5 GB (download: 3.5 GB)
        # 5 CASP14 models,
        # 5 pTM models,
        # 5 AlphaFold-Multimer models,
        # LICENSE,
        # = 16 files.
    pdb70/                                 # ~ 65 GB (download: 22 GB)
        # 9 files.
    pdb_mmcif/                             # ~ 206 GB (download: 46 GB)
        mmcif_files/
            # About 180,000 .cif files.
        obsolete.dat
    pdb_seqres/                            # ~ 0.2 GB (download: 0.2 GB)
        pdb_seqres.txt
    small_bfd/                             # ~ 17 GB (download: 9.6 GB)
        bfd-first_non_consensus_sequences.fasta
    uniref30/                            # ~ 206 GB (download: 46 GB)
        uniref30_2022_02/
            # 13 files.
    uniprot/                               # ~ 98.3 GB (download: 49 GB)
        uniprot.fasta
    uniref90/                              # ~ 58 GB (download: 29.7 GB)
        uniref90.fasta
```

Which is different form the original one.

```sh
$DOWNLOAD_DIR/                             # Total: ~ 2.2 TB (download: 438 GB)
    bfd/                                   # ~ 1.7 TB (download: 271.6 GB)
        # 6 files.
    mgnify/                                # ~ 64 GB (download: 32.9 GB)
        mgy_clusters_2018_12.fa
    params/                                # ~ 3.5 GB (download: 3.5 GB)
        # 5 CASP14 models,
        # 5 pTM models,
        # 5 AlphaFold-Multimer models,
        # LICENSE,
        # = 16 files.
    pdb70/                                 # ~ 56 GB (download: 19.5 GB)
        # 9 files.
    pdb_mmcif/                             # ~ 206 GB (download: 46 GB)
        mmcif_files/
            # About 180,000 .cif files.
        obsolete.dat
    pdb_seqres/                            # ~ 0.2 GB (download: 0.2 GB)
        pdb_seqres.txt
    small_bfd/                             # ~ 17 GB (download: 9.6 GB)
        bfd-first_non_consensus_sequences.fasta
    uniclust30/                            # ~ 86 GB (download: 24.9 GB)
        uniclust30_2018_08/
            # 13 files.
    uniprot/                               # ~ 98.3 GB (download: 49 GB)
        uniprot.fasta
    uniref90/                              # ~ 58 GB (download: 29.7 GB)
        uniref90.fasta
```
