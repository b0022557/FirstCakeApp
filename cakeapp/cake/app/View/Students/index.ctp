<!-- File: /app/View/Posts/index.ctp -->

<h1>Students</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Code</th>
        <th>Name</th>
    </tr>

    <!-- Here is where we loop through our $posts array, printing out post info -->

    <?php foreach ($students as $student): ?>
    <tr>
        <td><?php echo $student['Student']['id']; ?></td>
        <td><?php echo $student['Student']['student_code']; ?></td>
        <td><?php echo $student['Student']['student_name']; ?></td>
    </tr>
    <?php endforeach; ?>

</table>
