clear all
fid=fopen('SY12_5.m','r');
textall=fscanf(fid,'%c',inf);
ch=zeros(26,1);
for n=1:size(textall,2)
    if isletter(textall(n))
        if textall(n)>='a' && textall(n)<='z'
            textall(n)=char(textall(n)-('a'-'A'));
        end
       m=textall(n)-'A'+1;
       ch(m)=ch(m)+1;
    end
end
ch'

