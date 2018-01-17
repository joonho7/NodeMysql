var mysql = require("mysql");
var inquirer = require('inquirer')

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "letmeinplease",
  database: "bamazon_schemaDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT * FROM products", function(err, results) {
    if (err) throw err;
    console.log(results);
    user();
  });
}


function user(){
inquirer.prompt([
{
	type:'input',
	name:'id',
	message:'Please provide id of the product of your choice'
},
{
	type:'input',
	name:'quantity',
	message:'How many?'
}
]).then(function(answers){
	var query = `SELECT * FROM products WHERE item_id like '%${answers.id}%'`

	connection.query(query, function(err,results){
		if(results.stock_quantity < answers.quantity){
			return;"Insufficient quanity!"
		}else{
			console.log('Your total comes out to ' + results.stock_quantity * results.price)
			
		}
	})
});
}












