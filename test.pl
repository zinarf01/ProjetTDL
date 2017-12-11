use strict;
use warnings;


        
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
   closure("e",0,@automate); <>;
   
   
   
   sub closure {
   my($gamma,$deb,@automate)=@_;
   
   my $k=0; 
   my @t;
   my $n=scalar @automate;
   $t[$k]=$deb;
   print ("$t[$k] ");
    $k++;
    for (my $j=0;$j<$n;$j++){
        
                
	           if (($automate[$j][1] eq $gamma)  && ($automate[$j][0] == $deb)){
                    $t[$k]= $automate[$j][2];
                    print("$t[$k] ");
                    $k++;
                    
                    
                    }
}
    
my $m=scalar @t;
for (my $i=0;$i<$m;$i++){
    
       for (my $j=0;$j<$n;$j++){
        if (($t[$i]==$automate[$j][0]) && ($automate[$j][1] eq $gamma)) {
            $t[$k]=$automate[$j][2]; 
            print("$t[$k] ");
            $k++;
       
        }
        
        } 
    }
  
    

}