# TEG03741 Portal (encrypted)

Single-page password-gated portal: the field-photo map, AES-256 encrypted client-side (StatiCrypt).
The photomap now includes a visit timelapse (replay the 6 visits Jul 2020 - May 2021 in order,
pins coloured by visit date) - run `./rebuild.sh` with the access phrase to re-encrypt the updated
map into `index.html`, then commit and push.
The hosted file is unreadable without the access phrase - safe on public hosting.
To close the portal: delete this repo / hosting target.
Access phrase held by R. Letts (not stored in this repo).
