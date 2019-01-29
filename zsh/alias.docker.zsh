
# Postgres client
psql() {
    docker run -ti --rm \
        -v /tmp:/postgresql \
        --log-driver none \
        postgres psql "$@"
}

pg_dump() {
    docker run -ti --rm \
        -v /tmp:/postgresql \
        --log-driver none \
        postgres pg_dump "$@"
}
