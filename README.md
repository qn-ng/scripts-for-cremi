Ces scripts vous permettent d'installer:

- Nodejs et npm
- Maven
- Intellij Idea (Ultimate)

dans la machine au CREMI sur laquelle vous ouvrez une session. Les binaires sont installés dans l'espace disque local `/espace`, les dossiers de config/cache sont redirigés vers `/tmp` en raison de quota d'espace personnel et de vitesse I/O.

## Usage
Vous pouvez exécuter ces scripts manuellement suite à chaque ouverture de session en lançant:

```bash
$ source /path/to/install_node.sh
$ source /path/to/install_maven.sh
$ source /path/to/install_idea.sh
```
Pour le faire automatiquement, il suffit d'ajouter les lignes suivantes à la fin du fichier `~/.profile` dans votre compte:

```bash
if [ "$HOSTNAME" !=  "jaguar" ]; then
        source /path/to/install_node.sh
        source /path/to/install_maven.sh
        source /path/to/install_idea.sh
fi
```

⚠️ **Pensez à supprimer les binaires installés (dans `/espace/$USER` par défaut) avant de vous déconnecter afin de libérer l'espace pour les autres utilisateurs.**