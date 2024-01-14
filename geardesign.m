s=input('Enter number of stages: ');
n=input('number of values of pinion teeths :');
n1=input('Number of values of module : ');
g=input('Enter the value of overall gear ratio : ');
sut=input('Enter value of tensile strength : ');
bhn=input('Enter the value of BHN: ');
xb=sut/3;
g1= 0.8*((g)^(2/3));
g2=g/g1;
for i=1:n
    zp(i)=input('Enter number of teeths on pinion: ');
end
for j=1:n1
    m(j)=input('Enter values of modules: ');
end
for w=1:s
    for i=1:n
        for j=1:n1
            yp=((0.484)-(2.87/zp(i)));
            b=10*m(j);
            fb=xb*b*m(j)*yp;
            dp=m(j)*zp(i);
            if(w==1)
                g=g2;
            zg=zp(i)*g;
            zg=floor(zg);
            zg=zg+1;
            else
                g=g1;
                zg=zp(i)*g;
                 zg=floor(zg);
            zg=zg+1;
            end
            q=(2*zg)/(zp(i)+zg);
            k=0.000016*(bhn*bhn);
            fw=dp*b*q*k;
            if(w==1)
            v=0.248583*dp;
            else
                v=0.09827617*dp;
            end
            ftmax=(8160*0.85)/v;
            dg=m(j)*zg;
            ep=8+0.63*(m(j)+0.25*(dp^(1/2)));
            eg=8+0.63*(m(j)+0.25*(dg^(1/2)));
            e=ep+eg;
            c=11.500*e;
            nu=21*v*(b*c+ftmax);
            de=(21*v)+((b*c+ftmax)^(0.5));
            fd=nu/de;
            feff=fd+ftmax;
            if(fb>fw)
                fos=fw/feff;
            else
                fos=fb/feff;
            end
            if(w==1)
             fprintf('\n\tValues for First stage ');   
            fprintf('\n\tvalue of module= %f',m(j));
            fprintf('\n\tvalue of pinion teeths= %f',zp(i));
            fprintf('\n\tFOS= %f',fos);
            else
                 fprintf('\n\t\n\tValues for second stage ');   
            fprintf('\n\tvalue of module= %f',m(j));
            fprintf('\n\tvalue of pinion teeths= %f',zp(i));
            fprintf('\n\tFOS= %f',fos);
            end
                
        end
    end
end