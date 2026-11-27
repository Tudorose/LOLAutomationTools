<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | **Français** | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | <a href="./README.pt.md">Português</a> | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Ceci est une traduction communautaire (français) du [README en chinois simplifié](./README.md). Les PR de correction sont les bienvenues.

# Introduction
**LOLAutomationTools** est un outil d'extension de fonctions pour **"League of Legends"** ; il est utilisé pour aider les joueurs à effectuer certaines opérations client simples afin de gagner un peu de temps dans certaines scènes où ils ne peuvent pas libérer leurs mains ou doivent partir temporairement ; le logiciel n'interférera pas trop avec la compréhension et le gameplay du jeu par le joueur, donc certaines fonctions doivent encore être configurées manuellement (comme la configuration des runes de héros). Trop de retenue engourdira les gens et leur fera perdre le plaisir du jeu lui-même ; jouez activement et joyeusement pour construire un environnement harmonieux.

# Fonctionnalités
- Auto-pick
  - Pré-pick
- Auto-ban
  - Ignorer la sélection de l'équipe
  - Mode groupe désactivé
- Pick aléatoire
- Anti-dodge en pick/ban
- Auto-acceptation
  - Retard dans l'acceptation des jeux
- Créer un salon
- Trouver une partie
  - Détection du délai de correspondance
- Échange
  - Échangez des héros en mode aléatoire
    - Ou simplement accepter passivement que d'autres joueurs échangent leurs héros
    - Rejeter les échanges de héros non choisis
  - Sélection d'échange de mode Omen
    - Ou recevez passivement les sélections d'échange de positions des autres joueurs
    - Rejeter les échanges de bits non présélectionnés
  - Échange d'étages en mode recrutement
    - Ou simplement accepter passivement que d'autres joueurs changent d'étage
    - Rejeter les échanges d'étage non configurés
- Passer la page d'honneur
- Passer la page de déverrouillage
- Réponse auto du chat
  - Répondre au message d'un ami en votre absence
  - Répondez aux invitations à des jeux en votre absence
    - Refuser l'invitation au jeu en partant
- Fenêtre auxiliaire
  - Affichage BUFF de la balance des héros du mode divertissement
  - Appliquer automatiquement les runes
  - Correction d'erreur runique
  - Configuration indépendante du héros
- Fermer le jeu auto.
- Reconnexion auto.
- Recevez automatiquement des récompenses de pass (y compris Teamfight Tactics)
- Traitement des demandes d'ami
  - Supprimer des amis par lots
- carrière personnalisée
  - Contexte de carrière
  - Avatar de l'invocateur
  - statut du client
  - signature de statut
  - fragment de nom
  - Points de réussite du héros
  - Clair portant des médailles
- Blocage des touches de fonction
- Requête d'enregistrement
  - Envoyer les résultats
  - Détection de piratage dans le jeu
  - Les joueurs regardent le match
  - Rapports des joueurs après le match
- Appeler au bureau
- liste noire
- Paramètres des touches de raccourci
- Paramètres du thème
  - Thème sombre/clair
  - Thème adaptatif
  - Thème personnalisé
  - Paramètres de l'image d'arrière-plan
  - Personnalisation des polices
- Fonctions étendues
  - Sélection automatique des cartes (Card Master)

