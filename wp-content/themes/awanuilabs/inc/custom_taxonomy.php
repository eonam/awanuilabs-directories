<?php

function al_register_taxonomy( $name, $post_type = null, $singular, $plural, $args = array() ) {
	$args = [
    'show_ui'           => true,
    'show_admin_column' => true,
    'show_in_rest'      => true, // Needed for tax to appear in Gutenberg editor.
    'query_var'         => true,
    'rewrite'           => array('slug' => $name),
    'labels'            => array(
      'name' 							=> '{plural_label}',
      'singular_name' 		=> '{single_label}',
      'search_items' 			=> 'Search {plural_label}',
      'all_items' 				=> 'All {plural_label}',
      'parent_item'       => 'Parent {single_label}',
      'parent_item_colon' => 'Parent {single_label}:',
      'edit_item'         => 'Edit {single_label}',
      'update_item'       => 'Update {single_label}',
      'add_new_item'      => 'Add New {single_label}',
      'new_item_name'     => 'New {single_label} Name',
      'menu_name'         => '{plural_label}'
    )
  ];

	foreach ( $args['labels'] as &$label ) {
		$label = __( str_replace('{plural_label}', $plural, $label) );
		$label = __( str_replace('{single_label}', $singular, $label) );
	}

	register_taxonomy( $name, $post_type, $args );
}

al_register_taxonomy('region', 'collection_centre', 'Region', 'Regions');
al_register_taxonomy('service', 'collection_centre', 'Service', 'Service Types');
