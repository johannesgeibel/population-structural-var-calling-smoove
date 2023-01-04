FROM condaforge/mambaforge:latest
LABEL io.github.snakemake.containerized="true"
LABEL io.github.snakemake.conda_env_hash="1df4daface3e65032ba184c057b2fa0bd0627c7b7168849a8f670b5f7884bf5b"

# Step 1: Retrieve conda environments

# Conda environment:
#   source: envs/plink.yaml
#   prefix: /conda-envs/a0c6f0f22c8182393895c4e521a1886c
#   name: plink
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - bioconda:plink==1.90b6.21
RUN mkdir -p /conda-envs/a0c6f0f22c8182393895c4e521a1886c
COPY envs/plink.yaml /conda-envs/a0c6f0f22c8182393895c4e521a1886c/environment.yaml

# Conda environment:
#   source: envs/python2.7.yml
#   prefix: /conda-envs/0048c0cca6ab83fae1c011906f1c47ef
#   name: python2.7
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - _libgcc_mutex=0.1=conda_forge
#     - _openmp_mutex=4.5=1_gnu
#     - argparse=1.4.0=py27_0
#     - bzip2=1.0.8=h7f98852_4
#     - c-ares=1.17.2=h7f98852_0
#     - ca-certificates=2021.10.8=ha878542_0
#     - certifi=2019.11.28=py27h8c360ce_1
#     - krb5=1.19.2=hcc1bbae_2
#     - ld_impl_linux-64=2.36.1=hea4e1c9_2
#     - libcurl=7.79.1=h2574ce0_1
#     - libdeflate=1.7=h7f98852_5
#     - libedit=3.1.20191231=he28a2e2_2
#     - libev=4.33=h516909a_1
#     - libffi=3.2.1=he1b5a44_1007
#     - libgcc-ng=11.2.0=h1d223b6_11
#     - libgomp=11.2.0=h1d223b6_11
#     - libnghttp2=1.43.0=h812cca2_1
#     - libssh2=1.10.0=ha56f1ee_2
#     - libstdcxx-ng=11.2.0=he4da1e4_11
#     - libzlib=1.2.11=h36c2ea0_1013
#     - ncurses=6.2=h58526e2_4
#     - openssl=1.1.1l=h7f98852_0
#     - pip=20.1.1=pyh9f0ad1d_0
#     - pysam=0.17.0=py27hc729bab_0
#     - python=2.7.15=h5a48372_1011_cpython
#     - python_abi=2.7=1_cp27mu
#     - readline=8.1=h46c0cb4_0
#     - samblaster=0.1.26=h7d875b9_1
#     - setuptools=44.0.0=py27_0
#     - sqlite=3.36.0=h9cd32fc_2
#     - tk=8.6.11=h27826a3_1
#     - wheel=0.37.0=pyhd8ed1ab_1
#     - xz=5.2.5=h516909a_1
#     - zlib=1.2.11=h36c2ea0_1013
#     - bioconda:samtools>=1.10
RUN mkdir -p /conda-envs/0048c0cca6ab83fae1c011906f1c47ef
COPY envs/python2.7.yml /conda-envs/0048c0cca6ab83fae1c011906f1c47ef/environment.yaml

# Conda environment:
#   source: envs/python3.yaml
#   prefix: /conda-envs/b3127243bb11a2e9a0b89d1550169fc7
#   name: python2.7
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - python==3.9.4
#     - pandas
#     - pyvcf
#     - pysam
#     - numpy
RUN mkdir -p /conda-envs/b3127243bb11a2e9a0b89d1550169fc7
COPY envs/python3.yaml /conda-envs/b3127243bb11a2e9a0b89d1550169fc7/environment.yaml

# Conda environment:
#   source: envs/r.yaml
#   prefix: /conda-envs/3329a841171e870fd324ee6ab0dd8cbb
#   name: r
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - conda-forge:r-base==3.6.2
#     - r-data.table
#     - r-optparse
#     - r-ggplot2
RUN mkdir -p /conda-envs/3329a841171e870fd324ee6ab0dd8cbb
COPY envs/r.yaml /conda-envs/3329a841171e870fd324ee6ab0dd8cbb/environment.yaml

