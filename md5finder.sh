if [ "$#" -ne 1 ]; then
	exit 1 
fi

# Uso ./md5finder.sh HASH_IMAGEN

for i in imagen*; do md5sum $i; done | grep $1 
