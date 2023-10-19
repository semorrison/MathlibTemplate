# Mathlib Template

This sets up a basic Mathlib project on your machine. If you first need to install Lean 4, you can do so by following the instructions on this basic [Lean Template](https://github.com/matematiflo/LeanTemplate) repository.

## Install instructions

1. Clone the present repository and open a terminal (better not do it from within VS Code, or you may receive error messages).

2. Run the command line

```script
lake exe cache get
```

This downloads the Mathlib binaries, so you can avoid building Mathlib locally (which takes a long time). In principle, though, this can be done via the command `lake build`.

3. Open VS Code and go to the cloned repo. Then go to the file `test.lean` and check that there is no error message (the file imports the file `Mathlib.Algebra.Group.Defs` of the Mathlib library, which should only take a few seconds). In the Lean Infoview panel, you should see the message

> **No goals**

when you position your cursor after the `example` line (for instance immediately after the `by {rfl}`). The file gives a proof that, in a group `G`, the neutral element `1` satisfies `1 * 1 = 1`, by definition :-)

If it does not work, see the [Troubleshooting](#troubleshooting) section below.

## Updating the Lean version

If you want to update the Lean version and the copy of Mathlib used in this repo, run `lake update` before `lake exe cache get`. This will first update Mathlib and then set the Lean version to the same as the one used by the more recent copy of Mathlib. The changes will be reflected in the files `lake-manifest.json` and `lean-toolchain` (and of course in the lake packages themselves).

## Troubleshooting

If you get error messages when parsing `test.lean`, try running `lake update` before `lake exe cache get`. You should then close the file and open it again.