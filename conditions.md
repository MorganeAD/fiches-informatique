# Les Conditions

## Signes de comparaison

Noms                   |Symboles
-----------------------|--------
est égal à             |==
est supérieur à        |>
est supérieur ou égal à|>=
est inférieur à        |<
est inférieur ou égal à|<=
est différent de       |!=

## Signes pour plusieurs conditions

Noms|Symboles
----|--------
ET  |&&
OU  |&#124;&#124;
NON |!


## Condition if

Les mots-clés if, else if, else signifient respectivement "si", "sinon si", "sinon". On peut écrire autant de else if que l'on désire.

<pre><code class="c">if (condition 1) // SI
{
    //le code;
}
else if (condition 2) //SINON SI
{
    //le code;
}
else //SINON ...
{
    //le code;
}
</code></pre>

## Booléen

Un booléen est une variable qui peut prendre seulement deux valeurs, 0 ou 1.

<pre><code class="c">int age = 20;
int majeur = 0;
  
majeur = age >= 18;

if (majeur)
{
    printf("Tu es majeur !");
}
else
{
    printf("Tu es mineur");
}
</code></pre>

*Ici, la condition age >= 18 est respectée, alors majeur vaut 1, c'est à dire VRAI. La console va afficher "tu es majeur !".*

## Condition switch

Si je n'ai qu'une seule variable à vérifier, le switch permet de rendre le code plus clair, plus lisible qu'avec plusieurs condition if

<pre><code class="c">switch (age)
{
case 2:
  printf("Salut bebe !");
  break;
case 6:
  printf("Salut gamin !");
  break;
case 12:
  printf("Salut jeune !");
  break;
case 16:
  printf("Salut ado !");
  break;
case 18:
  printf("Salut adulte !");
  break;
case 68:
  printf("Salut papy !");
  break;
default:
  printf("Je n'ai aucune phrase de prete pour ton age  ");
  break;
}
</code></pre>

## Condition ternaire

C'est une conditions très concises qui permettent d'affecter rapidement une valeur à une variable en fonction du résultat d'un test

<pre><code class="c">autorisation = (age >= 18) ? 1 : 0;
</code></pre>

*Ici, si l'age est supérieur à 18 alors l'autorisation vaudra 1 c'est à dire VRAI sinon elle vaudra 0*