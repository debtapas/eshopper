<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'eshopper' );

/** Do not ask for FTP details **/
define( 'FS_METHOD', 'direct');

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '@A)j3c:lU^GR,! =|-}-x^>p7sR^[C^5q+.EeXnfi/Zo<xfHhZs4/IGrw+)qY+sL' );
define( 'SECURE_AUTH_KEY',  'dkzV)jUXh@~PvP=t&&Pk[.Lf iT|d4*/|-s ]+Qf]w8?9Ib2n3:F=29/>+R.]CoJ' );
define( 'LOGGED_IN_KEY',    '1O.V8A)}dBbPS>N1p^!o]Gv/^ac8fDAO[,,V<ge,{Pba4}_Or[r&bG;B=g,%=e4*' );
define( 'NONCE_KEY',        'r`6g`%|i5!]bSJzaG[Ce!JeEjG5X_~&]W<pM]d5NvEp[BQK}a8h1,s!Pa9Nu2wi|' );
define( 'AUTH_SALT',        'Kj9AJkUV0tf97w*XrG2E&qXlm43s%UfAsupIX4w@KwWI:m3BryAGu$jG@6 KW~v$' );
define( 'SECURE_AUTH_SALT', '<n6G2{`+{Ma(u15)}W{<)y{?VJcXj5Gi.dE8VVpT9.h9_uy:)l%u^tSdeNs9iRse' );
define( 'LOGGED_IN_SALT',   '7j}WZ[QCZXe{c;mo[L$E:W4Q~*zZ(p#O-3y3~HmeD2`:0^om4>]0V,;LF6N03P[{' );
define( 'NONCE_SALT',       'i$X>~xvcWj;Mb/.)09x5UN1OB@,^_, N}+IE<Zb3rk.W$1`.])HEGOXCDtGD;jf2' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
