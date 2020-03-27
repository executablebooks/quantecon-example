# rst_to_md.sh

FILES=./source_rst/*.rst
for f in $FILES

do
	s="${f##*/}"                                         # Remove path
	filename="book/source/${s%.*}"                       # Remove file suffix
	echo "Converting $f to $filename.md"
	`pandoc $f -f rst -t markdown -o $filename.md`
done