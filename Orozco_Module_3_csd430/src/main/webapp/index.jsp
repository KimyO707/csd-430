<!-- Module 3.2 Programming Assignment -->
<!-- Kimberly Orozco, April 4 2026 -->
<!-- Purpose: make a page with a form -->

<!DOCTYPE html>
<html>
<head>
    <title>Module 3 Assignment</title> <!-- Title  -->
    <link rel="stylesheet" href="style.css"> <!-- connect my css  -->
</head>
<body>

<h2> Kimy's Restaurant Feedback Form </h2>
<p>Did you like your food? :D</p>

<form action="display.jsp" method="post">
    What's your name?: <input type="text" name="name" required><br> <!-- Put ur name  -->

    Favorite Food: <input type="text" name="food"><br> <!-- For your fav food -->

    Rating (1-5): <!-- Star rating!!! -->
    <select name="rating">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
    </select><br>

    Service Quality:<br> <!-- Quality B) -->
    <div class="radio-group">
        <span>Good-</span> <input type="radio" name="service" value="Good">
        <span>Okay-</span> <input type="radio" name="service" value="Okay">
        <span>Bad-</span> <input type="radio" name="service" value="Bad">
    </div>

    Would you come back? <!-- it wouldn't work when I put the no so it's either yes or don't click it for no ;3;  -->
    <input type="checkbox" name="return" value="Yes"> Yes!
    <br>

    Comments:<br> <!-- A comment area -->
    <textarea name="comments"></textarea><br>

    <button type="submit">Send Feedback!</button> <!-- The button that does it all -->
</form>

</body>
</html>