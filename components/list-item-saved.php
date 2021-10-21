<!-- recipe item -->

<div>
    <button type="button" class="button-0-formatting row border" data-toggle="modal" data-target="#recipeModal">
        <div class="col container-width" style='background-image: url("./images/spaghet.jpg");'>
            <h4><?php echo $recipeName ?></h4>
            <a onclick="recipeModal();">Se mere</a>
        </div>
    </button>
    <!-- Modal -->

    <div class="modal fade" id="recipeModal" tabindex="-1" role="dialog" aria-labelledby="recipeModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body" id="recipe">
                    <h3><?php echo $store ?></h3>
                    <p><?php echo $address ?><br><?php echo $zip ?> <?php echo $city ?></p>
                    <h4><?php echo $recipeName ?></h4>
                    <h5>Ingredients</h5>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Ingredient</th>
                            <th scope="col">Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th><?php echo $ingredient ?></th>
                            <td><?php echo $amount ?></td>
                        </tr>
                        </tbody>
                    </table>
                    <h5>Instructions</h5>
                    <p><?php echo $instruction ?></p>
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
<!-- recipe item end -->