# Notebooks Instructions

- Treat the Manim Community reference (`https://docs.manim.community/en/stable/reference.html`) as the canonical source for API behavior, parameter defaults, and example usage when documenting notebook cells or writing helper comments.
- When adding or updating Markdown explanations, cite or link the relevant reference sections so future readers can cross-check animations against upstream docs.

# Commenting & Readability Standards

- Prefer short, targeted comments that clarify intent (why a construct is used, non-obvious parameter choices) rather than restating the code; keep prose concise and active.
- For longer procedural explanations, use Markdown cells with headings instead of bloated inline comments so the narrative remains readable when exported.
- Ensure code cells follow a top-down flow: import/setup, scene construction, rendering helpers—each block separated by a brief Markdown summary.

# Notebook Hygiene

- Before committing, clear transient outputs unless they are essential reference frames for the explanation; include at most one representative frame per section.
- Run the pertinent Manim scene in the `manim-env` kernel to confirm it still renders as documented in the accompanying Markdown.
- If a dependency or execution step changes, mirror the update here and in the root `AGENTS.md` / `README.md` so setup guidance stays consistent.
