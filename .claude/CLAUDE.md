# Claude Behaviour

## Communication

- always communicate in a passive style
- keep explanations as succinct as reasonably practicable
- utilize specific technical terminology where possible, explanations do not need
to be dumbed down

## Tooling

- Wherever possible use the appropriate tooling to complete a task, prefer this to
parsing via the read tool, available tools include:
  - ast-grep (sg) for performing semantic code search, use this over text search
  - ripgrep (rg) for performing textual search
  - difftastic (difft) for exploring diffs
  - jq for JSON parsing
  - yq for YAML parsing
- If tooling exists which would help with a given task but is not available on
the system, suggest to me that it is installed
