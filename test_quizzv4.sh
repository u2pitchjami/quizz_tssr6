#!/usr/bin/bash
############################################################################## 
#                                                                            #
#	SHELL: !/bin/bash       version 4                                        #
#									                                         #
#	NOM: BEUGNET							                                 #
#									                                         #
#	PRENOM: Thierry							                                 #
#									                                         #
#	DATE: 01/05/2024	           				                             #
#									                                         #
#	BUT: Quizz révisions TSSR                                   		     #
#									                                         #
############################################################################## 

DATE=$(date +%Y%m%d_%H%M) #création de la variable date pour le fichier log
POINTS=0 #création des variables points et nbquest qui seront incrémentées en auto
NBQUEST=0
NBQUESTTEMP=0 #variable qui sert à la limie de 10 questions
FICHIERQUESTIONS=questions_revisions.txt #nom du fichier questions
TEMPF=temp #variable liée au fichier temp pour les questions
TEMPF1=temp1 #variables temp pour les messages motivationnels
TEMPF2=temp2
TEMPF3=temp3
RED='\033[0;31m' #code couleur pour les mauvaises réponses
GREEN='\033[0;32m'#code couleur pour les bonnes réponses
NC='\033[0m' # No Color 
BOLD='\033[1m' #code pour mettre en gras le texte
#SAISPAS='\e[37;44m'
SAISPAS='\e[1;33;41m' #code pour la couleur d'arrière plan 1;33 pour le jaune, 44 pour le rouge

