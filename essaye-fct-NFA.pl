use warnings;
use strict;
my @automate=();
    @automate = (
        [ 0, "e" , 1],
        [ 1, "e" , 2],
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

my @tt=(3,8);
Move_NFA('e',@tt,@automate);
sub Move_NFA {
	my ($gamma,@tt)=@_;
	my ($automate)=@_;
	my $n= scalar @tt ;
	my @t;
	my $k=0;
	my $taille_auto = scalar @automate;
   
    print ("zzzzz $n zzzzz");
     for (my $s=0; $s<$n-$taille_auto;$s++){
           $t[$k]=$tt[$s];
      $k++;
   }
    
	for(my $j=0;$j<$n;$j++){
		for(my $i=0;$i<$taille_auto;$i++){

		if(($automate[$i][1] eq $gamma)  && ($automate[$i][0] == $tt[$j])){
			
			$t[$k]=$automate[$i][2];
			#print("$t[$k]");
			$k++;
		}
}
      my $oty=0;
    while($oty<10){
        my $m=scalar @t;
    
        for (my $i=0;$i<$m;$i++){
        for (my $jk=0;$jk<$taille_auto;$jk++){
            if (($t[$i]==$automate[$jk][0]) && ($automate[$jk][1] eq $gamma)) {
                $t[$k]=$automate[$jk][2]; 
                #print("$t[$k] ");
                $k++;       
                }
       } 
    }
    $oty++;
    }
    
}



 
      
@t =sort (@t);
    
    #othy  en premier lieu rah elle doit pas affichier ghi ana jaffiche les elements kamlin du tableau bach n3rf wach la fonction khdama meziane , hya khas tretourner tableau fih les element li n9dou nmchiw bihoum men un point w en utilisant une fonction de transion donné 
  
  my $ml = scalar @t ;
   
   
   
    #daba le tableau qui 3mer mais il ya des duplications , bach tfrhm mets la martie suivante en commentaire w aybanlek elach jai utilise hadchi li suivant 
    my @tab=();
    
    my $f2;
    if ($ml>0){
    my $s7=0;
     $tab[$s7]=$t[0]; 
     $s7++;
     for ( my $f=1; $f < $ml;$f++){
      $f2= $f -1;
      if ( $t[$f] != $t[$f2] ){
        $tab[$s7]=$t[$f];
        $s7++;
      }
     }
    }
    

   my $k17= scalar @tab;
   for (my $j7=0; $j7<$k17 ;$j7++){
   print ("$tab[$j7]");
   }
   
}
<>;