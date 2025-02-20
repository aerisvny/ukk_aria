<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Log</title>
    <link rel="stylesheet" href="">
    <style>
        .container {
            margin-left: 250px;
            margin-top: 30px;
        }
        .card {
            margin-left: 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Activity Log
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Activity</th>
                            <th>Description</th>
                            <th>Timestamp</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                            $no = 1;
                            if (!empty($logs) && is_array($logs)): 
                        ?>
                        <?php foreach ($logs as $log): ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= esc($log['username']) ?></td>
                            <td><?= esc($log['activity']) ?></td>
                            <td><?= esc($log['description']) ?></td>
                            <td><?= esc($log['timestamp']) ?></td>
                        </tr>
                        <?php endforeach; ?>
                        <?php else: ?>
                        <tr>
                            <td colspan="5" class="no-logs">No activity logs found</td>
                        </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   
</body>
</html>
