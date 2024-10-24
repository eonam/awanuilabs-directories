<?php

// Get collection centre block details
function get_collection_centre_details($object) {
  $post_id = $object['id'];
  $post_content = get_post_field('post_content', $post_id);
  $blocks = parse_blocks($post_content);

  $centre_data = array(
    'address' => '',
    'latitude' => '',
    'longitude' => '',
    'openHours' => '',
    'contactInformation' => '',
    'paymentFacilities' => '',
    'accessibility' => ''
  );

  foreach ($blocks as $block) {
    if ($block['blockName'] === 'create-block/collection-centre-details') {
      if (isset($block['attrs'])) {
        $centre_data['address'] = $block['attrs']['address'] ?? '';
        $centre_data['latitude'] = $block['attrs']['latitude'] ?? '';
        $centre_data['longitude'] = $block['attrs']['longitude'] ?? '';
        $centre_data['openHours'] = $block['attrs']['openHours'] ?? '';
        $centre_data['contactInformation'] = $block['attrs']['contactInformation'] ?? '';
        $centre_data['paymentFacilities'] = $block['attrs']['paymentFacilities'] ?? '';
        $centre_data['accessibility'] = $block['attrs']['accessibility'] ?? '';
      }
      break;
    }
  }

  return $centre_data;
}

// Get taxonomy terms for a location
function get_collection_centre_taxonomies($object) {
  return array(
    'regions' => wp_get_post_terms($object['id'], 'region', array('fields' => 'all')),
    'services' => wp_get_post_terms($object['id'], 'service', array('fields' => 'all'))
  );
}

// Register custom fields and parameters to REST API
function register_collection_centre_rest_fields() {
  // Register the custom field for collection centre details
  register_rest_field(
    'collection_centre',
    'collection_centre_details',
    array(
      'get_callback' => 'get_collection_centre_details',
      'schema' => null,
    )
  );

  // Register additional query parameters
  register_rest_field(
    'collection_centre',
    'taxonomies',
    array(
      'get_callback' => 'get_collection_centre_taxonomies',
      'schema' => null,
    )
  );
}
add_action('rest_api_init', 'register_collection_centre_rest_fields');
