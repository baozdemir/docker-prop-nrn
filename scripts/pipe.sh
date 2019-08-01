git checkout master
git fetch

SERVER=$(git diff --name-only origin/master -- server/)
CLIENT=$(git diff --name-only origin/master -- client/)
NGINX=$(git diff --name-only origin/master -- nginx/)
COMMON=$(git diff --name-only origin/master -- common/)

git merge

# Define your function here
runUpDownPartial() {
    docker-compose stop $1 $2
    docker-compose rm -v -f $1
    docker-compose build $1 $2
    docker-compose up -d $1 $2
}

runUpDown() {
    docker-compose down --volumes
    docker-compose build --parallel
    docker-compose up -d
}

if ! $SERVER && ! $CLIENT && ! $NGINX; then
    runUpDown

## to do -> Combine with upper
elif ! $COMMON && ! $NGINX; then
    runUpDown

elif ! $COMMON; then
    runUpDownPartial nodejs react

elif ! $SERVER && ! $CLIENT; then
    runUpDownPartial nodejs react

elif ! $SERVER && ! $NGINX; then
    runUpDownPartial nodejs nginx

elif ! $CLIENT && ! $NGINX; then
    runUpDownPartial react nginx

elif ! $SERVER; then
    runUpDownPartial nodejs

elif ! $CLIENT; then
    runUpDownPartial react

elif ! $NGINX; then
    runUpDownPartial nginx

else
    ## to do -> remove README.md
    runUpDown
fi
