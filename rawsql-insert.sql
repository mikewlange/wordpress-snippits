/* Add a custom field to all items of a particular type */
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) SELECT ID AS post_id, 'meta_key' AS meta_key, 'meta_val' AS meta_value FROM wp_posts WHERE ID NOT IN (SELECT post_id FROM wp_postmeta WHERE meta_key = 'meta_key') AND post_type = 'page';