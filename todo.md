### Swift setup/compiler
https://www.swift.org/install/
- Windows will need additional WSL setup
- Linux may require dependencies like LLVM

### Swift Reference Material
https://www.swift.org/documentation/

### Slides Scope

#### Known info
- Objective C replacement
  - Has a lot of C bindings
  - Built up from LLVM
- Developed by Apple engineer Chris Lattner
- "Designed to be safe, fast, and expressive
- Initially designed for use within the Apple ecosystem, open sourced in 2015
  - Crossplatform between Apple's own ecosystem, Windows, and Linux
- Domain
  - Primarily used for Apple's ecosystem (macOS, iOS, iPadOS, tvOS, watchOS, visionOS.. etc.)
  - Server side appliations with the Vapor framework
  - There's a growing number of applications however none are quite established as Apple's own ecosystem
- Typing
  - Swift is strongly and statically typed, checks are done at compile time
  - Memory safety is taken care by ARC, or Automatic Reference Counting. This ensures memory lifetime and allocation is done safely muck like the borrow checker in Rust
  - Type Inference, data types aren't explicitly required to be written out, allowing a for cleaner code that looks somewhat like Python but with the type safety of Rust
  - You **cannot** leave variables uninitialized, all variables **must** be initialized 
### Live Code Scope
- Write basic constructs (i.e. loops, logic statements, conditionals, variables, etc)
- Things to look out for (additional explainers):
  - Protocols, they're like classes but not classes since Swift doesn't use classes (just summarize from docs?)
