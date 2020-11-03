main() {
  local directory=${1:-"$PWD"}
  ls "${directory}"/*.pdf | parallel --eta 'pdftitle -p {}'
}

main $1
