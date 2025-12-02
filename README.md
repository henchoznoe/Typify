# Typify

Un template Typst modulaire et professionnel pour la création de documents académiques et techniques.

## 🚀 Fonctionnalités

- **Deux thèmes** : HEIA-FR (branding institutionnel) et Default (sobre et professionnel)
- **Architecture modulaire** : Composants réutilisables (header, footer, cover, outlines, bibliography)
- **Génération automatique** : Table des matières, table des illustrations, bibliographie
- **Configuration centralisée** : Couleurs, polices, marges personnalisables
- **CI/CD intégré** : Compilation automatique des démos via GitHub Actions

## 📦 Installation

### Option 1 : Clone du dépôt (recommandé)

```bash
git clone https://github.com/henchoznoe/Typify.git
cd Typify
```

### Option 2 : Package Typst (si publié)

```typst
#import "@preview/typify:1.0.0": project
```

## 🔨 Compilation

### Compiler un document

```bash
# Depuis la racine du projet
typst compile app/demo-heia.typ
typst compile app/demo-default.typ

# Ou depuis le dossier app/
cd app
typst compile demo-heia.typ
```

### Compiler avec watch (recompilation automatique)

```bash
typst watch app/demo-heia.typ
```

### Générer dans un dossier spécifique

```bash
mkdir -p output
typst compile app/demo-heia.typ output/demo-heia.pdf
```

## 📝 Utilisation

### Structure minimale

```typst
#import "template/main.typ": project

#show: project.with(
  title: "Mon Document",
  authors: ("Auteur",),
  date: datetime.today(),
)

= Introduction
Votre contenu ici...
```

### Configuration complète

```typst
#import "template/main.typ": project

#show: project.with(
  // Informations de base
  title: "Mon Travail",
  subtitle: "Sous-titre optionnel",
  authors: ("Auteur 1", "Auteur 2"),
  date: datetime.today(),
  classe: "ISC-IL-3A",
  
  // Thème et mise en page
  cover: true,              // Page de garde
  heia: true,               // Theme HEIA-FR (false pour défaut)
  
  // Tables automatiques
  toc: true,                // Table des matières
  tof: true,                // Table des illustrations
  bibliography: true,       // Bibliographie
  bibliography-file: "bibliography.bib",
)

= Introduction
Votre contenu...
```

## 🎨 Thèmes

### HEIA-FR (`heia: true`)
- Couleurs institutionnelles (#007CB7, #AFA8A1)
- Logo HEIA dans le header
- Page de garde avec image de couverture

### Default (`heia: false`)
- Couleurs sobres professionnelles (#2C3E50, #ECF0F1)
- Design minimaliste
- Sans branding spécifique

## 📚 Documentation

Consultez les fichiers de démonstration pour des exemples complets :
- [`app/demo-heia.typ`](app/demo-heia.typ) - Démonstration thème HEIA-FR
- [`app/demo-default.typ`](app/demo-default.typ) - Démonstration thème par défaut

## 🏗️ Structure du Projet

```
Typify/
├── typst.toml                 # Configuration du package
├── LICENSE
├── README.md
├── .github/
│   └── workflows/
│       └── build.yml          # CI/CD pour compilation automatique
├── app/
│   ├── template/
│   │   ├── main.typ          # Point d'entrée principal
│   │   ├── config.typ        # Configuration centralisée
│   │   └── components/       # Composants modulaires
│   │       ├── header.typ
│   │       ├── footer.typ
│   │       ├── cover-heia.typ
│   │       ├── cover-default.typ
│   │       ├── outlines.typ
│   │       └── bibliography.typ
│   ├── demo-heia.typ         # Demo thème HEIA
│   └── demo-default.typ      # Demo thème défaut
└── lib/
    ├── alerts.typ            # Composants d'alerte
    ├── badges.typ            # Badges
    └── code.typ              # Blocs de code
```

## 🔧 CI/CD

Le projet inclut un workflow GitHub Actions (`.github/workflows/build.yml`) qui :
- Compile automatiquement tous les fichiers `.typ` dans `app/` à chaque push
- Génère les PDFs et les upload en tant qu'artifacts
- Les PDFs sont disponibles dans l'onglet "Actions" de GitHub

## 📄 Licence

MIT License - voir [LICENSE](LICENSE)

## 👥 Auteurs

- Noé Henchoz
- Yoan Gilliand

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request.