<?php

function collection_centres_register() {
  $labels = array(
    'name' => _x('Collection Centres', 'post type general name'),
    'singular_name' => _x('Collection Centre', 'post type singular name'),
    'add_new' => __('Add New Collection Centre', 'Collection Centre'),
    'add_new_item' => __('Add New Collection Centre'),
    'edit_item' => __('Edit Collection Centre'),
    'new_item' => __('New Collection Centre'),
    'view_item' => __('View Collection Centre'),
    'search_items' => __('Search Collection Centres'),
    'not_found' =>  __('Nothing found'),
    'not_found_in_trash' => __('Nothing found in Trash'),
    'parent_item_colon' => ''
  );
  $args = array(
    'labels' => $labels,
    'public' => true,
    'show_ui' => true,
    'query_var' => true,
    'rewrite' => true,
    'capability_type' => 'post',
    'hierarchical' => false,
    'menu_position' => null,
    'rewrite' => array('slug' => 'collection-centre'),
    'supports' => array('title', 'editor', 'thumbnail', 'page-attributes', 'post-formats', 'author'),
    'publicly_queryable' => true,
    'show_in_rest' => true,
  );
  register_post_type( 'collection_centre' , $args );
}
add_action('init', 'collection_centres_register');
