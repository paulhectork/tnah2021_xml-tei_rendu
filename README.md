# ÉDITION CRITIQUE DES *CHRONIQUES* DE JEAN FROISSART EN XML-TEI


![Froissart bloublou](froissart.jpg)

Encodage critique du chapitre **SHF 306** : *Négogiation du mariage du Duc de Berry*

### Structure du dépôt
- **`dossier racine`**:
	- `froissart.xml` : l'encodage des trois témoins en XML-TEI
	- `froissart_xquery_createlem.xq` : la requête xquery utilisée pour transformer les éléments `rdg` en `lem` en fonction de la valeur de leur attribut `@wit`
	- `froissart.jpg` : une petite image pour décorer le présent README
	- `LICENSE` : la licence MIT sous laquelle est ce projet
	- `README.md` : le présent document
- **`attributs_valeurs`** : trois tableaux listant les valeurs possibles pour des attributs fréquemment utilisés : `persName`, `placeName` et `corresp`.
- **`collatex`** : les collations effectuées avec Collatex : script utilisé et collation produite par Collatex, utilisée comme base de la présente édition critique
- **`odd_documentation`** : l'ODD au format `.xml` et sa transformation aux formats `.rng`, `.dtd` et `.html`.
- **`textes`** : le contenu textuel des trois témoins, utilisés comme source pour la collation effectuée avec Collatex.
