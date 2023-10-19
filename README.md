# Mathlib Template

This sets up a basic Mathlib project on your machine. If you first need to install Lean 4, you can do so by following the instructions on this basic [Lean Template](https://github.com/matematiflo/LeanTemplate) repository.

## Install instructions

1. Clone the present repository and open a terminal (better not do it from within VS Code, or you may receive error messages).

2. Run `lake update` in a terminal (inside the cloned repo). This will install Mathlib in your repo, creating a bunch of new files, including a directory called `lake-packages`.

3. Run the command line

```script
cp lake-packages/mathlib/lean-toolchain lean-toolchain
```

This will modify your `lean-toolchain` file, replacing it with the one used by the version of Mathlib that you have just installed. 

> **Note:** *In principle, this step is not necessary, the content of the two files should already be the same.*

4. Run the command line

```script
lake exe cache get
```

This downloads the binaries, so you can avoid building Mathlib locally (which takes a long time). In principle, though, this can be done via the command `lake build`.

5. Open VS Code and go to the cloned repo. Then go to the file `test.lean` and check that there is no error message (the file imports the file `Mathlib.Algebra.Group.Defs` of the Mathlib library, which should only take a few seconds). In the Lean Infoview panel, you should see the message

> **No goals**

when you position your cursor after the `example` line (for instance immediately after the `by {rfl}`).
