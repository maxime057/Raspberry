#!/bin/bash
# Script qui vérifie l'état de domoticz et qui relance si off

now=$(date) #récupération de la date et heure pour les logs

#Récupération du retour de la commande de status
domoticz=$(sudo service domoticz.sh status)

#echo $domoticz

if [[ "$domoticz" != *"running"* ]] # Si le service n'est pas running
then
 echo "on relance"
 relance=$(sudo service domoticz.sh restart) #On le relance
 echo "$now relance : $relance" #On log la lancement
 curl "https://api.telegram.org/botXXXXXXXXXXX/sendMessage?chat_id=XXXXXXX&text=Domoticz offline, Domoticz vient d'être redémarré!"
else
 echo "$now Domoticz lancé" #On log l'état normal
fi

exit 0
