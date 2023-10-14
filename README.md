# docker-nightscout-with-visualizations

# What

A nice visualization for your nightscout data

# Why

Why not? ( I did not know nightscout already offered ways to visualize data, but this aims to be more good looking and hopefully powerfull and easy to use)

# How

Grafana dashboards take data from the mongodb database where nightscout stores the data.

Log into grafana with:
- user: admin
- pwd: admin

Change password

Go to connections -> data sources -> add new data source -> search for mongodb-community :
Url: mongodb://nightscout-database-1/admin (change with the name you see when doing docker ps)
Username: admin
Password: your_password

-> Save & test


Go to dashboards -> new -> import -> upload dashboard file -> choose the data source we set before -> load

And you're done! If you have already some data synced with nightscout you should already be able to see it, else, configure your new nightscout and sync all data!
