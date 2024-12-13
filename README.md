# 🏥 Healthie Take Home Assessment 🏥  

## 🔧 Setup

To get started with the project, follow these steps:

1. **Clone the repo:**

   ```bash
   git clone <repo_url>
   cd <repo_name>
   ```
2. Install dependencies:

Make sure to run the following commands to install necessary gems:

```bash
bundle install
```
3. Set up the database:

You need to create the database, run migrations, and seed data for testing the SQL queries:

```bash
rails db:create
rails db:migrate
rails db:seed
```
🛑 Important: If you skip this step, there won't be any data to query when testing the database-related functionality.

## 🔢 Prime Number Finder
You can find the prime number finder script in the scripts directory.

To run the prime number finder, use the following command:

```bash
ruby scripts/prime_number_finder.rb
```
I’ve included a manual method in the code as a reference to my approach, but I later discovered that Ruby has a built-in Prime class that simplifies finding prime numbers. I opted for using it as it handles larger numbers more efficiently.

## 🐱🐶 Class Design

All required classes can be found in the classes directory. Additionally, I created a Drink class that can be used for multiple animals, like cats and dogs, as they both drink water. Here's my reasoning:

Cats drink milk and water.
Dogs drink water.
Instead of creating a separate Milk class, I generalized it under the Drink class. This design can be extended to support more drink types if needed.

To see the class functionality in action, check out the animal driver in the drivers folder.

Run the driver script using:

```bash
ruby drivers/animal_driver.rb
```

## 🗃️ Database and Model Design
All required models are located in `app/models` along with their associations. Specifically:

For the ClientProvider model, I added enums for the plan attribute. This makes the code more efficient as enums are a great way to store categorical data.
0 = basic
1 = premium

## 💻 Running SQL Queries
To test the database queries, follow these steps:

Enter the Rails DB console:

```bash
rails dbconsole
```
Copy and paste the SQL queries in the terminal.

<img width="400" alt="Screenshot 2024-12-12 at 6 26 49 PM" src="https://github.com/user-attachments/assets/12a4ed40-4481-4fb3-adb0-06a6164ed44c" />

<details>
  <summary>SQL QUERIES</summary>

  <strong>Find all clients for a particular provider:</strong>
  <pre>
    SELECT
      clients.*
    FROM
      clients
    INNER JOIN client_providers cp ON clients.id = cp.client_id
    WHERE cp.provider_id = 1;
  </pre>

  <br>

  <strong>Find all providers for a particular client:</strong>
  <pre>
    SELECT
      providers.*
    FROM
      providers
    INNER JOIN client_providers cp on providers.id = cp.provider_id
    WHERE cp.client_id = 1;
  </pre>
  
  <strong>Find all of a particular client's journal entries, sorted by date posted</strong>
  <pre>
    SELECT
	    je.*
    FROM
    	journal_entries je
    INNER JOIN clients c ON je.client_id = c.id
    WHERE c.id = 1
    ORDER BY je.created_at;
  </pre>

  <strong>Find all of the journal entries of all of the clients of a particular provider, sorted by date posted</strong>
  <pre>
    SELECT
    	je.*
    FROM
    	journal_entries je
    INNER JOIN clients c ON je.client_id = c.id
    INNER JOIN client_providers cp ON c.id = cp.client_id
    WHERE cp.provider_id = 6
    ORDER BY je.created_at;
  </pre>

</details>


Additionally, I created model methods that use the same SQL queries. To run them, simply use the Rails console:

```bash
rails console
```
Then, call the model methods as needed.


<img width="500" alt="Screenshot 2024-12-12 at 6 40 31 PM" src="https://github.com/user-attachments/assets/3cd02eaa-2caa-4732-9f89-2b8a74f16092" />

## 📝 Summary of Directories and Files
scripts/prime_number_finder.rb: Prime number finder script.
classes/: Contains animal and drink classes.
drivers/animal_driver.rb: Demonstrates class functionality.
app/models/: Contains the models, including ClientProvider, with enum usage.
Feel free to reach out if you have any questions or need further clarification! 😊
