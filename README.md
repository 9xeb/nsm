# nsm
A network security monitor powered by Zeek and Suricata

## Usage
Make sure required docker volumes are available beforehand, or define them locally by editing the docker-compose.yml file.

## Future additions
- logrotate suricata logs
- health check to recover from crashes
- configure suricata to log alerts only, to prevent unnecessary overlapping with zeek logs
- frequent suricata-update in running suricata container