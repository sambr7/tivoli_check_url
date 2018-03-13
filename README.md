# ITM 6 Check URL (via ITM OS Agent Script Engine)

This is a simple script to check URL statuses using ITM 6.3 FP7

### Requirements:

curl
awk

### Instructions:

In this example I'm using Linux Agent (LZ) to check some URLs.

- Place the script, config files in /opt/IBM/ITM/localconfig/lz/scripts_definitions
- Change the permissions to 755
- The ITM OS agent will detect the configuration files automatically and start the monitoring of your URLs
