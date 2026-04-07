#!/bin/bash
# setup-agent-folder.sh - Automated .agent folder setup for team LLM context management

set -e

echo "🤖 Setting up .agent folder for team LLM context management..."

# Create main .agent directory
mkdir -p .agent/sessions

# Create core context files
touch .agent/README.md
touch .agent/project-context.md
touch .agent/architecture.md
touch .agent/decisions.md
touch .agent/team.md
touch .agent/patterns.md
touch .agent/glossary.md
touch .agent/onboarding.md

# Create VS Code settings if .vscode doesn't exist
mkdir -p .vscode
if [ ! -f .vscode/settings.json ]; then
    cat > .vscode/settings.json << 'EOF'
{
  "agent.context": {
    "projectOverview": ".agent/project-context.md",
    "architecture": ".agent/architecture.md",
    "decisions": ".agent/decisions.md",
    "patterns": ".agent/patterns.md"
  },
  "files.exclude": {
    ".agent/sessions/": true
  },
  "search.exclude": {
    ".agent/sessions/": true
  }
}
EOF
    echo "✅ Created .vscode/settings.json"
else
    echo "⚠️  .vscode/settings.json already exists, skipping..."
fi

# Create VS Code tasks for context management
if [ ! -f .vscode/tasks.json ]; then
    cat > .vscode/tasks.json << 'EOF'
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Update Context",
      "type": "shell",
      "command": "git",
      "args": ["add", ".agent/", "&&", "git", "commit", "-m", "Update project context"],
      "group": "build",
      "presentation": {
        "echo": true,
        "reveal": "silent"
      }
    },
    {
      "label": "New Decision Log",
      "type": "shell",
      "command": "cp",
      "args": [".agent/templates/decision-template.md", ".agent/decisions/$(date +%Y-%m-%d)-decision.md"],
      "group": "build"
    }
  ]
}
EOF
    echo "✅ Created .vscode/tasks.json"
else
    echo "⚠️  .vscode/tasks.json already exists, skipping..."
fi

# Create templates directory and sample template
mkdir -p .agent/templates
cat > .agent/templates/decision-template.md << 'EOF'
# Decision: [DECISION_TITLE]

Date: [YYYY-MM-DD]
Decided by: [TEAM_MEMBER]
Context: [SITUATION_DESCRIPTION]

## Options Considered

### Option 1: [NAME]
- Pros: [LIST]
- Cons: [LIST]

### Option 2: [NAME]
- Pros: [LIST]
- Cons: [LIST]

## Decision
[CHOSEN_OPTION]

## Rationale
[WHY_THIS_DECISION]

## Impact
- Technical: [IMPACT]
- Team: [IMPACT]
- Timeline: [IMPACT]

## Follow-up
[MONITORING_PLAN]
EOF

# Create sample README.md
cat > .agent/README.md << 'EOF'
# .agent - Team LLM Context Management

This folder serves as the central context repository for the project, enabling synchronized intelligence across different LLMs and team members.

## Purpose
- **Context Synchronization**: Maintain consistent understanding across GPT-4, Claude, Gemini, and other LLMs
- **Knowledge Preservation**: Capture institutional knowledge that would otherwise be lost in AI conversations
- **Team Alignment**: Ensure all team members have access to current project context
- **Decision Tracking**: Log important decisions with rationale for future reference

## Quick Start
1. Read `project-context.md` for project overview
2. Review `architecture.md` for technical foundation
3. Check `decisions.md` for important choices made
4. Update context files as project evolves

## LLM Integration
When working with any LLM, include relevant context:
```
You are working on [PROJECT_NAME]. Please review this context:
[Include relevant .agent/*.md files]
```

## Maintenance
- Update context files regularly
- Log important LLM conversations in `sessions/`
- Review and audit context accuracy periodically
EOF

# Create sample project-context.md
cat > .agent/project-context.md << 'EOF'
# Project Context

## Project Overview
[Describe your project here]

## Mission
[What is the project's purpose?]

## Technology Stack
[List key technologies, frameworks, tools]

## Current Status
[What phase is the project in? Key milestones?]

## Team Context
[Who is working on this? Key roles?]

## Important Links
- Repository: [URL]
- Documentation: [URL]
- Project Board: [URL]
EOF

echo "✅ .agent folder structure created successfully!"
echo ""
echo "Next steps:"
echo "1. Edit .agent/project-context.md with your project details"
echo "2. Update .agent/architecture.md with technical information"
echo "3. Start logging decisions in .agent/decisions.md"
echo "4. Use the context files when working with LLMs"
echo ""
echo "For detailed guidance, see: https://engineeringos.com/team-llm-context.html"