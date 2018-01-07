use strict;
use warnings;
use List::Util qw[min max];
my @automate_NFA=();
    #@automate_NFA = (
     #   [ 0, "e" , 1],
     #   [ 1, "e" , 2],
      # [ 1, "e" , 4],
     #   [ 2, "a" , 3],
      #  [ 4, "b" , 5],
       # [ 3, "e" , 6],
       # [ 5, "e" , 6],
       #[ 6, "e" , 7],
      #  [ 7, "a" , 8],
       # [ 8, "b" , 9],
       # [ 9, "b" , 10],
        #[ 0, "e" , 7],
      #  [ 6, "e" , 1]
   # );


@automate_NFA = remplissage();
my @automate_DFA=();


@automate_DFA=determination(0,@automate_NFA);
print"\n NFA \n";
affichage(@automate_NFA);
print"\n DFA \n";
affichage(@automate_DFA);

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

            my @liste;
            $liste[0]=$pt_dep ;
            $liste[1]=$transition;
            $liste[2]=$pt_arr;
            $automate_NFA[$i-1]=[ @liste ];
            
            
        
    }
    @automate_NFA = sort (@automate_NFA );
    return @automate_NFA ;
        

   
}
sub affichage {
    my(@automate_NFA)=@_;
    my $taille_automate=scalar @automate_NFA;
    print "\n voici l'ensemble des transitions possible dans ce graphe affiche sous la forme : (depart,fonction de tansition,arrive) \n";
    for (my $k=0;$k<$taille_automate;$k++){
    print "[ ";
        foreach my $item (@{$automate_NFA[$k]})
	{ 
        
            print $item; 
            print " ";
    
	

	}
    print "]\n";
    }
    
    }
   
  






sub eps_closure {
    my (@set_of_states)=@_;
    my $transition="e";
    my ($automate_NFA)=@_;
    my $taille_set_of_states= scalar @set_of_states ;
    my @tab_res_dup=();
    my $compteur_dup=0;
    my $taille_auto = scalar @automate_NFA;
   
    
for(my $j=0;$j<$taille_set_of_states;$j++){
        for(my $i=0;$i<$taille_auto;$i++){

        if(($automate_NFA[$i][1] eq $transition)  && ($automate_NFA[$i][0] == $set_of_states[$j])){
            
            $tab_res_dup[$compteur_dup]=$automate_NFA[$i][2];
       
            $compteur_dup++;
        }
}
      my $recursive=0;
    while($recursive<10){
        my $m=scalar @tab_res_dup;
    
        for (my $ik=0;$ik<$m;$ik++){
        for (my $jk=0;$jk<$taille_auto;$jk++){
            if (($tab_res_dup[$ik]==$automate_NFA[$jk][0]) && ($automate_NFA[$jk][1] eq $transition)) {
                $tab_res_dup[$compteur_dup]=$automate_NFA[$jk][2]; 
             
                $compteur_dup++;       
                }
       } 
    }
    $recursive++;
    }
    
}



 for(my $l=0;$l<$taille_set_of_states;$l++){
    
      push @tab_res_dup, $set_of_states[$l];
    }
      
@tab_res_dup =sort (@tab_res_dup);
     
  
  my $taille_res_dup = scalar @tab_res_dup ;
   
   
   
    my @RESULTAT=();
     
    my $cpt;
    if ($taille_res_dup>0){
    my $cpt_resultat=0;
     $RESULTAT[$cpt_resultat]=$tab_res_dup[0]; 
     $cpt_resultat++;

     for ( my $f=1; $f < $taille_res_dup;$f++){
      $cpt= $f -1;
      if ( $tab_res_dup[$f] != $tab_res_dup[$cpt] ){
        $RESULTAT[$cpt_resultat]=$tab_res_dup[$f];
        $cpt_resultat++;
      }
     }
    }
    

    
   my $taille_resultat= scalar @RESULTAT;


   @RESULTAT = sort (@RESULTAT);
   return @RESULTAT; 
}





