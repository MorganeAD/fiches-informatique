# Les Variables

## Généralités

La RAM possède des adresses afin de stocker une valeur.

Adresse   | Valeur
----------|--------
0         |145
1         |3.8028
2         |0.827551
...       |
3448765...|940.5786

## Différents types de variable

Nom du type   |Min        |Max
--------------|-----------|----------
signed char   |-127       |127
int           |-32767     |32767
long          |-2147483647|2147483647
float|-1x1037 |1x1037     |
double        |-1x1037    |1x1037
unsigned char |0          |255
unsignrd int  |0          |65534
unsigned float|0          |4294967295

Les types signed char, int et long permettent de stocker des nombres entiers. Les types float et double permettent de stocker des nombres décimaux, appelés flottant.


## Déclarer une variable

Pour déclarer une variable il suffit d'écrire:

<pre><code class="c">if (condition 1) // SI
int nombreDeVies;
</code></pre>

*Ici, on déclare une variable sans valeur*

<pre><code class="c">if (condition 1) // SI
int nombreDeVies = 5;
</code></pre>

*Maintenant, la variable est initialisée à 5*

Pour déclarer une constante il suffit d'écrire:

<pre><code class="c">if (condition 1) // SI
const int NOMBRE_DE_VIES_INITIALES = 5;
</code></pre>

*Pour plus de comprehension il vaut mieux écrire les variables en minuscule et les constante en majuscule.

