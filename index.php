<?php
    $title = "Feeder";
    include("./templates/head.php");

    $price = 60;
    $amountPersons = 4;
    $portionPrice = $price / $amountPersons;
    $distance = 500;
    $recipePicture = "./images/spaghet.jpg";

    $store = "Føtex";
    $address = "Vesterbrogade 74-76";
    $zip = "5000";
    $city = "Odense";

    $storeIngredient = "Mel";
    $storeAmount = "1000g";
    $storeItemPrice = "8";

    $recipeName = "Spaghetti Bologna's ala Claus Meyer";
    $ingredient = "Spaghetti";
    $amount = "200g";
    $instruction = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam asperiores consequuntur, culpa doloribus, eligendi eveniet ipsa iste magni nam neque porro quas quasi qui quos sunt velit voluptate. Ad, eius?";
?>
        <div class="row  justify-content-around">
            <div class="col border front-all container-width" style='background-image: url(<?php echo $recipePicture; ?>);'>
                <div class="row top-desc text-center">
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <?php echo $distance ?> meter væk
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <?php echo $amountPersons; ?> portioner
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <?php echo $portionPrice; ?> kr. pr. portion - <?php echo $price; ?> kr. i alt
                            </div>
                        </div>
                        <div class="row">
                            <div class="col border-top">
                                <h1 class="h2">Spaghet</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mid-home">
                    <button type="button" class="button-0-formatting" data-toggle="modal" data-target="#recipeModal"></button>

                    <!-- Modal -->
                    <?php


                        include("./components/recipeModal.php");
                    ?>

                    <!-- modal end -->

                </div>
                <div class="row bottom-rate justify-content-around text-center mb-3">
                    <button class="col-3 border button-rate">Dislike</button>
                    <button class="col-3 border button-rate">Undo</button>
                    <button class="col-3 border button-rate">Like</button>
                </div>
                <?php include("./templates/navbar.php") ?>
            </div>
        </div>

    <script type="text/javascript">
        function printRecipe() {
            var recipe = document.getElementById('recipe');
            var popupWin = window.open('', '_blank', 'width=300,height=300');
            popupWin.document.open();
            popupWin.document.write('<html><body onload="window.print()">' + recipe.innerHTML + '</html>');
            popupWin.document.close();
        }
    </script>
<?php include("./templates/foot.php");

?>


