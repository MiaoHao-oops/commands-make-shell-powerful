# - `$1` is your project or the root directory of the search
# - `-type f`: just search for files
# - `-exec grep...`: executing `grep` on each file
#   - `-n`: present line number
#   - `-H`: present file name
#   - `--color=always`: present in colors
#   - `$2`: string or regx for search
#   - `{}`: placeholder for the file name passed by `find`
#   - `+`: pass as much as files to `grep` at one time
find $1 -type f -exec grep -nH --color=always $2 {} + | less
