<?php
/*
Plugin Name: WP Shortcode Example
Description: It's a shortcode!
Version: 0.1.0
Author: Sally
*/
function foobar_func( $atts ){
	return "foo and bar";
}

add_shortcode( 'foobar', 'foobar_func' );
