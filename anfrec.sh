if [ "$#" -ne 1 ]; then
	exit 1
fi

if [ ! -f $1 ]; then
	exit 1
fi

cat $1 | tr 'a-z' 'A-Z' | awk 'BEGIN{FS=""; for(n=0;n<256;n++){ord[sprintf("%c", n)]=n; frec[n] = 0}; letras=0;} {for(i=1;i<=NF;i++){if($i ~ /[A-Z]/){frec[ord[$i]]++;letras++;}}} END{for(n=0;n<256;n++)if(sprintf("%c", n) ~ /[A-Z]/){ print (frec[n] / letras)*100 " : " sprintf("%c", n)}}' | sort -r -g 
