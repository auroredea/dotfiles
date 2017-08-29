# Key bindings

*Disclaimer : Partie écrite en français. Ces contrôles fonctionnent chez moi mais il peut y avoir quelques différences avec vos systèmes respectifs.*

Ces commandes sont parfois définies dans mon `.vimrc.local`

## VIM

### Commandes d'ouverture

Key | Description
:---: | ---
<kbd>i</kbd> | mode insertion sous le curseur
<kbd>a</kbd> | mode insertion après le curseur 
<kbd>o</kbd> | mode insertion une ligne en-dessous
<kbd>O</kbd> | mode insertion une ligne au-dessus
<kbd>v</kbd> | mode visuel
<kbd>R</kbd> | mode remplacement
<kbd>;</kbd><kbd>;</kbd> | mode normal (redéfini avec <kbd>Echap</kbd>)

### Commandes d'enregistrement

Key | Description
:---: | ---
`:w` | enregistrer
`:q` | quitter
`:sav <fic>` | sauvegarder sous
`:enew` | nouveau fichier

### Copier Coller

Key | Description
:---: | ---
<kbd>d</kbd><kbd>d</kbd> | couper la ligne
<kbd>x</kbd> | couper le caractère sous le curseur
<kbd>p</kbd> | coller après le curseur
<kbd>P</kbd> | coller avant le curseur
<kbd>y</kbd><kbd>y</kbd><kbd>p</kbd>| dupliquer la ligne 
<kbd>y</kbd> | copier la sélection
<kbd>o</kbd><kbd>Ctrl</kbd>+<kbd>r</kbd><kbd>"</kbd> | coller dans une nouvelle ligne en-dessous
<kbd>O</kbd><kbd>Ctrl</kbd>+<kbd>r</kbd><kbd>"</kbd> | coller dans une nouvelle ligne au-dessus
<kbd>"</kbd><kbd>+</kbd><kbd>y</kbd> | copier dans le buffer (mode visuel)
<kbd>Ctrl</kbd>+<kbd>r</kbd><kbd>+</kbd> | coller dans le buffer (mode insertion)

### Indentation 

Key | Description
:---: | ---
<kbd>></kbd> | Indenter
<kbd><</kbd> | Désindenter 
`:retab!` | Re-indenter tout le fichier 

### Annulation

Key | Description
:---: | ---
<kbd>u</kbd> | Annuler
<kbd>Ctrl</kbd>+<kbd>r</kbd> | Refaire

### Déplacements

Key | Description
:---: | ---
<kbd>g</kbd><kbd>g</kbd> | Aller au début du fichier
<kbd>G</kbd><kbd>G</kbd> | Aller à la fin du fichier
`:3` | Aller à la ligne 3
<kbd>^</kbd><kbd>^</kbd> | Aller au début de la ligne (premier non-espace)
<kbd>$</kbd> | Aller à la fin de la ligne
<kbd>e</kbd> | Aller à la fin du mot
<kbd>w</kbd> | Aller au début du mot
<kbd>b</kbd> | Aller au début du mot précédent

**Note**: Pour aller plus loin et plus vite, il est possible de rajouter des chiffres avant ces 3 dernière commandes. Exemple : `3e` ira au 3e prochain mot (à la fin)

### Chercher et Remplacer 

Key | Description
:---: | ---
`/mot`+<kbd>Enter</kbd> | Cherche mot et surligne les occurrences
<kbd>n</kbd> | Aller à la prochaine occurrence
<kbd>N</kbd> | Aller à l'occurrence précédente
`:s/old/new/g` | Remplace toutes les occurrences sur la ligne
`:s/old/new/gc` | Remplace toutes les occurrences sur la ligne avec confirmation
`:%s/old/new/g` | Remplace toutes les occurrences
`:g/old/d` | Supprime toutes les lignes contenant le pattern
`:g!/old/d` | Supprime toutes les lignes ne contenant pas le pattern
<kbd>r</kbd> | Remplace sous le curseur
