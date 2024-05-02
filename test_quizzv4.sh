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

DATE=$(date +%Y%m%d_%H%M)
POINTS=0
NBQUEST=0
NBQUESTTEMP=0
FICHIERQUESTIONS=questions_revisions.txt
TEMPF=temp
TEMPF1=temp1
TEMPF2=temp2
TEMPF3=temp3
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
BOLD='\033[1m'
#SAISPAS='\e[37;44m'
SAISPAS='\e[1;33;41m'

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
} >> $TEMPF1
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
} >> $TEMPF2
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

q1() {
TOTALQUEST=$(cat $TEMPF | wc -l)
if [[ $TOTALQUEST = 0 ]];
then
echo "c'est fini mec, tu as épuisé toutes les questions possibles"
q2
else
((NBQUEST++))
((NBQUESTTEMP++))
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
 
    NBTHEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr '[:upper:]' '[:lower:]'| tr -d '[:blank:]' | uniq | wc -l)
    echo
    echo question1="sélectionne le theme désiré"
    for (( c=1; c<=NBTHEMES; c++ ))
    do
    THEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr '[:upper:]' '[:lower:]' | uniq | head -$c | tail +$c )
    echo $c="$THEMES"
    THEMESVAR=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | tr -d '[:blank:]' | tr éè ee | tr '[:lower:]' '[:upper:]' | uniq | head -$c | tail +$c )
    NB[THEMESVAR]=0
    PT[THEMESVAR]=0
    done
    echo z="Toutes les thématiques"
    read -r question1
    sleep 0.5
    if [ $question1 = "z" ];
    then
    T="all"
    cat $FICHIERQUESTIONS  > $TEMPF
    TOTALQUEST=$(cat $TEMPF | wc -l)
    sleep 0.5
    echo "----------------------------------------------------"
    echo -e "${SAISPAS}Le questionnaire traitera donc l'ensemble des thèmes${NC}"
    echo "----------------------------------------------------"
    else
    T="truc"
    THEMES=$(cat $FICHIERQUESTIONS | cut -d ";" -f1 | uniq | head -"$question1" | tail +"$question1")
    echo "--------------------------------"
    echo -e "${SAISPAS}thème choisi : $THEMES${NC}"
    echo "--------------------------------"
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
q1
