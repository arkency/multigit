# multigit

Execute commands on multiple git repositories residing in a parent directory.

## Example output

```
repo1 ⑂ master > mg status -s
-- REPO: ../repo1
-- REPO: ../repo2
 M lib/calculate_result.rb
 M lib/shared/value_objects/money.rb
-- REPO: ../repo3
-- REPO: ../repo4
```

## Installation

1. Clone the repo
2. Add this to your `~/.bashrc`:
```
source ~/path/to/the/cloned/repo/multigit.sh
```


## Usage

```
$ multigit ls             # any command
$ multigit git status     # git command
$ multigitbox git diff    # show repo name in a big, visible box 
```

Typically you'll add some convenience aliases or functions to `.bashrc`:

```
alias mg='multigit git'
alias mgd='multigitbox git diff'
function mgs { multigit status --short $*; }
# ...
```

## Todo

* handle non-zero exit codes
* allow running with each line of output prefixed with the repo name, to be able to pipe to grep etc.

