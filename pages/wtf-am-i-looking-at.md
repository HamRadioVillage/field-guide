# How does all of this nonsense work?
---

This project turns simple Markdown files into formatted PDF pages using an automated build pipeline.

You do not need to understand LaTeX or GitHub Actions to contribute. You just need to edit Markdown.

---

## What you edit
---

All content lives here:

```
pages/content/
```

Each `.md` file is a piece of content (a box, section, or chunk of a page).

- Write text
- Add lists
- Add tables
- Keep it simple

You can:
- edit existing files
- add new files
- delete unused ones

You will not break the build by doing this.

---

## What happens automatically
---

When you push changes or open a pull request, GitHub runs a workflow.

That workflow does this:

### Step 1 - Convert Markdown → LaTeX

Each file in:

```
pages/content/*.md
```

gets converted into:

```
pages/generated/*.tex
```

This uses a tool called `pandoc`.

You do not need to run this yourself.

---

### Step 2 - Assemble pages

LaTeX templates in:

```
pages/templates/
```

define page layouts.

Each template:
- places content boxes on a page
- pulls in content from `pages/generated/*.tex`

Example:

```tex
\input{pages/generated/checklist.tex}
```

---

### Step 3 - Compile PDF

Each template is compiled into a PDF:

```
pages/compiled/
```

One template = one page PDF.

---

### Step 4 - Create Zine

All of the individual pages get mashed together into a printable zine format.

```
pages/compiled/
```

## Big picture
---

```
Markdown (.md)
   ↓
Converted automatically
   ↓
LaTeX fragments (.tex)
   ↓
Placed into page templates
   ↓
Compiled into PDFs
```

---

## What you should care about
---

### Do:
- Keep formatting simple
- Use headings, lists, and short tables
- Use clear filenames

### Avoid:
- Spaces in filenames  
  Use:
  ```
  comms-protocol.md
  ```
  Not:
  ```
  comms protocol.md
  ```

- Fancy formatting tricks (they may not convert well)

---

## Adding new content
---

1. Create a new file:

```
pages/content/my-topic.md
```

2. Add content

3. (Optional) Ask to include it in a page template

That’s it.

---

## Adding a new page layout (advanced)
---

If you want to control layout:

- edit or create a file in:
  ```
  pages/templates/
  ```
- define content boxes
- reference generated `.tex` files

This is where positioning, rotation, and layout happens.

---

## Troubleshooting
---

If something breaks, it is usually one of these:

- filename mismatch (`.md` vs `.tex`)
- spaces in filenames
- missing file referenced in template

Not your fault. Just flag it.

---

## Final note
---

You are editing content, not fighting the build system.

If you find yourself debugging LaTeX, something has gone wrong upstream.
