// var mysql = require('mysql');
// var connection = mysql.createConnection({
//     host     : 'localhost',
//     port     : '3306',
//     user     : 'marise',
//     password : 'urubu100',
//     database : 'sensor'
// });

// connection.connect(function(err) {
//     if (err) throw err;
//     console.log('Conectado com sucesso!')
// });



// module.exports = connection;
const configuracoes = {
    banco: {
        server: "db-phos4.database.windows.net",
        user: "Phos4",
        password: "#Gfgrupo1",
        database: "BD-Phos4",
        options: {
            encrypt: true
        },
        pool: {
            max: 4,
            min: 1,
            idleTimeoutMillis: 30000,
            connectionTimeout: 5000
        }
    }
}
 
const sql = require('mssql');
sql.on('error', err => {
    console.error(`Erro de Conexão: ${err}`);
});


function conectar() {
  sql.close();
  return sql.connect(configuracoes.banco)
} 

module.exports = {
    conectar: conectar,
    sql: sql
}