{
    echo "ne baisse pas les bras gros"
    echo "Alors… On n’attend pas Patrick ?"
    echo "Sarah Connor ??"
    echo "Thérèse n’est pas moche, elle n’a pas un physique facile… c’est différent"
    echo "On ne naît pas TSSR, on le devient"
    echo "Socrate a dit : Ce que je sais, c’est que je ne sais rien. N'en abuses pas mec"
    echo "Le code a ses raisons que la raison ignore"
    echo "Je suis trop vieux pour ces conneries mec"
    echo "Si tu ne décides pas de ton destin c'est ton destin qui décide pour toi"
    echo "commme on dit, sur un malentendu ça peut passer"
    echo "Le code est l'opium du peuple mec"
    echo "pleures pas, enfin pas trop"
    echo "Je suis très désappointé!!"
    echo "ça ne peut que te rendre plus fort, courage mec"
    echo "Le monde se divise en deux catégories, ceux qui codent et ceux qui utilisent windows. t'es sur windows ?" 
    echo "t'es sûr que tu as choisis la bonne orientation ?"
    echo "c'est pas grâve mec, ça pourrait être pire, tu pourrais être supporter de l'OM"
    echo "J'ai fait un rêve, mais tu n'étais pas dedans mec"
    echo "tu te crois dans bienvenue chez les chtis !??!!??!"
    echo "Pour survivre au code, il faut devenir le code"
    echo "L'obstination est le chemin de la réussite"
    echo "Qui n'a jamais aimé, n'a jamais vécu"
    echo "Si t'aurais su, t'aurais pas venu ??"
    echo "Bad Mother Fucker"
    echo "On regrette rarement d'avoir osé, mais toujours de ne pas avoir essayer. N'abandonne pas mec"
    echo "Linux, c'est comme une bicyclette, il faut avancer pour ne pas perdre l'équilibre"
    echo "Vous ne voulez pas un whisky d’abord ?"
    echo "Gamin ! Reviens gamin c'était pour rire !"
    echo "As-tu jamais dansé avec windows au clair de lune ?"
    echo "Houston on a un problème"
    echo "Adrienne !!!!"
    echo "Quel est ton film d'horreur préféré ?"
    echo "Did you fuck my wife ?"
    echo "You're alking to me ?"
    echo "t'es comme le psg mec, c'est tragique"
    echo "Windows, c'est comme une boîte de chocolats : on ne sait jamais comment ça va planter"
    echo "je suis ton père !!!! Naaaannnnnnn !!!"
    echo "supporter du LOSC ? ta mère c'est ta soeur ???"
} >> $TEMPF1 # les accolades permettent de réaliser la même action sur toutes ces lignes
{
    echo "chapeau mec"
    echo "Nom de Zeus"
    echo "Force et honneur mec"
    echo "Ô Capitaine ! Mon Capitaine !"
    echo "Why so serious ?"
    echo "t'as du potentiel mec"
    echo "Yippie-ki-yay mec"
    echo "J'adore l'odeur de linux au petit matin"
    echo "c'est toi Keyser Söze ?"
    echo "tu aimes les combats de gladiateurs ?"
    echo "C'est OKKKKKKKK !"
    echo "Tu t'appelles Just Leblanc cest juste ?"
    echo "TSSR6 for life mec"
    echo "Il ne peut en rester qu'un, mec et c'est toi !!"
    echo "Un grand pouvoir implique de grandes responsabilités mec"
    echo "Sssplendide !!"
    echo "Tu passes trop de temps sur windows mec, reprends toi !!!"
    echo "Quand le sage montre linux, le fou regarde windows"
    echo "La 1ère règle du code club est : on ne parle pas du code club"
    echo "Que la Force soit avec toi mec"
    echo "L'histoire est écrite par les vainqueurs comme toi mec"
    echo "on fire !!!!!!!! youhou"
    echo "tu es l'homme que tu penses être ?"
    echo "Jusqu'ici tout va bien... Jusqu'ici tout va bien... Jusqu'ici tout va bien"
    echo "Un petit pas pour l'homme, un grand saut pour toi mec"
    echo "Le monde se divise en deux catégories, ceux qui codent et ceux qui utilisent windows. t'es sur windows ?"      
    echo "t'es sûr que tu as choisis la bonne orientation ?"
    echo "le ballon d'or de l'informatique t'attend mec"
    echo "bien mec, tu marques 1 point"
    echo "Alfou ? c'est toi ?"
    echo "trop fort mec, tu es démasqué, c'est toi qui a piraté le doc !!!"
} >> $TEMPF2 #envoie les phrases si dessus dans un fichier temporaire
q2() {
    echo
            echo "Voici ton résultat mec :"
            sleep 1
            echo "prépare les mouchoirs haha"
            sleep 1
            echo "$POINTS bonnes réponses pour $NBQUEST questions"
            sleep 1
            z=$((POINTS *100 / NBQUEST))
            echo
            echo -e "${BOLD}soit $z % de bonnes réponses mec${NC}"
            echo "recap total : $z % de bonnes réponses" >> ${DATE}-Quizz-log.txt
            echo
            if [ $z -gt 80 ];
            then
            echo -e "respect mec, c'est toi  le king"
            elif [ $z -gt 60 ];
            then
            echo -e "pas mal du tout mec"
            elif [ $z -gt 50 ];
            then
            echo -e "au dessus de la moyenne, mais tu peux mieux faire mec"
            elif [ $z -gt 40 ];
            then
            echo -e "retravaille certaines choses et tu seras au top mec"
            elif [ $z -gt 20 ];
            then
            echo -e "au boulot mec !"
            else
            echo -e "aie"
            fi
            echo
            if [ $T = "all" ];
            then
            echo "détails :"
            NBTHEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr '[:upper:]' '[:lower:]'| tr -d '[:blank:]' | uniq | wc -l)
                for (( c=1; c<=NBTHEMES; c++ ))
                do
                THEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]' | uniq | head -$c | tail +$c )
                THEMESVAR=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr éè ee | tr '[:lower:]' '[:upper:]' | uniq | head -$c | tail +$c )
                echo "$THEMES :"
                A=$(eval "echo \$NB$THEMESVAR")
                B=$(eval "echo \$PT$THEMESVAR")
                if [ -z $B ];
                then
                echo "Nb de questions : $A"
                echo "aucune bonne réponse pour ce theme mec"
                echo "Theme : $THEMES --> Aucune bonne réponse" >> ${DATE}-Quizz-log.txt
                else
                echo "Nb de questions : $A et $B bonnes réponses"
                y=$((B *100 / A))
                echo -e "${BOLD}soit $y % de bonnes réponses pour ce theme${NC}"
                echo "Theme : $THEMES --> $z % de bonnes réponses" >> ${DATE}-Quizz-log.txt
                fi
                done
            fi
            echo
            echo "merci d'avoir jouer"
            echo
            sleep 1
            echo "bisous"
            rm $TEMPF*
}
#démarrage de la fonction q1 qui pose la question à l'utilisateur, cette fonction sera utilisé 10 fois d'affilée
q1() {
#compte le nombre de question restant encore à poser
TOTALQUEST=$(cat $TEMPF | wc -l)
#si plus de question
if [[ $TOTALQUEST = 0 ]];
then
echo "c'est fini mec, tu as épuisé toutes les questions possibles"
#éxécute la fonction q2 qui gère les résultats
q2
else
#incrémente de 1 les variables comptant le nombre de questions
((NBQUEST++))
((NBQUESTTEMP++))
#sélectionne aléatoirement une question dans le fichier des questions restantes
NUMQUEST=$((1 + RANDOM % TOTALQUEST))
THEME=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f1 | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]')
THEMESVAR=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f1 | tr -d '[:blank:]' | tr éè ee | tr '[:lower:]' '[:upper:]' | uniq )
QUEST=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f2)
((NB"${THEMESVAR}"++))
NUM=2
NBREPTEMP=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | sed 's/[^;]//g' | wc -c )
NBREP="$((NBREPTEMP - NUM))"
echo "--------------------------------------"
echo -e "${BOLD}Question $NBQUEST Theme : $THEME${NC}"
echo "--------------------------------------"
MULTI=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f$NBREPTEMP| tr -d "\t" | tr -d '[:space:]'  | tr -d '[:blank:]' | wc -c )
if [ "$MULTI" -gt 1 ];
then
echo -e "${RED}${BOLD}ATTENTION${NC}, question à choix multiples"
echo "(donc réponse de type : ab ou ade ou bcd etc...)"
echo
sleep 1
else
echo -e "une seule réponse possible" 
echo
fi
question="$QUEST"
echo -e "${SAISPAS}${BOLD}$QUEST${NC}"
for (( v=1; v<NBREP; v++ ))
do
chars=( {a..z} )
NUMREP="$((v + NUM ))"
w="$((v - 1 ))"
R=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f$NUMREP)
echo -e "${chars[w]}"="$R"
done
sleep 1
read -r question
BR=$(head -$NUMQUEST $TEMPF | tail +$NUMQUEST | cut -d ";" -f"$NBREPTEMP" | tr -d "\t" | tr -d '[:space:]'  | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]')
REPONSE=$(echo "$question" | tr -d "\t" | tr -d '[:space:]'  | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]')
if [ "$REPONSE" = "$BR" ];
then
NBTEMP2=$(cat $TEMPF2 | wc -l)
NUMB=$((1 + RANDOM % NBTEMP2))
((PT"${THEMESVAR}"++))
    echo
    echo "$THEME - $QUEST - ta réponse : $REPONSE - Bonne réponse" >> ${DATE}-Quizz-log.txt
    echo -e "${GREEN}bonne réponse !!${NC}"
    sleep 0.5 
    cat $TEMPF2 | head -$NUMB | tail +$NUMB
    echo
    ((POINTS++))
    sleep 0.5 
    echo "ton total provisoire est de $POINTS points"
    echo
    sleep 0.5
    echo "question suivante"
    sleep 2
    clear
