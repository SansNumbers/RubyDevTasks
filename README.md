# RubyDevTasks

**HomeTasks from Mobidev internship.**

## How to Run:

### Task 1 for Lecture #2

- To run the bash script, enter in Task 1 folder type in Terminal:
  `./script` and enter any word and press Enter.

Console output should be the word that you typed.

- To run the ruby file, enter in Task 1 folder and type in Terminal:
  `ruby script.rb`

Console output should be number 6.

### Task 2 for Lecture #3

- To run the ruby file, enter in Task 2 folder and type in Terminal:
  `ruby script.rb`

Console output should be following:

```
Drinks in stock:
["Cola", "Water", "Juice"]

Affordable drinks:
{:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}}
{:price=>39.99, :name=>"Water", :quantity_by_size=>{:l033=>1, :l2=>4}}

Drinks out of stock:
{:price=>40.0, :name=>"Pepsi", :quantity_by_size=>{}}

How much Cola drinks left in stock:
{:l033=>3, :l05=>7, :l1=>8, :l2=>4}

Total amount of drinks:
36
```

### Task 3 for Lecture #4

- To run the ruby file, enter in Task 3 folder and type in Terminal:
  `ruby script.rb`

Console output should be following:

```
<!doctype html>

<html>
<head>
	<meta name="charset" content="utf-8">
	<title>The HTML5 Template</title>
	<meta name="description" content="The HTML5 Template">
	<meta name="author" content="MobiDev">

	<link rel="stylesheet" href="css/styles.css?v=1.0">
</head>

<body>
	<div>Hello World</div>
	<script src="js/scripts.js"> </ script>
</body>
</html>
```

### Task 4 for Lecture #5

- To run the ruby file, enter in Task 4 folder and type in Terminal:
  `ruby app.rb`

After you started the script, you have to :

1. Input generated file destination path. For example: "build/README"(works with any name of folder) or just "README"

2. You have to choose one option: HTML or MD.

If you type "build/README" - it creates a folder with README file with according extension. In other case, it creates a README file in the root folder.

- To run the Rakefile, enter in Task 4 folder and type in Terminal:
  `rake cleanup`

It deletes every README file from the folders.
