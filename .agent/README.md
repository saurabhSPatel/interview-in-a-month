# .agent - Team LLM Context Management

This folder serves as the central context repository for the EngineeringOS project, enabling synchronized intelligence across different LLMs and team members.

## Purpose
- **Context Synchronization**: Maintain consistent understanding across GPT-4, Claude, Gemini, and other LLMs
- **Knowledge Preservation**: Capture institutional knowledge that would otherwise be lost in AI conversations
- **Team Alignment**: Ensure all team members have access to current project context
- **Decision Tracking**: Log important decisions with rationale for future reference

## Folder Structure

### Core Context Files
- `project-context.md` - High-level project overview, mission, and status
- `architecture.md` - System design, technical decisions, and implementation details
- `decisions.md` - Log of important decisions with rationale and impact
- `team.md` - Team members, roles, expertise, and processes
- `patterns.md` - Code patterns, conventions, and best practices
- `glossary.md` - Project-specific terminology and definitions

### Specialized Context
- `onboarding.md` - Guide for new team members and LLM onboarding
- `prompts.md` - Standardized prompts for consistent AI interactions

### Session Logs
- `sessions/` - Individual LLM conversation summaries and learnings
  - Format: `YYYY-MM-DD-llm-name-session.md`
  - Example: `2024-01-16-gpt4-refactor-session.md`

## Usage Guidelines

### For Team Members
1. **Read Context First**: Review relevant .agent files before starting work
2. **Update After Changes**: Add new context when making significant decisions
3. **Reference in Sessions**: Include .agent files when starting LLM conversations

### For LLM Interactions
When working with any LLM, include relevant context:
```
You are working on EngineeringOS. Please review this context:
[Include relevant .agent/*.md files]
```

### Maintenance
- **Regular Updates**: Update context files as project evolves
- **Version Control**: All changes are tracked in git
- **Review Process**: Major context changes should be reviewed
- **Cleanup**: Archive old session logs periodically

## VS Code Integration

### Recommended Settings (.vscode/settings.json)
```json
{
  "agent.context": {
    "projectOverview": ".agent/project-context.md",
    "architecture": ".agent/architecture.md",
    "decisions": ".agent/decisions.md"
  }
}
```

### Quick Access
- Use VS Code's file explorer to quickly navigate context files
- Set up bookmarks or workspace favorites for frequently accessed files
- Use search within .agent folder for specific information

## Best Practices

### Content Guidelines
- **Be Specific**: Include concrete examples and decisions
- **Keep Current**: Update context as project changes
- **Be Concise**: Focus on high-value information
- **Use Templates**: Follow established formats for consistency

### LLM Integration
- **Context Injection**: Always provide relevant .agent context to LLMs
- **Session Logging**: Summarize important conversations in sessions/
- **Decision Capture**: Log significant decisions immediately
- **Pattern Recognition**: Note recurring patterns for inclusion in patterns.md

### Team Collaboration
- **Shared Understanding**: Use .agent files to align team members
- **Knowledge Transfer**: New members should read all core context files
- **Conflict Resolution**: Reference decisions.md for precedent
- **Continuous Improvement**: Regularly review and improve context organization

## Getting Started

1. Read `project-context.md` for project overview
2. Review `architecture.md` for technical foundation
3. Check `decisions.md` for important choices made
4. Familiarize yourself with `patterns.md` for coding standards
5. Start contributing by updating relevant context files

## Questions?

If you have questions about the .agent system or need help with context management, refer to the patterns in this folder or create a new session log documenting your findings.