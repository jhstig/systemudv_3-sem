<?php

$title = "Preferences";
include("./templates/head.php");
?>

    <div class="row justify-content-around">
        <div class="col border front-all container-width">

            <div class="row">
                <div class="col">
                    <div class="row border">
                        <button class="col-6 text-center" onclick="activateSaved();" id="savedBtn">
                            Saved dishes
                        </button>
                        <button class="col-6 text-center" onclick="activateFavorites();" id="favoritesBtn">
                            Favorite dishes
                        </button>
                    </div>
                    <div class="row">

                        <div class="col scrollable top-gen-saved slightly-white" style="display:block;" id="saved">
                            <?php
                            $store = "Netto";
                            $address = "Landevejen 1";
                            $zip = "5200";
                            $city = "Odense";

                            $storeIngredient = "Mel";
                            $storeAmount = "1000g";
                            $storeItemPrice = "8";

                            $recipeName = "Pizza Margarita";
                            $ingredient = "Mel";
                            $amount = "250g";
                            $instruction = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam asperiores consequuntur, culpa doloribus, eligendi eveniet ipsa iste magni nam neque porro quas quasi qui quos sunt velit voluptate. Ad, eius?";
                            ?>
                            <h3>Saved recipes</h3>
                            <!-- recipe item -->
                            <?php
                                include("./components/list-item.php")
                            ?>
                        </div>

                        <div class="col scrollable top-gen-saved" style="display:none;" id="favorites">
                            <?php
                            $store = "Føtex";
                            $address = "Vesterbrogade 74-76";
                            $zip = "5000";
                            $city = "Odense";

                            $storeIngredient = "Spaghetti";
                            $storeAmount = "200g";
                            $storeItemPrice = "8";

                            $recipeName = "Spaghetti Bologna's ala Claus Meyer";
                            $ingredient = "Spaghetti";
                            $amount = "200g";
                            $instruction = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam asperiores consequuntur, culpa doloribus, eligendi eveniet ipsa iste magni nam neque porro quas quasi qui quos sunt velit voluptate. Ad, eius?";
                            ?>
                            <h3>Favorite recipes</h3>
                            <?php

                                include("./components/list-item.php")
                            ?>

                        </div>
                    </div>
                    <?php
                    $recipes = getAllRecipes();
                    for($i=0;$i<count($recipes);$i++){
                        $recipeId = $recipes[$i]['idrecipe'];
                        $recipeTitle = $recipes[$i]['title'];
                        $recipeItems = getRecipeItems($recipeId);

                        echo "<h3>$recipeTitle</h3><br>"; */?>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Food item</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Measurement</th>
                                <th scope="col">Price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for($x=0;$x<count($recipeItems);$x++){
                                $foodItemId = $recipeItems[$x]['food_item_id'];
                                $foodItemAmount = $recipeItems[$x]['amount'];
                                $foodItemAmountMeasurementId = $recipeItems[$x]['amount_measurement'];
                                $foodItemTitle = getFoodItemDetails($foodItemId)[0]['food_item_title'];
                                $standardItem = getFoodItemDetails($foodItemId)[0]['standard_item'];
                                debug(convertMeasurement($foodItemAmountMeasurementId));
                                $realMeasurement = convertMeasurement($foodItemAmountMeasurementId)[0]['measurement'];
                                //$storesWithItem = getAllStoreItems($foodItemId);
                                echo "<br>";
                                ?>
                                <tr>
                                    <th><?php //echo $foodItemTitle ?></th>
                                    <td><?php //echo $foodItemAmount ?></td>
                                    <td><?php //echo $realMeasurement ?></td>

                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>

                        <?php /*
                            $foodItemId = $recipeItems[$x]['food_item_id'];
                            $foodItemTitle = getFoodItemDetails($foodItemId)[0]['food_item_title'];
                            $standardItem = getFoodItemDetails($foodItemId)[0]['standard_item'];
                            echo "<br>Ingredients: ".$foodItemTitle."<br>" . "Standard item:".$standardItem;

                            $storesWithItem = getAllStoreItems($foodItemId);
                            echo "<br>";
                        } */?>

                        <!--//debug(getFoodItemName(getRecipeItems($i+1)[$i]['food_item_id'])[0]);
                    }-->
                    <?php /*
                    for($i=0;$i<count($recipes);$i++){
                        $recipeId = $recipes[$i]['idrecipe'];
                        $recipeTitle = $recipes[$i]['title'];
                        $recipeItems = getRecipeItems($recipeId);

                        echo $recipeTitle."<br>";

                        for($x=0;$x<count($recipeItems);$x++){
                            $foodItemId = $recipeItems[$x]['food_item_id'];
                            $foodItemTitle = getFoodItemDetails($foodItemId)[0]['food_item_title'];
                            $standardItem = getFoodItemDetails($foodItemId)[0]['standard_item'];
                            echo "<br>Ingredients: ".$foodItemTitle."<br>" . "Standard item:".$standardItem;

                            $storesWithItem = getAllStoreItems($foodItemId);

                            for($y=0;$y<count($storesWithItem);$y++) {
                                $chainId = $storesWithItem[$y]['fk_chain'];
                                $price = $storesWithItem[$y]['price'];
                                $chainName = getChainName($chainId)[0]['chain'];
                                echo "<br> Kan købes i: ".$chainName." til ".$price." kr.";
                            }
                            echo "<br>";
                        }

                        //debug(getFoodItemName(getRecipeItems($i+1)[$i]['food_item_id'])[0]);
                    }
                    //debug(getAllRecipes());

                    */?>

                    <?php include("./templates/navbar.php") ?>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        function activateSaved(){
            var saved = document.getElementById('saved')
            var savedBtn = document.getElementById('savedBtn')
            var favorites = document.getElementById('favorites')
            var favoritesBtn = document.getElementById('favoritesBtn')
            favorites.style.display = "none";
            favoritesBtn.style.borderStyle ="none";
            saved.style.display = "block";
            savedBtn.style.borderStyle = "inset";

        }
        function activateFavorites(){
            var saved = document.getElementById('saved')
            var savedBtn = document.getElementById('savedBtn')
            var favorites = document.getElementById('favorites')
            var favoritesBtn = document.getElementById('favoritesBtn')
            favorites.style.display = "block";
            favoritesBtn.style.borderStyle = "inset";
            saved.style.display = "none";
            savedBtn.style.borderStyle ="none";
        }
    </script>
<?php include("./templates/foot.php");
?>