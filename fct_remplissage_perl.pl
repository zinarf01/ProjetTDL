use strict;
use warnings;


my @automate_NFA=();
@automate_NFA =remplissage();
<>;
sub remplissage {

    my @automate_NFA=();
    print("Entrez le nombre de fonctions de transitions : ");
    my $nbr_fct_trans =<>;
    my @tableau_trans;
        for (my $j=0;$j<$nbr_fct_trans;$j++){
            print("Entrez la $j eme fonction de transition : ");
            my $element = <>;
            push @tableau_trans, $element;
        }

    print("entrer le nombre de transition possible dans cet automate: ");
    my $nbr_transitions =<>;
    chomp $nbr_transitions;

        for (my $i=1;$i<=$nbr_transitions;$i++){
            
            print("\n --- insertion de la $i eme transition sous la forme (depart,fonction de tansition,arrive) --- ");
            print("\n ---------------------------------------------------------------------------------------------");
            print(" \n entrer le point de depart :");
            my $pt_dep=<>;
            chomp $pt_dep;
            
            print(" \n entrer la fonction de transition :");
            my $transition=<>;
            chomp $transition;
            
            print("\n entrer le point d'arrive :");
            my $pt_arr=<>;
            chomp $pt_arr;
            #print("\n -----------------------------------------");
            my @liste;
            $liste[0]=$pt_dep ;
            $liste[1]=$transition;
            $liste[2]=$pt_arr;
            $automate_NFA[$i-1]=[ @liste ];
            
            
        
    }
    @automate_NFA = sort (@automate_NFA );
    return @automate_NFA ;
        }