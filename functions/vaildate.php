<?php

function checkEmpty($value){

        if(empty($value))
         {
                return false;
         }
         return true;
}


function checkLess($value , $min){
        if(trim(strlen($value)) <= $min )
        {
                return false;
        }
        return true;
}

function ValidEmail($email) {

        if(!filter_var($email , FILTER_SANITIZE_EMAIL))
        {
                return false;
        }else 
        {
            return true;
        }
}

