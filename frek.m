function [s] = frek(N,O)
s1='N';
s2='Do';
s3='Dod';
s4='Re';
s5='Mib';
s6='Mi';
s7='Fa';
s8='Fad';
s9='Sol';
s10='Lad';
s11='La';
s12='Sib';
s13='Si';
s13='sus';
if nargin<2, O=4, end
if(strcmp(N,s2))
    D=1;
end
if(strcmp(N,s3))
    D=2;
end
if(strcmp(N,s4))
    D=3;
end
if(strcmp(N,s5))
    D=4;
end
if(strcmp(N,s6))
    D=5;
end
if(strcmp(N,s7))
    D=6;
end
if(strcmp(N,s8))
    D=7;
end
if(strcmp(N,s9))
    D=8;
end
if(strcmp(N,s10))
    D=9;
end
if(strcmp(N,s11))
    D=10;
end
if(strcmp(N,s12))
    D=11;
end
if(strcmp(N,s13))
    D=12;
end
if(D==1)
F=16.35
else
    F=16.35
    for(j=1:D-1)
        F=F*1.05933;
    end
end
if(O==0) 
F2=1;
F=F*F2;
else 
    for(i=1:O)
        F=F*2;
    end
end
s=F;