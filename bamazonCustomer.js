var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
	host: "localhost",
	port: 3306,
	user: "root",
	password: "root",
	database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  console.log(" ");
  displayItems();
});

var displayItems = function(){

	var query = "SELECT item_id, product_name, price FROM products";
  	connection.query(query, function(err, res) {
	  	if (err) throw err;
	    
	    for (var i = 0; i < res.length; i++) {
	      console.log("Id: " + res[i].item_id + "  || Product Name: " + res[i].product_name + 
	      			" || Price: " + res[i].price);
	  	};
	  	console.log(" ");
	  	// connection.end();
	  	purchase();
	})

var purchase = function(){
		inquirer.prompt([
			{
			    name: "productID",
			    type: "input",
			    message: "Enter the ID of the item you would like to purchase: ",
			    validate: function(value) {
				      if (isNaN(value) === false) {
				        return true;
				      }
				      return false;
			    	}
			 },
		 	 {
			    name: "quantity",
			    type: "input",
			    message: "How many units would you like to purchase? ",
			    validate: function(value) {
			      if (isNaN(value) === false) {
			        return true;
			      }
			      return false;
			    }
		  },
		  ]).then(function(answer) {
		  		console.log(answer);
		  });
	};
}

