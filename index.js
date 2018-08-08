const {Client} = require('pg');

const connectionString = 'postgresql://postgres:password@localhost:5433/emart'

const client = new Client({
    connectionString: connectionString,
})

client.connect()

// client.query('select now()',(err,res) =>{
//     console.log(err,res)
//     client.end();
// });

client.query('select * from tcustomer')
    .then(res => console.log(res))
    .catch(e => console.error(e.stack))