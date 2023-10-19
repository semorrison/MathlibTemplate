# Mathlib Template
Lean Template (with mathlib)

## Install instructions

1. Clone the present repository.

2. Run `lake update` in a terminal window (inside the cloned repo). This will install Mathlib in your repo, creating a bunch of new files, including a directory `lake-packages`.

3. If you have done this in VS Code, you may see a `Restart Lean` message. If so, click on it.

4. Run the command line

```
cp lake-packages/mathlib/lean-toolchain lean-toolchain
```

This will modify your `lean-toolchain` file, replacing it with the one used by the version of Mathlib that you have just installed.

5. If you have done all of this  in VS Code, you may see another `Restart Lean` message. If so, click on it.

6. Run the command line

```
lake exe cache get
```

This downloads the binaries, so you can avoid building Mathlib locally (which takes a long time). In principle, though, this can be done via the command `lake build`.

7. If you are not already in VS Code, open it and go to the repo that you have cloned. Then go to the file `test.lean` and check that there is no error message (the file imports the whole of Mathlib, which may take a few seconds). In the Lean Infoview panel, you should see the message **No goals**.