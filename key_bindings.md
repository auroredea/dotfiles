# Key bindings

*Disclaimer : Partie écrite en français. Ces contrôles fonctionnent chez moi mais il peut y avoir quelques différences avec vos systèmes respectifs.
* Ces commandes sont parfois définies dans mon `.vimrc.local`

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
<kbd>O</kbd><kbd>Ctrl</kbd>+<kbd>r</kbd><kbd>"</kbd> | coller dans une nouvelle ligne en-dessus
<kbd>"</kbd><kbd>+</kbd><kbd>y</kbd> | copier dans le buffer (mode visuel)
<kbd>Ctrl</kbd>+<kbd>r</kbd><kbd>+</kbd> | coller dans le buffer (mode insertion)
