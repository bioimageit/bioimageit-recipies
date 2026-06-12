# BioImageIT recipes

Conda recipes to build the tools available in BioImageIT


# To build a conda recipe

## With Rattler Build

If anaconda is not installed: `micromamba install -n base -c conda-forge anaconda-client`.

```shell
rattler-build build \
    --recipe recipes/simglib/rattler \
    --target-platform osx-arm64 \
    --test native \
    -c bioimageit \
    -c conda-forge \
    --output-dir output/simglib
```

Then upload:

```shell
anaconda login
anaconda upload -u bioimageit output/simglib/osx-arm64/simglib-*.conda
```

After upload, verify:

```shell
micromamba create -n simglib-test -c bioimageit -c conda-forge simglib=0.1.2
```

## With conda (old)
```
conda-build serpico-ndsafir
```
