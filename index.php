<html>
    <?php
    require_once('includes/connect.php');
    $query = 'SELECT employees.id AS employee, fname, lname, job_id, image, thumb, jobs.id AS position, title, job_desc FROM employees, jobs WHERE  employees.job_id = jobs.id ORDER BY position ASC';
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
        <div class="w-full place-items-center py-5"><img class="w-96" src="images/logo.png" alt="simpson's logo"></div>
        <section class="bg-yellow-300 p-20"> 

        <?php
while($row = mysqli_fetch_assoc($results)) {
    echo '<section>
        <div class="max-w-md mb-4 mx-auto bg-white rounded-md shadow-md overflow-hidden md:max-w-2xl">
            <div class="md:flex">
                <div class="md:shrink-0">
                    <a href="detail.php?id='.$row['employee'].'">
                        <img class="h-48 w-full object-cover md:h-48 md:w-48" src="images/'.$row['image'].'" alt="Employees">
                    </a>
                </div>

                <div class="p-8">
                    <div class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">'.$row['title'].'</div>
                    <a href="detail.php?id='.$row['employee'].'" class="block mt-1 text-lg leading-tight font-medium text-black hover:underline">'.$row['fname'].' '.$row['lname'].'</a>
                    <br>
                    <p>'.$row['job_desc'].'</p>
                </div>
            </div>
        </div>
    </section>';
}
?>
</section>
    <footer>
        
    </footer>
</body>

</html>