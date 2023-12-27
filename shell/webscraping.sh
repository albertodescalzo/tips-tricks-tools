### extract all the filenames in the URL + add them a prefix
curl -s https://physionet.org/files/vitaldb/1.0.0/vital_files/ | grep -oP '(?<=href=")[^"]*' | grep -v '/$' | sed 's|^|vital_files/|'