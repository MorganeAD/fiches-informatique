Titre de la note
================

Sous titre
----------

Blablabla

_Blabla_

**Gras**

lalal http://cv.kivutar.me lalala

 * puce 1
 * puce 2
 * puce 3

Bla !

<pre><code class="c">#include <stdlib.h>
#include <stdio.h>
#include <SDL/SDL.h>

int main( int argc, char *argv[ ] )
{
    SDL_Surface *screen;
    SDL_Surface *image;

    SDL_Rect pos;

    pos.x = 0;
    pos.y = 0;

    if( SDL_Init( SDL_INIT_VIDEO ) == -1 )
    {
        printf( "Can't init SDL:  %s\n", SDL_GetError( ) );
        return EXIT_FAILURE;
    }

    atexit( SDL_Quit ); 
    screen = SDL_SetVideoMode(1440, 900, 32, SDL_HWSURFACE | SDL_DOUBLEBUF | SDL_FULLSCREEN );

    if( screen == NULL )
    {
        printf( "Can't set video mode: %s\n", SDL_GetError( ) );
        return EXIT_FAILURE;
    }

    image = SDL_LoadBMP("foo.bmp");

    SDL_BlitSurface(image, NULL, screen, &pos);

    SDL_Flip(screen);

    SDL_Delay( 10000 );

    return EXIT_SUCCESS;
}</code></pre>

C'était du code
