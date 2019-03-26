Bookmarks Manager
=================

![domain model](./public/images/bookmarks_domain_model.png)


## Database setup instructions

1. Connect to psql in terminal `psql postgres`
2. Run `CREATE DATABASE bookmark_manager;`
3. Run `psql \c bookmark_manager;` (to connect to new db)
3. Create `bookmarks` table using the query saved in the file `01_create_bookmarks_table.sql`
