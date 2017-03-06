# mqtiti


Prereqs: install mosquitto_passwd
``` sudo apt-get install mosquitto mosquitto-clients```



1. Clone repo
``` git clone https://github.com/maslick/mqtiti```

2. Make mqtt folder accessible inside the container
``` sudo chmod -R 777 mqtt```

3. Add users
``` vim createusers.sh && ./createusers.sh```

4. Start the container
``` ./start.sh ```

