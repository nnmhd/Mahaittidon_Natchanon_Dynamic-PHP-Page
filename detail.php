<html>
    <?php
    require_once('includes/connect.php');
    $query = 'SELECT * FROM employees, jobs WHERE job_id = jobs.id AND employees.id ='.$_GET['id'];
    $results = mysqli_query($connect,$query);

    ?>

    <head>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="../css/main.css">
    <title>The Store</title>
    </head>

    <body class="bg-yellow-300">
        <header>
        </header>
        <div class="w-full place-items-center py-5"><div><a href="index.php"><img class="w-96 cursor-pointer" src="images/logo.png" alt="simpson's logo"></a></div></div>
        <?php
while($row = mysqli_fetch_assoc($results)) {
    echo '<section class="w-3/4 h-3/5 m-auto bg-white rounded-md p-4 shadow-md md:w-4/6 md:h-3/4">
    <div class="w-full h-4/6 md:h-4/5"><img class="w-full h-full object-cover rounded-md" src="images/'.$row['image'].'" alt="Employees"></div>
    <h1 class="text-3xl mt-6">'.$row['fname'].' '.$row['lname'].'</h1>
    <p class="text-l mt-2 text-indigo-500 font-semibold">'.$row['title'].'</p>
    
    </section>';
}
?>
    <footer>
        
    </footer>
</body>

</html>