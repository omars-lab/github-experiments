# GitHub Experiments Makefile
# See prompts/makefile-experiments.md for AI instructions

.PHONY: help create-draft-pr draft-to-ready security-logs auto-reviews git-hooks

help:
	@echo "GitHub Experiments:"
	@echo "  create-draft-pr    - Create a draft pull request"
	@echo "  draft-to-ready     - Move draft PR to ready for review"
	@echo "  security-logs      - Access GitHub security logs"
	@echo "  auto-reviews       - Configure automatic code reviews"
	@echo "  git-hooks          - Set up git hooks for automation"

# Experiment: Create draft PR
create-draft-pr:
	@echo "Creating draft pull request..."
	@gh pr create --draft --title "Experiment: Draft PR" --body "Testing draft PR functionality"

# Experiment: Move draft PR to ready for review
draft-to-ready:
	@echo "Moving draft PR to ready for review..."
	@gh pr ready $(shell gh pr list --state=draft --json number --jq '.[0].number' 2>/dev/null || echo "")

# Experiment: Access security logs
security-logs:
	@echo "Accessing GitHub security logs..."
	@gh api /user/settings/security-log --jq '.events[] | select(.created_at > "2024-01-01")'

# Experiment: Configure auto reviews
auto-reviews:
	@echo "Configuring automatic code reviews..."
	@echo "See: https://docs.github.com/en/copilot/how-tos/use-copilot-agents/request-a-code-review/configure-automatic-review"

# Experiment: Set up git hooks
git-hooks:
	@echo "Setting up git hooks for automation..."
	@echo "TODO: Implement git hook experiments"
