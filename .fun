#convert svg $1 is path to svg
function svg2dataURI {
    local SRC="`cat $1`"
    local DATA="`echo -n $SRC | base64`"

    echo "data:image/svg+xml;base64,$DATA"
}

function fgr {
    find $1 -name $2 -exec grep -Hn $4 --color=always $3 {} \; $5
}

function nf {
    echo "" > $1
}

function fdiff {
    files=$(git diff --name-only --diff-filter=ACM | grep "\.jsx\?$")

    while read -r file; do
        grep -Hn $1 $file $2
    done <<< "$files"
}

function fdc {
    files=$(git diff --cached --name-only --diff-filter=ACM | grep "\.jsx\?$")

    while read -r file; do
        grep -Hn $1 $file $2
    done <<< "$files"
}
