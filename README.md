# BioImageIT recipes

Conda recipes to build the tools available in BioImageIT.

# Build and publish a conda recipe

## Install Rattler Build

Use Rattler Build for building, testing, and publishing packages.
The legacy `anaconda-client` and micromamba workflow is not required.

If Rattler Build is not already installed, Pixi can install it globally:

```shell
pixi global install rattler-build
```

## Build

```shell
rattler-build build \
    --recipe recipes/simglib/rattler \
    --target-platform osx-arm64 \
    --test native \
    -c bioimageit \
    -c conda-forge \
    --output-dir output/simglib
```

## Publish to Anaconda.org

Create an Anaconda.org API key with permission to upload packages to the `bioimageit` owner, then expose it only in the shell running the upload:

```shell
export ANACONDA_API_KEY="<your-api-key>"
```

Do not put the API key in this repository, a command committed to shell history, an issue, or a chat message.

Upload one or more packages directly with Rattler Build:

```shell
rattler-build upload anaconda \
    --owner bioimageit \
    --channel main \
    output/simglib/osx-arm64/simglib-*.conda
```

Unset the key after publishing:

```shell
unset ANACONDA_API_KEY
```

The uploader can also read credentials from Rattler's keychain or auth file; run `rattler-build upload anaconda --help` for those options.

## Verify the published package

Resolve the package from the public channel and run a lightweight command in a temporary Pixi environment:

```shell
pixi exec \
    --channel bioimageit \
    --channel conda-forge \
    --spec simglib=0.1.2 \
    simglib --help
```

## Legacy conda-build workflow

```shell
conda-build serpico-ndsafir
```