else
NBTEMP1=$(cat $TEMPF1 | wc -l)
NUME=$((1 + RANDOM % NBTEMP1))
    echo
    echo "$THEME - $QUEST - ta réponse : $REPONSE - Mauvaise réponse" >> ${DATE}-Quizz-log.txt
    echo -e "${RED}Mauvaise réponse${NC}"
    sleep 0.5
    echo -e "la bonne réponse était :${BOLD} $BR ${NC}"
    sleep 0.5
    cat $TEMPF1 | head -$NUME | tail +$NUME
    echo
    echo "question suivante"
    sleep 2
    clear
fi
sed "${NUMQUEST}d" $TEMPF > $TEMPF3
rm $TEMPF
cat $TEMPF3 > $TEMPF
rm $TEMPF3
q0
fi
}


q0() {
        if [ "$NBQUESTTEMP" = "10" ]; 
        then
        NBQUESTTEMP=0
        echo
        continuer="VEUX TU CONTINUER ?"
        echo -e "${BOLD}VEUX TU CONTINUER ?${NC}"
        echo
        echo "o ou n ?"
        read -r continuer
        rep=$(echo "$continuer" | tr '[:upper:]' '[:lower:]')   
            if [ "$rep" = "n" ];
            then
            q2
            else
            echo
            echo "${BOLD}ok on continue mec${NC}"
            sleep 2
            echo
            clear
            q1
            fi
        else
        q1
        fi
    
}
echo
echo -e "${SAISPAS}${BOLD}QUESTIONNAIRE REVISIONS${NC}"
echo
echo "toutes les 10 questions il te sera proposé de continuer ou non"
echo "tu peux choisir un thème en particulier ou pas"
echo "à la fin tu auras un récap avec un pourcentage de bonnes réponses"
sleep 1
echo "pour jouer c'est très simple, tu dois juste taper la lettre associée à ta réponse (a b c etc...) et valider"
echo "pour les questions à choix multiples c'est pareil à la différence qu'il faudra taper l'ensemble des réponses possibles par ordre alphabétique"
echo "exemple : ab ou bc par contre ba ou cb seront en anomalies"
echo
echo "ready ?"
echo
sleep 1
    #compte le nombre de themes différents, les tr permettent de formater le texte pour ensuite les regrouper avec uniq
    NBTHEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr '[:upper:]' '[:lower:]'| tr -d '[:blank:]' | uniq | wc -l)
    echo
    echo question1="sélectionne le theme désiré"
    #création d'une boucle avec le nombre de themes vu plus haut
    #la boucle démarre par c=1, à chaque itération c prendra +1 et continuera jusqu'à ce que c soit égal au nombre de thèmes
    for (( c=1; c<=NBTHEMES; c++ ))
    do
    #pour chaque theme je récupère le nom du thème le head et le tail permettent d'identifier le ligne à sélectionner
    #ex : si 5 themes uniques dans le fichier il cherche la ligne 1 puis 2 etc...
    THEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]' | uniq | head -$c | tail +$c )
    #affiche le nom du thème à l'écran
    echo $c="$THEMES"
    #récupère le nom du theme mais avec un formatage différent pour l'utiliser dans une variable, suppression des accents et mise en majuscules
    THEMESVAR=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr éè ee | tr '[:lower:]' '[:upper:]' | uniq | head -$c | tail +$c )
    #création des variables dynamiques liées au themes, par défaut le script ignore les themes, il les découvrent lors de la lecture du fichier question, il attribue donc 2 variables dynamiques par themes pour caluler les stats
    #les variables ci dessous peuvent être interpréter comme NBLINUX=0 NBWINDOWS=0 ou encore PTRESEAUX=0 etc...
    NB[THEMESVAR]=0
    PT[THEMESVAR]=0
    #fin de la boucle pour identifier les themes
    done
    echo z="Toutes les thématiques"
    #la commande read permet une action utilisateur avec injection du résultat dans une variable
    read -r question1
    sleep 0.5
    #si sélection de l'option pour tous les themes
    if [ $question1 = "z" ];
    then
    #création de la variable T qui permet de faire le récap par theme à la fin
    T="all"
    #envoie des questions du fichiers questions vers un fichier temporaire (où elles seront supprimées au fur et à mesure)
    cat $FICHIERQUESTIONS  > $TEMPF
    #compte le nombre de question max qui seront posées
    TOTALQUEST=$(cat $TEMPF | wc -l)
    sleep 0.5
    #echo -e permet d'ajouter un formatage lors de la sortie à l'écran
    echo "----------------------------------------------------"
    echo -e "${SAISPAS}Le questionnaire traitera donc l'ensemble des thèmes${NC}"
    echo "----------------------------------------------------"
    #si l'utilisateur n'a pas choisi l'ensemble des themes, c'est cette partie ci dessous qui sera éxécutée
    else
    #définition de la variable T qui ne sera pas utilisé (le truc permet d'éviter quelle soit vide, ce qui ne serait pas génant si ma condition portait sur sa présence ou non plutôt que sur une valeur)
    T="truc"
    THEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | uniq | head -"$question1" | tail +"$question1")
    echo "--------------------------------"
    echo -e "${SAISPAS}thème choisi : $THEMES${NC}"
    echo "--------------------------------"
    #envoie les questions du theme sélectionné vers le fichier temporaire
    cat $FICHIERQUESTIONS | grep ^"$THEMES"  > $TEMPF   
    TOTALQUEST=$(cat $TEMPF | wc -l)
    fi
echo "prépare toi ça va commencer"
echo
sleep 1
echo "let's go!"
echo
sleep 0.5
clear
#une fois la sélection du theme réalisée, c'est la fonction q1 qui est éxécutée (voir plus haut)
q1