sub Move_NFA {
     my ($transition,@set_of_states)=@_;
    
    my ($automate_NFA)=@_;
    my $taille_set_of_states= scalar @set_of_states ;
    my @tab_res_dup;
    my $compteur_dup=0;
    my $taille_auto = scalar @automate_NFA;

   
   
    
    for(my $j=0;$j<$taille_set_of_states;$j++){
        for(my $i=0;$i<$taille_auto;$i++){

        if(($automate_NFA[$i][1] eq $transition)  && ($automate_NFA[$i][0] == $set_of_states[$j])){
            
            $tab_res_dup[$compteur_dup]=$automate_NFA[$i][2];
            $compteur_dup++;
        }
}
     
    
}
  
  @tab_res_dup =sort (@tab_res_dup);
     
  
  my $taille_res_dup = scalar @tab_res_dup ;
   
   
   
    my @RESULTAT=();
    my $cpt;
    if ($taille_res_dup>0){
    my $cpt_resultat=0;
     $RESULTAT[$cpt_resultat]=$tab_res_dup[0]; 
     $cpt_resultat++;

     for ( my $f=1; $f < $taille_res_dup;$f++){
      $cpt= $f -1;
      if ( $tab_res_dup[$f] != $tab_res_dup[$cpt] ){
        $RESULTAT[$cpt_resultat]=$tab_res_dup[$f];
        $cpt_resultat++;
      }
     }
    }
    

    
   my $taille_resultat= scalar @RESULTAT;

   return @RESULTAT;
   }






sub determination {
    my ($pt_initial,@automate_NFA)=@_;
    my @automate_DFA=();
    my $taille_auto_NFA = scalar @automate_NFA;
    my @fct_trans_NFA=('e','a','b');
    my $taille_fct_trans_NFA = scalar @fct_trans_NFA;
    my $cpt5=0;
    my @tab_etat_DFA=();
    my @etat_init_DFA;
    my @etat_init_DFA_parfait=();
    my $cpt4=0;
    my $itm;
    @etat_init_DFA=eps_closure($pt_initial,@automate_NFA);
    foreach  $itm ( @etat_init_DFA ) {
        if (  $itm == 0 || $itm == 1 ||  $itm == 2 || $itm == 3 || $itm == 4 || $itm == 5 || $itm == 6 || $itm == 7 || $itm == 8 || $itm == 9 || $itm == 10 ){
            $etat_init_DFA_parfait[$cpt4]=$itm; 
            $cpt4++;
        }
   }
    my $taille_etat_initial= scalar @etat_init_DFA_parfait;

    my $cpt1=0; 
    $tab_etat_DFA[$cpt1][0] = [@etat_init_DFA_parfait];
    $tab_etat_DFA[$cpt1][1]='unmarked';

    $cpt1++;
    my $taille_etat_DFA= scalar @tab_etat_DFA;
    my $cc=0;
   

 for( my $i=0;$i<$taille_etat_DFA;$i++){#####################1
    	
        if ($tab_etat_DFA[$i][1] eq 'unmarked'){##################2
            my @T=@{$tab_etat_DFA[$i][0]};
            $tab_etat_DFA[$i][1]='marked';
            
        
            for (my $j=0;$j<$taille_fct_trans_NFA;$j++){###############3
                if($fct_trans_NFA[$j] ne 'e'){###################4
                    my @S1=Move_NFA($fct_trans_NFA[$j],@T,@automate_NFA);
                    my @S;
                  
                    my @S2 =eps_closure(@S1,@automate_NFA);
                    my $cpt6=0;
                    foreach my  $itm ( @S2 ) {
                        if (  $itm == 0 || $itm == 1 ||  $itm == 2 || $itm == 3 || $itm == 4 || $itm == 5 || $itm == 6 || $itm == 7 || $itm == 8 || $itm == 9 || $itm == 10 ){
                            $S[$cpt6]=$itm; 
                            $cpt6++;
                        }
                    }
          
                        
          

                    
                     
                     my $verif =0; 

                  
                                               my @tab=@tab_etat_DFA;
              	my @tab1=@S;     
				my $taille1= scalar @tab1;

my $taille2= scalar @tab;

my $m=0;
for (my $g = 0; $g < $taille2; $g++) {	
my @pl=@{$tab[$g][0]};
my $taille= scalar @pl;

my $a=0; 
my $b=0;
my $des=0;
if($taille==$taille1){

	while(($a<$taille) && ($b<$taille1) ){
		if ( $pl[$a]==$tab1[$b]){
			$a++;
			$b++;
			$des++;
		}
		if ( $des != $taille1 ){ $m++;}
	
	}

}


}

if ( $m==0 ){ $verif++;}
                    if ($verif == 0 ) {
                    	
                            $tab_etat_DFA[$cpt1][0]=[@S];
                            
                            $tab_etat_DFA[$cpt1][1]="unmarked";
                            $taille_etat_DFA++;
                        
                            $cpt1++;
                    }
                   

                     my @liste=(@T,$fct_trans_NFA[$j],@S);
                    
                     $automate_DFA[$cpt5]=[@liste];
                     $cpt5++;

                   
                    
                }############/4
            }################/3
   
        }############/2


    }###############1





   return @automate_DFA;
   }





