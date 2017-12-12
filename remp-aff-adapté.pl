use strict;
use warnings;




my @automate;
@automate = remplissage();
affichage(@automate);
<>;




sub remplissage {

    my @automate=();

    print("entrer le nombre de transion possible dans cet automate: ");
    my $nbr =<>;
    chomp $nbr;
    

        for (my $i=0;$i<$nbr;$i++){
            my $s =$i+1;
            
            print("\n --- insertion de la $s eme transition sous la forme (depart,fonction de tansition,arrive) --- ");
            print("\n ---------------------------------------------------------------------------------------------");
            print(" \n entrer le point de depart :");
            my $q=<>;
            chomp $q;
            
            print(" \n entrer la fonction de transition :");
            my $gamma=<>;
            chomp $gamma;
            
            print("\n entrer le point d'arrive :");
            my $p=<>;
            chomp $p;
            #print("\n -----------------------------------------");
            my @liste;
            $liste[0]=$q ;
            $liste[1]=$gamma;
            $liste[2]=$p;
            $automate[$i]=[ @liste ];
            
            
        
    }
    @automate = sort (@automate );
    return @automate ;
        

   
}
sub affichage {
    my(@automate)=@_;
    my $n=scalar @automate;
    print "\n voici l'ensemble des transitions possible dans ce graphe affiche sous la forme : (depart,fonction de tansition,arrive) \n";
    for (my $k=0;$k<$n;$k++){
    print "[ ";
        foreach my $item (@{$automate[$k]})
	{ 
        
            print $item; 
            print " ";
    
	

	}
    print "]\n";
    }
    
    }
   
  