## Auto-pick
Avant d'utiliser **Select Hero** et **Disable Hero**, vous devez effectuer des opérations d'édition sur la page de configuration (bouton derrière l'élément de commutation).

Les éléments de héros ajoutés dans les paramètres de branche ne prennent effet que dans certains modes de jeu avec *positions présélectionnées* (comme *Qualifié* et *Extreme Blitz*), les éléments aléatoires ne prennent effet que dans les modes *Random Hero* (comme *Arcs*, *Infinite Brawl*, la page de configuration aléatoire n'est pas incluse dans la configuration du héros désactivé), et sont généralement valables dans tous les autres modes (à l'exclusion des modes précédemment répertoriés, ceci dans un souci de spécifications d'utilisation). Lors de la sélection automatique du héros, le héros sera sélectionné conformément à **Sélectionner les héros** Les éléments de configuration sont sélectionnés de haut en bas.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pré-pick
La logique d'exécution de cette fonction est fondamentalement la même que celle de **Select Heroes**. La différence est que les **Héros présélectionnés** ne prendront effet que dans les modes avec des niveaux désactivés, tels que *Qualifié* et certains modes de divertissement qui nécessitent des héros désactivés.

## Auto-ban
La page de configuration **Désactiver Hero** est fondamentalement la même que la page de configuration **Sélectionner Hero**. Seulement il y a un bouton pour changer de mode dans le coin supérieur droit. Cliquez sur le bouton pour passer en mode désactivé.

*Mode d'interdiction normale* : La logique de fonctionnement de ce mode est cohérente avec la page de configuration de **Select Heroes**. Lors de l'exécution du bannissement automatique des héros, si aucun héros désactivé n'est configuré, le joueur sera banni dans 0 seconde du temps restant de la phase de bannissement.

*Mode de désactivation de groupe* : les éléments de la liste de configuration seront remplacés par les héros correspondants dans la configuration **Sélectionner les héros**. Lorsque vous sélectionnez un élément, double-cliquez sur l'élément du héros à gauche pour l'ajouter au **Groupe désactivé** du héros. Lors de la désactivation automatique du héros, l'ordre des éléments de configuration de **Sélectionner les héros** sera suivi. S'il n'y a aucun héros à désactiver dans le **Groupe de désactivation** de toutes les configurations **Sélectionner les héros**, ils seront désactivés selon la logique du mode de bannissement normal.

>Si *Ignorer la présélection des coéquipiers* est activé, la détection de la présélection de l'équipe sera ignorée lors de l'exécution d'un bannissement automatique du héros. Il n'est pas recommandé d'activer cette option.

## Auto-acceptation
Acceptez automatiquement la correspondance après avoir été mise en correspondance.

>Lorsque l'option *Délai d'acceptation des matchs* est activée, **Accepter les matchs** n'acceptera automatiquement le match que lorsque la dernière seconde du compte à rebours d'acceptation sera écoulée.

## Créer un salon
Vous pouvez créer une correspondance manuellement via le bouton **Créer une correspondance** ou activer ce commutateur pour créer une correspondance automatiquement.

>*Créer automatiquement un jeu* Vous devez sélectionner le mode de jeu que vous souhaitez créer dans *Plus de paramètres*, cette option ne sera pas enregistrée dans la configuration.

## Trouver une partie
Rechercher automatiquement des correspondances. Cela ne prendra effet que lorsque vous serez dans une salle en mode match et que vous serez le propriétaire de l'équipe (hôte).

>Si l'option *Timeout Detection* est activée, les correspondances seront automatiquement recherchées dans la file d'attente des correspondances si l'estimation de la file d'attente dépasse l'intervalle spécifié.

## sauter les compliments
Évitez la page de félicitations des coéquipiers à la fin de la partie.

## Passer la fin de partie
Évitez l'attente du règlement à la fin du jeu (écran noir se chargeant en cercles) ou la page de règlement d'après-match, et revenez dans la salle du mode jeu.

## Échange
Contient l'élément de commutation principal et trois éléments de commutation indépendants, vous devez également effectuer d'autres réglages. Dans la **Fonction d'échange** plus de paramètres, définissez s'il faut échanger des héros avec des coéquipiers en mode héros aléatoire ou échanger des étages (l'ordre dans lequel les héros sont sélectionnés) et des emplacements présélectionnés avec des coéquipiers en mode recrutement.

*Le paramétrage de l’échange de héros et d’échange de positions est relativement simple, je n’entrerai donc pas dans les détails ici. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

Dans **Plus de paramètres** de **Exchange Floors**, vous pouvez définir l'ordre d'échange (c'est-à-dire les étages) et le mode d'échange.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Mode d'échange* :
- Ordre cible uniquement : acceptez les demandes des coéquipiers conformes à l'*ordre* spécifié.
- Contient la priorité cible : Acceptez les demandes des coéquipiers ≤ l'*ordre* spécifié.
- Ordre de report avec objectif : Accepter les demandes des coéquipiers ≥ l'*ordre* spécifié.
- Portée basée sur l'ordre cible : accepte les demandes des coéquipiers avec *ordre* ≤ (*ordre spécifié* - *portée*) et *ordre* ≥ (*ordre spécifié* + *portée*).

De plus, il existe deux options d'échange de refus dans **Autres paramètres**. Lorsque ces deux éléments sont activés**, si un coéquipier demande à échanger des héros avec vous ou sélectionne une position qui n'est pas dans les conditions déterminées, la demande d'échange sera automatiquement rejetée. **Sinon** aucune mesure ne sera prise. Vous pouvez décider d’accepter ou non l’échange.

## Anti-dodge en pick/ban
Lorsque cette option est activée, **Select Hero** ou **Disable Hero** sera exécuté à la dernière seconde de la phase BP.

>Vous pouvez modifier les paramètres de mode de la fonction **Ban Selected Heroes Anti-Return** sur la *Page Paramètres de fonction*.

## Réponses d'absence
Cet élément de commutation est l'interrupteur principal et vous devez effectuer d'autres réglages. Dans la page de configuration **Plus**, définissez s'il faut répondre automatiquement aux messages d'amis ou aux invitations à des jeux lorsque vous quittez (ceux-ci sont activés par défaut) et définissez le contenu textuel de la réponse.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Fenêtre auxiliaire
Lorsqu'elle est activée, une **fenêtre supplémentaire** s'affichera pendant certaines phases du client. De plus, vous pouvez cliquer sur le bouton derrière ce commutateur pour accéder à la **Page de configuration** de la **Fenêtre supplémentaire**, où vous pouvez également afficher les **Attributs d'équilibre** (le cas échéant) du héros dans le mode de divertissement actuellement disponible, et configurer la configuration des runes et la configuration indépendante du client disponibles dans chaque mode.

**Fenêtre supplémentaire** Page de configuration</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Si vous souhaitez ajouter ou mettre à jour la configuration des runes du héros sur la **Page de configuration des runes**, vous devez sélectionner une page de runes dans **Collections - Runes** dans le client du jeu, la modifier et l'enregistrer, modifier les compétences d'invocateur dans le coin supérieur droit et appuyer sur le bouton **Ajouter une configuration** ou sur le bouton *Mettre à jour la configuration actuelle du jeu avec cette configuration* dans **Élément de configuration des runes** à mettre à jour pour ajouter ou mettre à jour la configuration des runes.

**Fenêtre supplémentaire**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Fermer le jeu auto.
Simple et direct, le processus de jeu se ferme automatiquement lorsque l'animation de fin de cristal est jouée à la fin de la partie.

## Reconnexion auto.
Essayez de vous reconnecter lorsque le jeu doit se reconnecter.

## Carte auto (extension)
Lorsque le héros actuellement en jeu est un maître de cartes, utilisez les touches Z/X/C pour sélectionner automatiquement les cartes bleues/rouges/jaunes.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Cette fonction est implémentée à l'aide de traitements graphiques et de simulation de clavier. Il teste uniquement les deux résolutions couramment utilisées (1920x1080/2560x1440). Les autres résolutions ne peuvent pas être utilisées normalement sans auto-configuration (en particulier les résolutions autres que le rapport d'échelle 16:9). La détection autorise une certaine plage de filtre, mais il est recommandé de ne pas activer le filtre lors de l'utilisation de cette fonction pour éviter d'invalider une certaine détection.

---

# Extensions (tiers)

>Le contenu décrit dans cette section est géré par Tudorose, et non par l'auteur hôte. L'hôte `LOLAutomationTools` et sa configuration d'origine (`Config/`) appartiennent à © Lianxin, et ce référentiel n'y apporte aucune modification.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Modules

|module|Explication en une phrase|Détails|
|---|---|---|
| **VoiceModule** |Appuyez et maintenez la touche de raccourci pour parler, et le texte sera envoyé au chat du jeu après reconnaissance locale.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Greffer la fenêtre d'enregistrement OP.GG de Séraphine sur la page "Fonctions étendues"| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Démarrage rapide

### 1. Préparez l'hôte
Téléchargez `LOLAutomationTools` (≥ 2.9.801) depuis [page de version en amont] (https://github.com/Seraph1ne/LOLAutomationTools/releases) et extrayez-le dans n'importe quel répertoire, qui sera enregistré sous `<宿主目录>` ci-dessous.
Ce référentiel **ne distribue pas** de programmes hôtes.

### 2. Téléchargez le modèle de discours
VoiceModule nécessite un modèle ASR au format sherpa-onnx (environ 254 Mo). Ce référentiel **ne distribue pas** le modèle. Pour l'adresse de téléchargement et la disposition du répertoire, voir [voice-module/README.md → Model Download] (voice-module/README.md#模型下载).

### 3. Installation en un clic
Exécutez (PowerShell) dans le répertoire racine de cet entrepôt :
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Possibilités :
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
Le script va automatiquement : Télécharger la version `VoiceModule-latest.zip` → Arrêter l'hôte → Copier la dll/pdb → Écrire `exe.config` (existe sans écrasement) → Placer la configuration par défaut sur `Extend/` (existe déjà sans écraser) → Copier le modèle.

### 4. Activer
Lancez `LOLAutomationTools.exe` → **Fonctions étendues** sur la gauche → **Regroupement vocal** → Activez le commutateur **Voix vers texte**. Appuyez et maintenez `空格` pour parler, relâchez pour envoyer au chat d'équipe.

## Téléchargement

|document|illustrer|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Module compilé + configuration par défaut (~275 Ko)|

## Licence

|contenu|licence|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Première moitié (héberger le contenu original)|© Lian Xin, propriété d'Upstream|
|`LOLAutomationTools.exe` et ses bibliothèques associées|© Lian Xin, **non distribué dans ce référentiel**|
|Séraphine (dépendance du lanceur OP.GG)|[GPL-3.0] (https://github.com/ZhangBin-000/Seraphine), **non distribué dans ce référentiel**|
|modèle d'exécution/ASR sherpa-onnx|[Apache-2.0] (https://github.com/k2-fsa/sherpa-onnx), **non distribué dans ce référentiel**|

## Remerciements
- [Seraph1ne/LOLAutomationTools] (https://github.com/Seraph1ne/LOLAutomationTools) —— Programme hôte
- [ZhangBin-000/Seraphine] (https://github.com/ZhangBin-000/Seraphine) —— Source de la fenêtre OP.GG
- [k2-fsa/sherpa-onnx] (https://github.com/k2-fsa/sherpa-onnx) —— Reconnaissance vocale hors ligne

