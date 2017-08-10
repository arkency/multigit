# multigit
Tools to deal with multiple git repositories

## Example output

```
repo1 ⑂ master > multigit status -s
-- REPO: ../repo1
-- REPO: ../repo2
 M lib/calculate_result.rb
 M lib/shared/value_objects/money.rb
-- REPO: ../repo3
-- REPO: ../repo4
```

## Installation

1. Clone the repo
2. Add this to your `~/.bash_profile`:
```
source ~/path/to/the/cloned/repo/multigit.sh
```

To increase handiness even more, add some aliases like:
```
function mgs { multigit status --short $*; }
```
