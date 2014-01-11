# Les calculs

## Généralités

Tout d'abord pour faire un calcul, il faut déclarer une variable.


<pre><code class="c">int resultat = 0;

	resultat = 5 + 3;
	printf("5 + 3 = %d", resultat);
</code></pre>

<pre><code class="c">5 + 3 = 8
</code></pre>

*Ici, on déclare la variable resultat et ça valeur est le résultat de l'addition 5+3*  

Dans le cas où le résultat ne tombe pas juste, l'ordinateur va arrondir en gardant que la partie entière du résultat

<pre><code class="c">int resultat = 0;

	resultat = 5 / 2;
	printf("5 / 2 = %d", resultat);
</code></pre>

<pre><code class="c">5 / 2 = 2
</code></pre>

Pour que le résultat soit exact il faut déclarer un double à la place d'un int, et surtout ajouter un fichre après la virgule aux opérateurs du calcul.

<pre><code class="c">double resultat = 0;

	resultat = 5.0 / 2.O;
	printf("5 / 2 = %f", resultat);
</code></pre>

<pre><code class="output">5 / 2 = 2.500000
</code></pre>

*texte italique*

**texte en gras*

Colonne 1   | Colonne 2
------------|----------
valeur      |valeur


<pre><code class="c">le code
	suite du code
</code></pre>