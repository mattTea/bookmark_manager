INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT INTO bookmarks (url) VALUES ('http://askjeeves.com');
INSERT INTO bookmarks (url) VALUES ('http://twitter.com');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');

SELECT * FROM bookmarks;

 id |             url              
----+------------------------------
  1 | http://www.makersacademy.com
  2 | http://askjeeves.com
  3 | http://twitter.com
  4 | http://www.google.com



DELETE FROM bookmarks WHERE id = '3';

 id |             url              
----+------------------------------
  1 | http://www.makersacademy.com
  2 | http://askjeeves.com
  4 | http://www.google.com



UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE id = '2';