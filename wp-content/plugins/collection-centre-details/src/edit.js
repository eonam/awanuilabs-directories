/**
 * Retrieves the translation of text.
 *
 * @see https://developer.wordpress.org/block-editor/reference-guides/packages/packages-i18n/
 */
import { __ } from '@wordpress/i18n';

/**
 * React hook that is used to mark the block wrapper element.
 * It provides all the necessary props like the class name.
 *
 * @see https://developer.wordpress.org/block-editor/reference-guides/packages/packages-block-editor/#useblockprops
 */
import { useBlockProps } from '@wordpress/block-editor';

/**
 * Lets webpack process CSS, SASS or SCSS files referenced in JavaScript files.
 * Those files can contain any CSS code that gets applied to the editor.
 *
 * @see https://www.npmjs.com/package/@wordpress/scripts#using-css
 */
import './editor.scss';

import { TextareaControl, TextControl } from '@wordpress/components';

/**
 * The edit function describes the structure of your block in the context of the
 * editor. This represents what the editor will render when the block is used.
 *
 * @see https://developer.wordpress.org/block-editor/reference-guides/block-api/block-edit-save/#edit
 *
 * @return {Element} Element to render.
 */
export default function Edit({ attributes, setAttributes }) {
	const {
		address,
		latitude,
		longitude,
		openHours,
		contactInformation,
		paymentFacilities,
		accessibility
	} = attributes;

	return (
		<div { ...useBlockProps() }>
			<TextareaControl
				label={__('Address', 'collection-centre-details')}
				value={address}
				onChange={(value) => setAttributes({ address: value })}
			/>
			
			<div className="coordinates-group">
				<TextControl
					label={__('Latitude', 'collection-centre-details')}
					value={latitude}
					onChange={(value) => setAttributes({ latitude: value })}
				/>
				
				<TextControl
					label={__('Longitude', 'collection-centre-details')}
					value={longitude}
					onChange={(value) => setAttributes({ longitude: value })}
				/>
			</div>

			<TextareaControl
				label={__('Open Hours', 'collection-centre-details')}
				value={openHours}
				onChange={(value) => setAttributes({ openHours: value })}
			/>

			<TextareaControl
				label={__('Contact Information', 'collection-centre-details')}
				value={contactInformation}
				onChange={(value) => setAttributes({ contactInformation: value })}
			/>

			<TextareaControl
				label={__('Payment Facilities', 'collection-centre-details')}
				value={paymentFacilities}
				onChange={(value) => setAttributes({ paymentFacilities: value })}
			/>

			<TextareaControl
				label={__('Accessibility', 'collection-centre-details')}
				value={accessibility}
				onChange={(value) => setAttributes({ accessibility: value })}
			/>
		</div>
	);
}
