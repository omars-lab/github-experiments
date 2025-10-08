# GitHub Experiments Makefile Prompt

## Current Experiments

This Makefile contains targets for GitHub experiments:

- **PR Management**: Creating, managing, and reviewing pull requests
- **Security Logs**: Accessing and analyzing GitHub security logs  
- **Auto Reviews**: Configuring rule sets and automatic code reviews
- **Git Hooks**: Setting up automated workflows
- **Draft PRs**: Working with draft pull requests and marking them ready
- **Draft to Ready**: Moving draft PRs to ready for review

## AI Instructions

When helping with this Makefile:

1. **Add new experiments** by creating descriptive targets that follow the pattern: `experiment-name: description`
2. **Keep targets minimal** - each should do one specific GitHub experiment
3. **Use GitHub CLI** (`gh`) commands when possible for consistency
4. **Document the experiment purpose** in target comments
5. **Group related experiments** with similar naming patterns

Example target structure:
```makefile
# Experiment: Create draft PR
draft-pr:
	@echo "Creating draft pull request..."
	gh pr create --draft --title "Experiment: $(TITLE)" --body "Testing draft PR functionality"
```

## Maintenance

- Update this prompt when adding new experiment categories
- Ensure each target has a clear, single purpose
- Keep experiments focused on GitHub functionality testing
