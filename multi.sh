
barra="\033[0m\e[34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "/root/multi.sh" > /bin/mko && chmod +x /bin/mko > /dev/null 2>&1

##SCRIPTS A INSTALAR

##OGENIOHACKER

SINCRONIZARPAINEL () {
      wget https://raw.githubusercontent.com/ogenio/Verificarusuario/master/checkduration.php && mv -f $HOME/checkduration.php /var/www/html/checkduration.php && chmod 777 /var/www/html/checkduration.php
}
SLOWDNS () {
      wget https://raw.githubusercontent.com/fabricio94b/VPS-MANAGER/main/SlowDNS/install; chmod +x install; ./install
}
PAINELV20 () {
    wget https://raw.githubusercontent.com/fabricio94b/Painel-v20/main/install; chmod +x install; ./install
}
HABILITARROOT () {
    wget -y; bash <(wget -qO- https://raw.githubusercontent.com/fabricio94b/HabilitarRoot/main/senharoot.sh)
}
BOTFREE () {
    wget https://raw.githubusercontent.com/fabricio94b/botfree/main/iniciar.sh -O iniciar.sh; chmod +x iniciar.sh; ./iniciar.sh
}
ATTSSL () {
    apt install wget -y; wget --no-check-certificate https://www.dropbox.com/s/v2hvhv8z86zlsqd/ssl.sh; chmod +x ssl.sh; ./ssl.sh
}
MENU () {
    clear
    menu
}

while true $x != "ok"
do
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[45;1;37m            ○ VERIFICAR USUÁRIO ○  @oogeniohacker          \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[1;31m  [\033[1;36m 1° \033[1;31m] \033[1;37m• \033[1;33MMODIFIQUE O DIRETÓRIO DO APP RGN ATUALZADO
\033[1;31m  [\033[1;36m  \033[1;31m] \033[1;37m \033[1;33mProcure por (painel) ou (check) Linha 6705
\033[1;31m  [\033[1;36m 2° \033[1;31m] \033[1;37m• \033[1;33m Subistua pelo seu Ip ou Domínio do Painel Web
\033[1;31m  [\033[1;36m EXEMPLO 1: \033[1;31m] \033[1;37m \033[1;33mhttp://SEUIP/var/www/html/checkduration.php
\033[1;31m  [\033[1;36m EXEMPLO 2: \033[1;31m] \033[1;37m \033[1;33mhttp://SEUDOMINIO/var/www/html/checkduration.php
\033[1;31m  \033[1;36m 
\033[1;31m  [\033[1;36m DIGITE 01 PARA \033[1;31m] \033[1;37m \033[1;33mINSTALAR VERIFICADOR DE USUÁRIO
\033[1;31m  [\033[1;36m 00 \033[1;31m] \033[1;37m• \033[1;37mSAIR"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo -ne "\033[1;32m O QUE DESEJA FAZER \033[1;33m?\033[1;31m?\033[1;37m : "; read x

case "$x" in 
   1 | 01)
   clear
   SINCRONIZARPAINEL
echo -e "\033[1;33mAUTO VERIFICADOR DE USUÁRIO ATIVADO COM SUCESSO \033[0m"
\033[1;31m  [\033[1;36m DIGITE ENTER \033[1;31m] \033[1;37mPARA \033[1;37mSAIR"
   exit;
   ;;
    2 | 02)
   clear
   SLOWDNS
   exit;
   ;;
   3 | 03)
   clear
   PAINELV20
   exit;
   ;;
    4 | 04)
   clear
   HABILITARROOT
   exit;
   ;;
   5 | 05)
   clear
   BOTFREE
   exit;
   ;;
   6 | 06)
   clear
   ATTSSL
   exit;
   ;;
    7 | 07)
   clear
   MENU
   exit;
   ;;
   0 | 00)
   echo -e "\033[1;31mSaindo...\033[0m"
   sleep 2
   clear
   exit;
   ;;
   *)
   echo -e "\n\033[1;31mOpcao invalida !\033[0m"
   sleep 2
esac
done
}
#fim
