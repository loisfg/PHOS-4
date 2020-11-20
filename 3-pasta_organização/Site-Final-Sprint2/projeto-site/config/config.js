module.exports = {
  production: {
    username: 'Phos4',
    password: '#Gfgrupo1',
    database: 'BD-Phos4',
    host: 'db-phos4.database.windows.net',
    dialect: 'mssql',
    xuse_env_variable: 'DATABASE_URL',
    dialectOptions: {
      options: {
        encrypt: true
      }
    },
    pool: { 
      max: 5,
      min: 1,
      acquire: 5000,
      idle: 30000,
      connectTimeout: 5000
    }
  }
};
 
