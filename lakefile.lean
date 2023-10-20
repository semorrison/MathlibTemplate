import Lake
open Lake DSL

package «test» where
  -- add package configuration options here

lean_lib «test» where
  -- add library configuration options here
  require mathlib from git
  "https://github.com/leanprover-community/mathlib4"