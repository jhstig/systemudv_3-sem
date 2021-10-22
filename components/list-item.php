<!-- recipe item -->

<div>
    <button type="button" class="button-0-formatting row border" data-toggle="modal" data-target="#recipeModal">
        <div class="col container-width " style='background-image: url("./images/spaghet.jpg");'>
            <h4><?php echo $recipeName ?></h4>
            <a onclick="recipeModal();">Se mere</a>
        </div>
    </button>
    <!-- Modal -->
    <?php include("./components/recipeModal.php") ?>

    <!-- modal end -->
</div>
<!-- recipe item end -->