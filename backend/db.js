
import mysql from 'mysql2';

export const db = mysql.createConnection({

  host: 'localhost',
  user: 'root',
  password: 'Guicuki05!',
  database: 'site_web',

});
