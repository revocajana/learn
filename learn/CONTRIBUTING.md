# Learn Folder — contribution & file conventions

Purpose
- All concept notes and learning material go into the learn/ folder so learners can find theory and examples in one place.

Where to add files
- Add one Markdown file per concept under: learn/
- Filename style: kebab-case, e.g. widgets.md, stateful-vs-stateless.md, layout.md

File structure & required sections (use this template)
```markdown
# Title (H1)

Short summary (1–2 lines)

Why it matters (1–3 bullets)

Example in this repo
- Which screen/widget uses this concept
- Short code sample or reference

Hands-on exercise
- Small task to implement in the app

Further reading / links
```

Index updates
- After adding a concept file, update learn/index.md (or README) to list the new file so it's discoverable.

Examples
- widgets.md — explains widgets and shows keypad, AppBar, Drawer examples.
- stateful-vs-stateless.md — explain when to convert a widget, with calculator display example.

Notes on code snippets
- Keep snippets short and relevant; reference actual files in lib/ when possible.

Versioning
- When you update a concept, add a short changelog line at the bottom with date and brief notes.