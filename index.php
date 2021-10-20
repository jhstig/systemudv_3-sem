<?php
    $title = "Feeder";
    include("./templates/head.php");
?>

        <div class="row  justify-content-around">
            <div class="col border front-all container-width" style='background-image: url("./images/spaghet.jpg");'>
                <div class="row top-desc text-center">
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                500 meter væk
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                4 portioner
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                15 kr. pr. portion - 60 kr. i alt
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
                    <div class="modal fade" id="recipeModal" tabindex="-1" role="dialog" aria-labelledby="recipeModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body" id="recipe">
                                    <h4>Spaghet</h4>
                                    <h5>Ingredienser</h5>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Ingrediens</th>
                                                <th scope="col">Mængde</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>Spaghetti</th>
                                                <td>200g</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <h5>Fremgangsmåde</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam asperiores consequuntur, culpa doloribus, eligendi eveniet ipsa iste magni nam neque porro quas quasi qui quos sunt velit voluptate. Ad, eius?</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary" onclick="printRecipe();">Print</button>
                                </div>
                            </div>
                        </div>
                    </div>
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