# Conda environment:
#   source: envs/smoove.yaml
#   prefix: /conda-envs/ca4b194bcfafa5f0d18995da82ab68d6
#   name: smoove_pipeline
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - _libgcc_mutex=0.1=conda_forge
#     - _openmp_mutex=4.5=1_gnu
#     - bcftools=1.9=h68d8f2e_9
#     - blas=1.1=openblas
#     - bzip2=1.0.8=h7f98852_4
#     - ca-certificates=2021.5.30=ha878542_0
#     - certifi=2019.11.28=py27h8c360ce_1
#     - curl=7.64.0=h646f8bb_0
#     - cytoolz=0.10.1=py27h516909a_0
#     - duphold=0.2.1=h779adbc_2
#     - gawk=5.1.0=h7f98852_0
#     - gsl=2.5=h294904e_1
#     - gsort=0.1.4=h9ee0642_1
#     - htslib=1.9=ha228f0b_7
#     - krb5=1.16.3=hc83ff2d_1000
#     - ld_impl_linux-64=2.36.1=hea4e1c9_2
#     - libblas=3.9.0=1_h86c2bf4_netlib
#     - libcblas=3.9.0=5_h92ddd45_netlib
#     - libcurl=7.64.0=h01ee5af_0
#     - libdeflate=1.0=h14c3975_1
#     - libedit=3.1.20191231=he28a2e2_2
#     - libffi=3.2.1=he1b5a44_1007
#     - libgcc=7.2.0=h69d50b8_2
#     - libgcc-ng=11.1.0=hc902ee8_8
#     - libgfortran=3.0.0=1
#     - libgfortran-ng=11.1.0=h69a702a_8
#     - libgfortran5=11.1.0=h6c583b3_8
#     - libgomp=11.1.0=hc902ee8_8
#     - liblapack=3.9.0=5_h92ddd45_netlib
#     - libssh2=1.8.0=h1ad7b7a_1003
#     - libstdcxx-ng=11.1.0=h56837e0_8
#     - lumpy-sv=0.2.14a=hdfb72b2_2
#     - mosdepth=0.2.6=hfb13731_0
#     - ncurses=6.2=h58526e2_4
#     - numpy=1.16.5=py27h95a1406_0
#     - openblas=0.3.3=ha44fe06_1
#     - openssl=1.0.2u=h516909a_0
#     - pandas=0.24.2=py27hb3f55d8_0
#     - patsy=0.5.1=py_0
#     - pcre=8.45=h9c3ff4c_0
#     - perl=5.32.1=0_h7f98852_perl5
#     - pip=20.1.1=pyh9f0ad1d_0
#     - pysam=0.15.3=py27hda2845c_1
#     - python=2.7.18=h02575d3_0
#     - python-dateutil=2.8.1=py_0
#     - python_abi=2.7=1_cp27mu
#     - pytz=2019.3=py_0
#     - readline=8.1=h46c0cb4_0
#     - samblaster=0.1.26=h7d875b9_1
#     - samtools=1.7=1
#     - scipy=1.2.0=py27_blas_openblashb06ca3d_200
#     - setuptools=44.0.0=py27_0
#     - six=1.16.0=pyh6c4a22f_0
#     - smoove=0.2.8=h9ee0642_0
#     - sqlite=3.36.0=h9cd32fc_0
#     - statsmodels=0.9.0=py27h3010b51_1000
#     - svtools=0.4.0=py27h24bf2e0_2
#     - svtyper=0.7.0=py27h24bf2e0_1
#     - tk=8.6.10=h21135ba_1
#     - toolz=0.10.0=py_0
#     - wheel=0.36.2=pyhd3deb0d_0
#     - xz=5.2.5=h516909a_1
#     - zlib=1.2.11=h516909a_1010
#   prefix: /home/WUR/moiti001/miniconda3/envs/smoove_pipeline
RUN mkdir -p /conda-envs/ca4b194bcfafa5f0d18995da82ab68d6
COPY envs/smoove.yaml /conda-envs/ca4b194bcfafa5f0d18995da82ab68d6/environment.yaml

# Conda environment:
#   source: envs/survivor.yaml
#   prefix: /conda-envs/c2925fea8be3bae5c8cfb144f9aa7744
#   name: survivor
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - _libgcc_mutex=0.1=conda_forge
#     - _openmp_mutex=4.5=1_gnu
#     - libgcc-ng=11.1.0=hc902ee8_8
#     - libgomp=11.1.0=hc902ee8_8
#     - libstdcxx-ng=11.1.0=h56837e0_8
#     - survivor=1.0.7=h9a82719_1
#     - zlib=1.2.11=h516909a_1010
#   prefix: /home/WUR/moiti001/miniconda3/envs/survivor
RUN mkdir -p /conda-envs/c2925fea8be3bae5c8cfb144f9aa7744
COPY envs/survivor.yaml /conda-envs/c2925fea8be3bae5c8cfb144f9aa7744/environment.yaml

# Conda environment:
#   source: envs/vep_dependencies.yaml
#   prefix: /conda-envs/50c0a226956ed665a8e70df78ddba8b2
#   name: vep_dependencies
#   channels:
#     - bioconda
#     - conda-forge
#     - defaults
#   dependencies:
#     - perl
#     - bioconda:samtools>=1.10
#     - bioconda:ensembl-vep==108.2
RUN mkdir -p /conda-envs/50c0a226956ed665a8e70df78ddba8b2
COPY envs/vep_dependencies.yaml /conda-envs/50c0a226956ed665a8e70df78ddba8b2/environment.yaml

# Step 2: Generate conda environments

RUN mamba env create --prefix /conda-envs/a0c6f0f22c8182393895c4e521a1886c --file /conda-envs/a0c6f0f22c8182393895c4e521a1886c/environment.yaml && \
    mamba env create --prefix /conda-envs/0048c0cca6ab83fae1c011906f1c47ef --file /conda-envs/0048c0cca6ab83fae1c011906f1c47ef/environment.yaml && \
    mamba env create --prefix /conda-envs/b3127243bb11a2e9a0b89d1550169fc7 --file /conda-envs/b3127243bb11a2e9a0b89d1550169fc7/environment.yaml && \
    mamba env create --prefix /conda-envs/3329a841171e870fd324ee6ab0dd8cbb --file /conda-envs/3329a841171e870fd324ee6ab0dd8cbb/environment.yaml && \
    mamba env create --prefix /conda-envs/ca4b194bcfafa5f0d18995da82ab68d6 --file /conda-envs/ca4b194bcfafa5f0d18995da82ab68d6/environment.yaml && \
    mamba env create --prefix /conda-envs/c2925fea8be3bae5c8cfb144f9aa7744 --file /conda-envs/c2925fea8be3bae5c8cfb144f9aa7744/environment.yaml && \
    mamba env create --prefix /conda-envs/50c0a226956ed665a8e70df78ddba8b2 --file /conda-envs/50c0a226956ed665a8e70df78ddba8b2/environment.yaml && \
    mamba clean --all -y
