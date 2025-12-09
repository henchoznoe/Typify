# 🔤 Fonts

This directory contains the specific fonts used by the Typify template.

- **Aptos**: Main text font (Heading and body).
- **JetBrains Mono**: Monospace font for code blocks.

## 📦 Installation

To ensure the template renders correctly on your system without needing to specify the font path every time, you can install these fonts globally.

### 🪟 Windows

1.  Open the `Aptos` folder.
2.  Select all font files (`.ttf`).
3.  Right-click and select **"Install"** or **"Install for all users"**.
4.  Repeat for the `JetBrainsMono` folder.

### 🍎 MacOS

1.  Open the `Aptos` folder.
2.  Select all font files (`.ttf`).
3.  Double-click on the selection.
4.  In the Font Book window that appears, click **"Install Font"**.
5.  Repeat for the `JetBrainsMono` folder.

## 🔨 Usage with Typst

If you don't want to install the fonts globally, you can simply tell Typst where to look for them during compilation:

```bash
# Point to this folder when compiling
typst compile --font-path app/fonts app/demo-heia.typ
```

Using the `--font-path` argument ensures that Typst finds `Aptos` and `JetBrains Mono` even if they are not installed on your system.
