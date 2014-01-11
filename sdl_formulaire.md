# Formulaire SDL

## Inclure SDL

Sur Archlinux, il faut au préalable l'avoir télécharger.

<pre><code class="output">sudo pacman -S sdl
</code></pre>

Pour compiler un fichier .c avec des fonctions SDL il faut écrire

<pre><code class="output">gcc -lSDL main.c -o main
</code></pre>

## Charger et arrêter SDL

Pour des soucis de mémoire il faut toujour encadrer le bout de code utilisant la sdl par les fonctions init et quit.

<pre><code class="c">SDL_Init(SDL_INIT_VIDEO);
	//le code utilisant SDL
	SDL_Quit();
</code></pre>

Les constantes pour le chargement de SDL:

* SDL_INIT_VIDEO *système d'affichage*
* SDL_INIT_AUDIO *système de son*
* SDL_INIT_CDROM *système de cdrom*
* SDL_INIT_JOYSTICK *système de joystick*
* SDL_INIT_EVERYTHING *tous les systèmes précedents*

Donc si on a beaucoup que des systèmes vidéo et audio on peut écrire:

<pre><code class="c">SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO);
</code></pre>

## Pour afficher si une erreur produite

<pre><code class="c">#include <stdlib.h>
#include &#60;stdio.h&#62;
#include &#60;SDL/SDL.h&#62;
 
int main(int argc, char *argv[])
{
    if (SDL_Init(SDL_INIT_VIDEO) == -1) // Démarrage de la SDL. Si erreur :
    {
        fprintf(stderr, "Erreur d'initialisation de la SDL : %s\n", SDL_GetError()); // Écriture de l'erreur
        exit(EXIT_FAILURE); // On quitte le programme
    }
 
 
    SDL_Quit();
 
    return EXIT_SUCCESS;
}
</code></pre>

## Affichage d'une fenêtre

<pre><code class="output">SDL_SetVideoMode()
</code></pre>

Cette fonction a quatre paramètre: largueur, hauteur, nombre de couleurs (bit/pixel) et options (flags).  

Les constantes de cette fonction sont les suivantes:

* SDL_HWSURFACE *données chargées dans la mémoire vidéo*
* SDL_SWSURFACE *données chargées dans la mémoire système*
* SDL_RESIZABLE *fenêtre redimensionnable, faux par défaut*
* SDL_NOFRAME *la fenêtre n'aura pas de barre de tire ni de bordure*
* SDL_FULLSCREEN *mode plein écran*
* SDL_DOUBLEBUF *mode double buffering pour une image plus "fluide"*

