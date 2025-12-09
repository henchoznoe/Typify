# 🔤 Polices (Fonts)

Ce dossier contient les polices spécifiques utilisées par le template Typify.

- **Aptos** : Police principale (Titres et corps de texte).
- **JetBrains Mono** : Police à chasse fixe pour les blocs de code.

## 📦 Installation

Pour garantir que le template s'affiche correctement sur votre système sans avoir à spécifier le chemin des polices à chaque fois, vous pouvez installer ces polices globalement.

### 🪟 Windows

1.  Ouvrez le dossier `Aptos`.
2.  Sélectionnez tous les fichiers de police (`.ttf`).
3.  Faites un clic droit et sélectionnez **"Installer"** ou **"Installer pour tous les utilisateurs"**.
4.  Répétez l'opération pour le dossier `JetBrainsMono`.

### 🍎 MacOS

1.  Ouvrez le dossier `Aptos`.
2.  Sélectionnez tous les fichiers de police (`.ttf`).
3.  Double-cliquez sur la sélection.
4.  Dans la fenêtre du Livre des polices qui s'affiche, cliquez sur **"Installer la police"**.
5.  Répétez l'opération pour le dossier `JetBrainsMono`.

## 🔨 Utilisation avec Typst

Si vous ne souhaitez pas installer les polices globalement, vous pouvez simplement indiquer à Typst où les trouver lors de la compilation :

```bash
# Pointer vers ce dossier lors de la compilation
typst compile --font-path app/fonts app/demo-heia.typ
```

L'utilisation de l'argument `--font-path` assure que Typst trouve `Aptos` et `JetBrains Mono` même si elles ne sont pas installées sur votre système.
