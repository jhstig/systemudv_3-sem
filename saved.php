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