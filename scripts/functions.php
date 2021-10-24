<?php
$conn;
function connect() { //connect to DB
    global $conn; //set var to global
    $conn = mysqli_connect(DBHOST, DBUSER, DBPASS); //mysqli_connect(host,user,pw)
    if(!$conn) { //if not connected then kill (test if error)
        die(mysqli_error($conn));   //kill
    }
    mysqli_select_db($conn, DBNAME); //select DB that's to be used
}
function debug($data) {
    echo '<pre>';
    print_r($data);
    echo '</pre>';
}
function getRecipeDetails() {
    global $conn;
    $sql = 'SELECT auction_id, title, description, image, auction_owner, min_bid, expiration_date, category_id FROM auctions';
    $result = mysqli_query($conn, $sql);
    $product_list = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $product_list[] = $row;
        }
    }
    return $product_list;
}

function getAllRecipes() {
    global $conn;
    $sql = 'SELECT idrecipe, title FROM recipe';
    $result = mysqli_query($conn, $sql);
    $recipes = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $recipes[] = $row;
        }
    }
    return $recipes;
}
function getAllStoreItems($id) {
    global $conn;
    $sql = "SELECT food_item_id, fk_chain, price FROM store_food_item WHERE food_item_id = '$id'";
    $result = mysqli_query($conn, $sql);
    $food_items = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $food_items[] = $row;
        }
    }

    return $food_items;
}

function getRecipeItems($id) {
    global $conn;
    $sql = "SELECT food_item_id, amount, amount_measurement FROM recipe_food_item WHERE recipe_id = '$id'";
    $result = mysqli_query($conn, $sql);
    $recipe_items = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $recipe_items[] = $row;
        }
    }
    return $recipe_items;
}
function getFoodItemDetails($id) {
    global $conn;
    $sql = "SELECT food_item_title, standard_item FROM food_item WHERE food_item_id = '$id'";
    $result = mysqli_query($conn, $sql);
    $food_item_name = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $food_item_name[] = $row;
        }
    }
    return $food_item_name;
}
function getChainName($id) {
    global $conn;
    $sql = "SELECT chain FROM chain WHERE chain_id = '$id'";
    $result = mysqli_query($conn, $sql);
    $chain_name = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $chain_name[] = $row;
        }
    }

    return $chain_name;
}
function convertMeasurement($id) {
    global $conn;
    $sql = "SELECT measurement FROM chain WHERE idmeasurement = '$id'";
    $result = mysqli_query($conn, $sql);
    $measurement = [];
    if(mysqli_num_rows($result)>0) {
        while($row = mysqli_fetch_assoc($result)) {
            $measurement[] = $row;
        }
    }

    return $measurement;
}