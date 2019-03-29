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

#### Step 12 - Delete bookmark

N.B. Sinatra only allows `GET` or `POST` methods (in `app.rb`)
- These need to be overridden for other REST methods

To keep your routes RESTful, make use of Sinatra's [named parameters](http://sinatrarb.com/intro.html) - you'll need to enable [method_override](http://sinatrarb.com/configuration.html) to use this feature...

```
:method_override - enable/disable the POST _method hack
-------------------------------------------------------
Boolean specifying whether the HTTP POST _method parameter hack should be enabled. When true, the actual HTTP request method is overridden by the value of the _method parameter included in the POST body. The _method hack is used to make POST requests look like other request methods (e.g., PUT, DELETE) and is typically only needed in shitty environments – like HTML form submission – that do not support the full range of HTTP methods.

The POST _method hack is implemented by inserting the Rack::MethodOverride component into the middleware pipeline.
```

**TODOs for this step...**

1. User story
2. Feature test for `delete`
3. Unit test for method in Bookmark?
4. 

```
User story: Delete bookmarks
----------------------------
As a user who likes tidy lists,
so that I can manage my list of favourite websites,
I want to be able to delete bookmarks I no longer use.
```

