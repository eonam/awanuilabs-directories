<?php
/**
 * Plugin Name:       Collection Centre Details
 * Description:       Example block scaffolded with Create Block tool.
 * Requires at least: 6.6
 * Requires PHP:      7.2
 * Version:           0.1.0
 * Author:            The WordPress Contributors
 * License:           GPL-2.0-or-later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 * Text Domain:       collection-centre-details
 *
 * @package CreateBlock
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

/**
 * Registers the block using the metadata loaded from the `block.json` file.
 * Behind the scenes, it registers also all assets so they can be enqueued
 * through the block editor in the corresponding context.
 *
 * @see https://developer.wordpress.org/reference/functions/register_block_type/
 */
function create_block_collection_centre_details_block_init() {
	register_block_type( __DIR__ . '/build', array(
		'render_callback' => 'render_collection_centre_details'
	));
}
add_action( 'init', 'create_block_collection_centre_details_block_init' );

function render_collection_centre_details($attributes) {
	$address = $attributes['address'] ?? '';
	$latitude = $attributes['latitude'] ?? '';
	$longitude = $attributes['longitude'] ?? '';
	$openHours = $attributes['openHours'] ?? '';
	$contactInformation = $attributes['contactInformation'] ?? '';
	$paymentFacilities = $attributes['paymentFacilities'] ?? '';
	$accessibility = $attributes['accessibility'] ?? '';

	ob_start(); ?>
	<div class="wp-block-collection-centre-details">
		<?php if ($address): ?>
			<div class="centre-address">
				<h4><?php echo esc_html__('Address', 'collection-centre-details'); ?></h4>
				<p><?php echo nl2br(esc_html($address)); ?></p>
			</div>
		<?php endif; ?>

		<?php if ($latitude && $longitude): ?>
			<div class="centre-coordinates">
				<h4><?php echo esc_html__('Coordinates', 'collection-centre-details'); ?></h4>
				<p><?php echo esc_html($latitude); ?>, <?php echo esc_html($longitude); ?></p>
			</div>
		<?php endif; ?>

		<?php if ($openHours): ?>
			<div class="centre-hours">
				<h4><?php echo esc_html__('Open Hours', 'collection-centre-details'); ?></h4>
				<p><?php echo nl2br(esc_html($openHours)); ?></p>
			</div>
		<?php endif; ?>

		<?php if ($contactInformation): ?>
			<div class="centre-contact">
				<h4><?php echo esc_html__('Contact Information', 'collection-centre-details'); ?></h4>
				<p><?php echo nl2br(esc_html($contactInformation)); ?></p>
			</div>
		<?php endif; ?>

		<?php if ($paymentFacilities): ?>
			<div class="centre-payment">
				<h4><?php echo esc_html__('Payment Facilities', 'collection-centre-details'); ?></h4>
				<p><?php echo nl2br(esc_html($paymentFacilities)); ?></p>
			</div>
		<?php endif; ?>

		<?php if ($accessibility): ?>
			<div class="centre-accessibility">
				<h4><?php echo esc_html__('Accessibility', 'collection-centre-details'); ?></h4>
				<p><?php echo nl2br(esc_html($accessibility)); ?></p>
			</div>
		<?php endif; ?>
	</div><?php
	
	return ob_get_clean();
}
