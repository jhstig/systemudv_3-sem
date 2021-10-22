<script>
    function printRecipe() {
        var recipe = document.getElementById('recipe<?php echo $type+$i ?>');
        var popupWin = window.open('', '_blank', 'width=300,height=300');
        popupWin.document.open();
        popupWin.document.write('<html><body onload="window.print()">' + recipe.innerHTML + '</html>');
        popupWin.document.close();
    }
</script>
