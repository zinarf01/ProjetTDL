
use strict;
use warnings;

my @automate_NFA=();
    @automate_NFA = (
        [ (0,1), "e" , 1],
        [ (1,9), "e" , 2],
        [ 1, "e" , 4],
        [ 2, "a" , 3],
        [ 4, "b" , 5],
        [ 3, "e" , 6],
        [ 5, "e" , 6],
        [ 6, "e" , 7],
        [ 7, "a" , 8],
        [ 8, "b" , 9],
        [ 9, "b" , 10],
        [ 0, "e" , 7],
        [ 6, "e" , 1],
    );

affichage (@automate_NFA);
<>;
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
   
  
