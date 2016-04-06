" ============================================================================
" General Configuration
" ============================================================================
" VIM Configuration - Vincent Jousse
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
set nocompatible

" Activation de pathogen
call pathogen#infect()

" -- Affichage
set title                 " Met a jour le titre de votre fenetre ou de
                          " votre terminal
set number                " Affiche le numero des lignes
set ruler                 " Affiche la position actuelle du curseur
set wrap                  " Affiche les lignes trop longues sur plusieurs
                          " lignes

set scrolloff=3           " Affiche un minimum de 3 lignes autour du curseur
                          " (pour le scroll)

" -- Recherche
set ignorecase            " Ignore la casse lors d'une recherche
set smartcase             " Si une recherche contient une majuscule,
                          " re-active la sensibilite a la casse
set incsearch             " Surligne les resultats de recherche pendant la
                          " saisie
set hlsearch              " Surligne les resultats de recherche

" -- Beep
set visualbell            " Empeche Vim de beeper
set noerrorbells          " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Affiche toujours la barre de statut et la force en mode texte
set laststatus=2
set guioptions-=e

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on

" Utilise la version claire de Solarized
set background=light
colorscheme solarized

" Touche mapleader
let mapleader = ","
" Les ; sont rarement utilisés les uns à la suite des autres, remplace <echap>
imap ;; <Esc>
map ;; <Esc>

" Afficher les espaces
set list lcs=trail:·,precedes:«,extends:»,eol:↲,tab:»·
" Tabulation à deux espaces, permet :retab des tabs -> espaces
set shiftwidth=2     " Indentation à deux espaces
set tabstop=2        " Indentation à deux espaces
set expandtab

" Eviter que le fuzzy matching ne regarde dans les fichiers non voulus
set wildignore+=*/tmp/*,*.so,*.swp,*.o,*.obj,*.rbc,*.zip,*.pyc,*.class,*.jar,*.exe,*.so,*.dll,*/target/*,*/output/*,*.cache,*/classes/*,*/out/*

" ============================================================================
" Local Customization
" ============================================================================
" If the file exists, load local configurations.
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
