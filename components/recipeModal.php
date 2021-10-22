<?php
?>
<div class="modal fade" id="recipeModal" tabindex="-1" role="dialog" aria-labelledby="recipeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body" id="recipe">
                <h3><?php echo $store ?></h3>
                <p><?php echo $address ?><br><?php echo $zip ?> <?php echo $city ?></p>

                <h4>Shopping list</h4>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Food item</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Price</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th><?php echo $storeIngredient ?></th>
                        <td><?php echo $storeAmount ?></td>
                        <td><?php echo $storeItemPrice ?> kr.</td>
                    </tr>
                    </tbody>
                </table>
                <br>
                <hr>
                <br>
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
