Requirements
============

You're going to build a bookmark manager.

A bookmark manager is a website to maintain a `collection of bookmarks` (URLs).

You can use it to `save a webpage` you found useful.

You can `add tags` to the webpages you saved to find them later.

You can `browse` bookmarks other users have added. You can `comment` on the bookmarks.


## Specification

`Show` (read) a list of bookmarks
`Add` (create) new bookmarks
`Delete` (delete) bookmarks
`Update` (update) bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users manage their bookmarks

```
User story: View bookmarks
--------------------------
As a user,
So that I can quickly access websites I regularly visit,
I want to view a list of my bookmarks.
```

Objects | Messages
--------------- | -------------------
bookmarks_list | view



STEP 5. 

Use psql to create a table called `bookmarks` in the `bookmark_manager` database, with two columns:
- `id`, a SERIAL PRIMARY KEY
- `url`, a VARCHAR with a maximum length of 60.

```
bookmarks table

  id | url
-----|----------


```

#### Database setup instructions

1. psql postgres
2. CREATE DATABASE bookmark_manager;
3. psql \c bookmark_manager (to connect to new db)
3. Create `bookmarks` table as below... 

```sql
CREATE TABLE bookmarks (
  id SERIAL PRIMARY KEY,
  url VARCHAR(60)
);

```
```
User story: Add bookmarks
-------------------------
As a web user,
So that I can quickly access my favourite webpages,
I would like to be able to add web addresses to my 'bookmarks' 
```

```
User story: View bookmark titles as links
-----------------------------------------
As a user,
so that I can comfortably access my favourite web pages,
I wish to view only the titles,
and be able to click them to be directed to that page. 
```