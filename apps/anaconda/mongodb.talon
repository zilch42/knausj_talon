tag: terminal
-

# start Mongo daemon
start database: 'mongod --config "C:\\Users\\abb064\\OneDrive - CSIRO\\R\AiCE\\csiro-horizon-scanning\\dev\\mongod_local.cfg"'

# mongo shell start
mongosh local: "mongosh"

mongosh (atlas | cloud): 'mongosh "mongodb+srv://cluster0.hbgroxu.mongodb.net/aice-database" --apiVersion 1 --username atlasAdmin'

mongosh milky way: 'mongosh "mongodb+srv://cluster0.hbgroxu.mongodb.net/aice-database?authSource=%24external&authMechanism=MONGODB-X509" --apiVersion 1 --tls --tlsCertificateKeyFile "C:\\Users\\abb064\\OneDrive - CSIRO\\R\\AiCE\\Project Management\\Certificates\\MILKYWAY.pem"'

mongosh snake: 'mongosh "mongodb+srv://cluster0.hbgroxu.mongodb.net/aice-database?authSource=%24external&authMechanism=MONGODB-X509" --apiVersion 1 --tls --tlsCertificateKeyFile "C:\\Users\\abb064\\OneDrive - CSIRO\\R\\AiCE\\Project Management\\Certificates\\SCARLETSNAKE.pem"'

# mongo shell commands
mongo close: 'db.shutdownServer()'
mongo stats: 'db.stats()'
use local: 'use local'
use admin: 'use admin'
use ace: 'use aice-database'