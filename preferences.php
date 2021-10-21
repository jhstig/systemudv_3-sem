<?php

$title = "Preferences";
include("./templates/head.php");
?>

<div class="row justify-content-around">
    <div class="col border front-all container-width">
        <div class="row ">
            <div class="col top-gen scrollable">
                <button class="btn btn-block btn-primary my-3">Save changes</button>
                    <!-- Allergies -->
                    <div class='form-group border my-2 px-2 py-1'>
                        <h1 class="h3">Allergies</h1>
                        <p>Mark your allergies, if any:</p>
                        <div class='form-check'>
                            <input class='form-check-input' type='checkbox' name='Nuts' id='nuts'>
                            <label class='form-check-label' for='nuts'>Nuts</label>
                        </div>
                        <div class='form-check'>
                            <input class='form-check-input' type='checkbox' name='seafood' id='seafood'>
                            <label class='form-check-label' for='seafood'>Seafood</label>
                        </div>
                        <div class='form-check'>
                            <input class='form-check-input' type='checkbox' name='lactose' id='lactose'>
                            <label class='form-check-label' for='lactose'>Lactose</label>
                        </div>
                        <div class='form-check'>
                            <input class='form-check-input' type='checkbox' name='gluten' id='gluten'>
                            <label class='form-check-label' for='gluten'>Gluten</label>
                        </div>
                    </div>
                    <!-- max distance -->
                    <div class='form-group border my-2 px-2 py-1'>
                        <h1 class="h3">Max distance</h1>
                        <p>Put in your prefered maximum distance to stores</p>
                        <div class='form-group'>
                            <label for="userPreferedDistance">Maximum distance in kilometers</label>
                            <input type="number" class="form-control" name="userPreferedDistance" id="userPreferedDistance" placeholder="1.5">
                        </div>
                    </div>
                    <!-- profile changes -->
                    <div class='form-group border my-2 px-2 py-1'>
                        <h1 class="h3">Profile</h1>
                        <p>Change your profile settings</p>
                        <div class='form-group'>
                            <label for="userEmail">Enter new email address</label>
                            <input type="email" class="form-control" name="userEmail" id="userEmail" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="userEmail2">Repeat new email address</label>
                            <input type="email" class="form-control" name="userEmail2" id="userEmail2" placeholder="Email">
                        </div>
                        <div class='form-group'>
                            <label for="newUserPassword">Enter new password</label>
                            <input type="password" class="form-control" name="newUserPassword" id="newUserPassword" placeholder="New password">
                        </div>
                        <div class="form-group">
                            <label for="newUserPassword2">Repeat new password</label>
                            <input type="password" class="form-control" name="newUserPassword2" id="newUserPassword2" placeholder="New password">
                        </div>
                        <div class="form-group">
                            <label for="userPassword">Type in your current password to make profile changes</label>
                            <input type="password" class="form-control" name="userPassword" id="userPassword" placeholder="Password">
                        </div>
                    </div>
                <button class="btn btn-block btn-primary my-3">Save changes</button>
            </div>
        </div>
        <?php include("./templates/navbar.php") ?>
    </div>
</div>
<?php include("./templates/foot.php");
?>