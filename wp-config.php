<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'awanuilabs' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'x30i;Mpz%,z#[WWyDNakfE-e58i[tb3Dlxc^Z+Ea.rC{%Y]  aSMO97CB^7-``+#' );
define( 'SECURE_AUTH_KEY',  '2Xcsj#jtsQ jzW->s0Pyz>NirL5@D@A0n5#h-8qdcNMGmev5|+_x3J?&$=`lM[cF' );
define( 'LOGGED_IN_KEY',    'l_S&%}ltbC;}k~t:&@-zQ+7h;)Nr`&S{dW6w<II=Li]~qt/S`f47ZevRXl%NN>i$' );
define( 'NONCE_KEY',        '.J|km:c2n)[=uB=u7,35~y&FP2qMXQZrxU_%-HmO W;xG8@D.I|}dnoXWW!;Zo?>' );
define( 'AUTH_SALT',        '_Oid/ad&~e:~~DZ:DdPDxg3=r!A<@EAns8%1z#BfjZL5|vS:f )h;`DuWHuurRML' );
define( 'SECURE_AUTH_SALT', 'YZRH~2n]HPXaHtxkw?$o]eWI}g#Eu(fZOxQ?fj@:Mf,XvLHh thlo>|xx9M#?HuT' );
define( 'LOGGED_IN_SALT',   '?(033&e&~I(=>SyYE5j9bcTGP4}q`/R,FQ9l|t/C}ar),`v#Nee;Gs[Pv/7qZomj' );
define( 'NONCE_SALT',       'foKIR7y@^,bM!of +%nACHI~ELY)Hu~OX1;oWW}E<g+SThjtdK1Jh{DVMf!?Wb =' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
