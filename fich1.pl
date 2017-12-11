use strict;
use warnings;
my @automate;
my $refv ;
@automate = remplissage();

affichage(@automate);
<>;




sub remplissage (){
 my @automate=();
my $ref =\@automate;
print("entrer le nombre de gamma :");
my $nbr =<>;
chomp $nbr;
    

        for (my $i=0;$i<$nbr;$i++){
        
            print("\n -----------------------------------------");
            print("\n la $i transition :  ");
        
            print(" \n entrer q :");
            my $q=<>;
            chomp $q;
            
            print(" \n entrer gamma :");
            my $gamma=<>;
            chomp $gamma;
            
            print("\n entrer p :");
            my $p=<>;
            chomp $p;
            print("\n -----------------------------------------");
            my @liste;
            $liste[0]=$q ;
            $liste[1]=$gamma;
            $liste[2]=$p;
            $automate[$i]=[ @liste ];
            
            
        
    }
      return @automate ;
        

   
}
sub affichage (@automate){
    my $n=scalar @automate;
    for (my $k=0;$k<$n;$k++){
   
        
        foreach my $item (@{$automate[$k]})
	{
	print $item; 
    print "-";
	}
    print "\n";
    }
    }
   
  


