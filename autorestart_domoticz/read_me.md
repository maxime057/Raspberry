Utilisez Cron pour programmer un programme

Cron est un utilitaire de configuration et de planification de travaux sur les systèmes de type Unix. Il vous permet de planifier des programmes que vous souhaitez exécuter à intervalles fixes ou périodiquement.

La fonctionnalité de Cron repose sur le démon crond, qui est un service d'arrière-plan qui exécute les programmes planifiés dans la crontab. Tous les programmes planifiés sur le système résident dans la table des tâches cron ou crontab.

Vous devrez donc modifier ce tableau pour ajouter un calendrier pour le programme que vous souhaitez exécuter au démarrage. Voici comment procéder:

    Ouvrez la CLI sur votre Raspberry Pi et entrez crontab -e pour modifier la table des tâches cron crontab. Si vous ouvrez crontab pour la première fois, vous devrez sélectionner un éditeur. Vous pouvez choisir votre éditeur préféré ou continuer avec Nano. Dans les deux cas, entrez le nomde l'éditeur et appuyez sur Entrée .
    Pour faire une entrée dans la table cron, entrez la commande: @reboot python3 /home/pi/PiCounter/display.py & . Dans votre commande, assurez-vous de remplacer le nom du programme et son chemin.

    Appuyez sur CTRL + O pour écrire la ligne dans la crontab.
    Type redémarrage sudo dans le terminal pour redémarrer votre Pi.

Cron devrait maintenant exécuter votre programme chaque fois que votre Pi démarre. Si vous souhaitez arrêter ce programme, supprimez la commande dans crontab.

On ajoute la ligne suivante dans la crontab :

* * * * * /home/pi/domoticz/scripts/verif_domoticz.sh
