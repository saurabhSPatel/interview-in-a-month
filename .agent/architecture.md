# EngineeringOS Architecture

## System Overview
Static HTML/CSS/JS learning platform with modular course structure.

## Design Patterns Used
- **Component Architecture**: Reusable HTML sections with consistent CSS classes
- **Pattern-Based Content**: Each course focuses on patterns rather than tutorials
- **Responsive Design**: Mobile-first approach with CSS Grid and Flexbox
- **Semantic HTML**: Proper document structure for accessibility

## File Organization
```
/
├── index.html              # Landing page with course overview
├── styles.css              # Shared stylesheet
├── [course]-*.html         # Individual course pages
└── .agent/                 # Context management (this folder)
    ├── *.md               # Markdown context files
    └── sessions/          # LLM conversation logs
```

## CSS Architecture
- **CSS Variables**: Consistent theming with --bg, --surface, --accent colors
- **Component Classes**: Reusable classes like .panel, .section, .card
- **Responsive Breakpoints**: Mobile-first design with fluid typography
- **Performance**: Minimal CSS, efficient selectors

## Content Strategy
- **Standalone Learning**: Each page contains complete information
- **Pattern Focus**: Emphasize reusable patterns over specific examples
- **Progressive Disclosure**: Layered information from overview to deep dives
- **Cross-References**: Internal links between related concepts

## LLM Integration
- **Context Synchronization**: .agent folder maintains consistency across different LLMs
- **Session Logging**: Track conversations and decisions
- **Prompt Templates**: Standardized prompts for consistent AI interactions
- **Decision Tracking**: Log important architectural and content decisions