<?php
/*
 * This is config file to setup all project needs 
 * like start_session for save sessions for admin and users 
 * second:: To make define (const) for 'path' of files
 * third:: To make require_once that get extends of database file here to use everywhere in our project
 */

//  Start session {{First thing in our project}} to make when i include this make session open
session_start();

// Start define const {{path}} in small characters
define("BURL" , "http://localhost/medical_service/");
define("BURLA" , "http://localhost/medical_service/admin/");
define("ASSETS" , "http://localhost/medical_service/assets/");
define("BUA","http://localhost/medical_service/admin/");


// start define {{base-link}} for project by __DIR__ {{it's here extend to here}}
define("BL",__DIR__.'/');
define("BLA",__DIR__.'/admin/');

/**
 * git path to here of connect database
 */
require_once(BL.'/functions/db.php');