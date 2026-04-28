# 🏀 NBADataOptimisation

> Projet réalisé dans le cadre du module **OGA (Optimisation et Gestion Avancée des BD)**  
> Enseignante : **Dr. BOUADEM Nassima** — Ingénieur 3ème année, GL  
> **Binôme : Maouche Lina · Sahi Nour El Imene**

---

## 🎯 Objectif du projet

L'objectif est d'**optimiser des requêtes SQL** portant sur une base de données NBA, en mesurant l'impact concret des index B-tree sur les performances.

Pour chaque requête, on a suivi cette démarche :
1. Écrire la requête et l'exécuter **sans index** (mesure initiale)
2. Analyser le plan d'exécution avec `EXPLAIN PLAN` / `SET AUTOTRACE ON`
3. Identifier les problèmes (TABLE ACCESS FULL, sous-requêtes coûteuses…)
4. Créer des **index B-tree** adaptés et justifier le choix
5. Réexécuter et **comparer** les métriques (consistent gets, temps)

---

## 📊 Récapitulatif des résultats

| Requête | Description | Gets avant | Gets après | Gain |
|---|---|---|---|---|
| R1 | Triple double saison 2024/25 | 28 | 6 | **−78%** |
| R2 | Joueurs > 2m avec interceptions | 14 | 4 | **−71%** |
| R3 | Rebonds Golden State 2023-24 | 265 | 24 | **−91% 🏆** |
| R4 | Max points dans un match | 44 | 18 | **−59%** |
| R5 | Max points sur la saison | 62 | 48 | **−23%** |

> **Métrique utilisée** : `consistent gets` (nombre de blocs lus en mémoire par Oracle).  
> Plus la valeur est basse, plus la requête est efficace.

---

## 🌐 Présentation interactive

Un récapitulatif visuel du projet est disponible sur **GitHub Pages** :

🔗 **[https://imeneesh.github.io/NBADataOptimisation/](https://imeneesh.github.io/NBADataOptimisation/)**

Cette page présente pour chaque requête :
- Le code SQL
- Le plan d'exécution avant et après optimisation
- Les métriques comparées sous forme de graphique
- Les index créés et leur justification
- Le bilan global du projet

---

## 🗂️ Structure du projet

```
NBADataOptimisation/
│
├── 01_setup/
│   ├── 01_create_tables.sql       # Création des tables NBA
│   └── 02_insert_data.sql         # Insertion des données
│
├── 02_requetes/
│   ├── requete1_triple_double.sql  # R1 — Imene
│   ├── requete2_grands_joueurs.sql # R2 — Lina
│   ├── requete3_rebonds_equipe.sql # R3 — Lina
│   ├── requete4_max_points_match.sql # R4 — Lina
│   └── requete5_max_points_saison.sql # R5 — Lina
│
├── 03_optimisation/
│   ├── index_r1.sql               # Index B-tree pour R1 — Imene
│   ├── index_r2.sql               # Index B-tree pour R2 — Lina
│   ├── index_r3.sql               # Index B-tree pour R3 — Lina
│   ├── index_r4.sql               # Index B-tree pour R4 — Lina
│   └── index_r5.sql               # Index B-tree pour R5 — Lina
│
├── 04_resultats/
│   ├── avant_opt/                 # Plans d'exécution AVANT index (R1→R5)
│   └── apres_opt/                 # Plans d'exécution APRÈS index (R1→R5)
│
├── 05_presentation/
│   └── index.html                 # Dashboard interactif (GitHub Pages)
│
└── README.md                      # Ce fichier
```

---

## 🛠️ Outils utilisés

| Outil | Usage |
|---|---|
| **Oracle Database XE 21c** | Système de gestion de base de données |
| **SQL Developer** | Exécution des requêtes et analyse des plans |
| **EXPLAIN PLAN / AUTOTRACE** | Analyse des plans d'exécution Oracle |
| **Git + GitHub** | Versionnement et collaboration |
| **GitHub Pages** | Hébergement de la présentation HTML |

---

## 🗃️ Base de données

Source : [https://github.com/Jyyoungg/nba-sql-database](https://github.com/Jyyoungg/nba-sql-database)

Tables principales utilisées :

| Table | Description |
|---|---|
| `players` | Informations sur les joueurs (nom, taille, équipe…) |
| `teams` | Informations sur les équipes NBA |
| `games` | Matchs joués avec date et saison |
| `game_stats` | Statistiques par joueur par match (pts, reb, ast, stl, blk) |

---

## 👩‍💻 Répartition des tâches

| Tâche | Maouche Lina | Sahi Nour El Imene |
|---|---|---|
| Setup BDD (tables + données) | ✅ (clone) | ✅ (création) |
| R1 — Triple double | — | ✅ |
| R2 — Joueurs > 2m | ✅ | — |
| R3 — Rebonds équipe | ✅ | — |
| R4 — Max points match | ✅ | — |
| R5 — Max points saison | ✅ | — |
| Présentation index.html | ✅ (résultats R2→R5) | ✅ (résultats R1) |

---

## 📅 Date de présentation

**03 mai 2026** — Centre de calcul, Salle 204
