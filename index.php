<?php

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./style/style.css">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="row justify-content-around">
            <div class="col border container-width" style='background-image: url("./images/spaghet.jpg");'>
                <div class="row text-center">
                    <div class="col top-desc">
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
                                <div class="modal-header">
                                    <h5 class="modal-title" id="recipeModalLabel">Spaghet</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <ul>
                                        <li>Spaghetti</li>
                                        <li>Oksekød</li>
                                        <li>Løg</li>
                                        <li>Tomat</li>
                                        <li>Salt & peber</li>
                                    </ul>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Export to pdf</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-around text-center bottom-rate mb-3">
                    <button class="col-3 border button-rate">Dislike</button>
                    <button class="col-3 border button-rate">Undo</button>
                    <button class="col-3 border button-rate">Like</button>
                </div>
                <div class="row text-center border-top bottom-nav">
                    <button class="col-4 ">Profil</button>
                    <button class="col-4 ">Hjem</button>
                    <button class="col-4 ">Gemt</button>
                </div>
            </div>
        </div>
    </div>
</body>
<?php
include("./scripts/bootstrap.html");
?>
</html>

