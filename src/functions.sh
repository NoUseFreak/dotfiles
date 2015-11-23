



# Create a new directory and enter it
mkd() {
	mkdir -p "$@" && cd "$@"
}


# Create a git.io short URL
gitio() {
    if [ -z "${1}" -o -z "${2}" ]; then
        echo "Usage: \`gitio slug url\`"
        return 1
    fi
    curl -i http://git.io/ -F "url=${2}" -F "code=${1}"
}
# Start an HTTP server from a directory, optionally specifying the port
server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/" &
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
    python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}


# Run `dig` and display the most useful info
digga() {
    dig +nocmd "$1" any +multiline +noall +answer
}
