Ces script vous permettent d'installer node/npm et maven temporairement sur l'espace disque local (/espace, pour raison de vitesse I/O) de la machine au crémi sur laquelle vous ouvrez une session. Les dossiers de cache sont aussi redirigés vers /tmp pour une même raison.

## Usage
Vous pouvez exécuter ces scripts manuellement suite à chaque ouverture de session en lançant:

```bash
$ source /path/to/install_node.sh
$ source /path/to/install_maven.sh
```
Pour le faire automatiquement, il suffit d'ajouter les lignes suivantes à la fin du fichier `~/.profile` dans votre compte:

```bash
if [ "$HOSTNAME" !=  "jaguar" ]; then
        source /path/to/install_node.sh
        source /path/to/install_maven.sh
fi
```