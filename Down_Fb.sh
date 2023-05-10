#! /bin/bash

echo ""
setterm -foreground blue
echo "  ⠀   ⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣶⣶⣶⣶⣤⣤⣄⡀⠀"⠀⠀⠀⠀⠀⠀
echo "⠀⠀  ⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀"⠀⠀⠀⠀
echo "⠀⠀⠀⠀  ⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣦⠀"⠀⠀
echo "⠀⠀⠀  ⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⢸⣿⣿⣿⣿⣷⡀"⠀
echo "⠀⠀⠀  ⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣤⣶⣶⣾⣿⣿⣿⣿⣿⣷"⠀
echo "⠀⠀  ⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄"
echo "⠀⠀⠀  ⢸⣿⣿⣿⣿⣿⣿⣿⠛⠛⠛⠀⠀⠀⠘⠛⠛⠛⣻⣿⣿⣿⣿⣿⣿⡇"
echo "⠀⠀⠀  ⠘⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠃"
echo "⠀⠀⠀⠀  ⢿⣿⣿⣿⣿⣿⣿⣶⣶⣶⠀⠀⠀⢰⣶⣶⣶⣿⣿⣿⣿⣿⣿⡿"⠀
echo "⠀⠀⠀⠀  ⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁"⠀
echo "⠀⠀⠀⠀⠀  ⠀⠻⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠟"⠀⠀⠀
echo "⠀  ⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⠀⠀⠀⢸⣿⣿⣿⣿⡿⠛⠁"⠀⠀⠀⠀
echo "⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠀⠀⠀⠘⠛⠛⠋⠁⠀⠀"⠀⠀⠀⠀⠀
echo ""
setterm -foreground cyan
figlet Down_Fb
echo ""

#MENÚ
echo "1) Descargar video de Facebook"
echo "2) Salir"
echo ""
echo -n "ØPCIÓN: "
read opcion
case $opcion in
1)
echo ""
echo -n "[▪︎]Ingrese la url del video Facebook: "
read videof
echo ""
python down.py -v $videof
exit
;;
2)
exit
esac
done
;;
