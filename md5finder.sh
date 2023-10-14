if [ "$#" -ne 1 ]; then
	exit 1 
fi

for i in imagen*; do md5sum $i; done | grep $1 
