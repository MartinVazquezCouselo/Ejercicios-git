#!bin/bash
        
    function menu() {
        usuario=`whoami`
        echo `clear`
        echo "-----------------------------------------------"
        echo " O usuario co que esta conectado é "$usuario 
        echo "-----------------------------------------------"
        echo "                                                           "
        echo "                                                           "
        echo "███████████████████████████████████████████████████████████"
        echo "█                                                         █"
        echo "█--------------------------MENU---------------------------█"
        echo "█                                                         █"
        echo "███████████████████████████████████████████████████████████"
        echo "█                                                         █"
        echo "█   Elixa unha das seguintes opcions:                     █"
        echo "█   1. Comprobar se existe o ficheiro ou directorio       █"
        echo "█   2. Renomear un archivo                                █"
        echo "█   3. Comprobar se o ficheiro esta baleiro               █"
        echo "█   4. Listar os procesos que se executan no sistema      █"
        echo "█   5. Mostrar informacion sobre o sistema                █"
        echo "█   6. Sair                                               █"
        echo "█                                                         █"
        echo "███████████████████████████████████████████████████████████"
        echo "                                                           "
    }

    function comprobrar_existe() {
        read -p "Introduza o nome: " nome
        if [[  -e $nome ]]; 
        then
            echo "O ficheiro/directorio existe"
        else
            echo "O ficheiro/directorio non existe"
        fi
    }

    function renomear_archivo() {
        read -p "Introduza o nome antigo: " nome1
        read -p "Introduza o nome novo: " nome2
        renomear=`mv $nome1 $nome2`
        echo "O archivo foi renomeado"
    }

    function comprobar_baleiro() {
        read -p "Introduza o nome: " nome
        if [[ -s $nome ]]; 
        then
            echo "O ficheiro non esta baleiro"
        else 
            echo "O ficheiro esta baleiro"
        fi
    }

    function listar_procesos() {
        listar=`ps -a`
        echo $listar
    }

    function mostrar_info() {
        info=`uname`
        echo $info
    }

        
    function desea_sair() {
        
        read -p "Desexa sair? (Escriba 6 se quere sair, senon escriba 0): " op
        if [[ $op -eq 6 ]];
        then
            echo "Saindo do programa ..."
            sleep 1
        fi
    }

    
    op=10;

    while (( $op != 6));
    do
        menu
        read -p "Introduce a opcion seleccionada: " op
        case $op in
            1)
                comprobrar_existe
                sleep 1
                desea_sair
            ;;
            2)
                renomear_archivo
                sleep 1
                desea_sair
            ;;
            3)
                comprobar_baleiro
                sleep 1
                desea_sair
            ;;
            4)
                listar_procesos
                sleep 1
                desea_sair
            ;;
            5)
                mostrar_info
                sleep 1
                desea_sair
            ;;
            6)
                echo "Saindo do programa ..."
                sleep 1
            ;;
            *)
                echo "Opcion invalida, elixa outra"
                sleep 2
        esac
    done 