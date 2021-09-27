# ServiciosDocker
Repository with files to create self-hosted services: Jitsi (videocalls), Mumble (High quality, realtime audio) and Nextcloud (private cloud) 

It's posible to start every service individually but i suggest first configure ProxyManager to handle all incoming conections to their 
respective container. To start every service you should move to their respective folder and execute:

docker-compose up -d 

You will need a domain and public IP to expose this services to internet. I recomend to use some DDNS to this (freemyip.com, duckdns, no-ip, etc). 

It's absolutely necesary to configure the apropiate files in each service in order to set passwords, domains and get SSL certificates (easily doable with
proxy manager and Let's Encrypt) to be able to use in real production server.
