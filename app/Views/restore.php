<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Table</title>
    <style>
        .content {
            margin-left: 250px;
            transition: margin-left 0.3s ease;
        }

        .content.shifted {
            margin-left: 0;
        }

        .table-responsive {
            margin-top: 30px;
        }

        .panel {
            background-color: #fff;
            color: #343a40;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        .panel-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .btn-primary {
            background-color: #ffc107;
            border-color: #ffc107;
        }
    </style>
</head>
<body>
    <div class="content" id="content">
        <div class="container mt-4">
            <div class="panel">
                <div class="panel-title">Deleted Data Can Be Restored Back</div>
                
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th>No</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Status</th>
                                <th>Deadline</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($jel)): ?>
                                <?php $no = 1; foreach ($jel as $item): ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= esc($item->title) ?></td>
                                    <td><?= esc($item->description) ?></td>
                                    <td>
                                        <span class="<?= $item->status === 'pending' ? 'text-warning' : 'text-success' ?>">
                                            <?= esc(ucfirst($item->status)) ?>
                                        </span>
                                    </td>
                                    <td><?= esc($item->deadline) ?></td>
                                    <td>
                                        <a href="<?= base_url('home/aksi_restore/' . $item->id_list) ?>" class="btn btn-sm btn-danger">
                                            <i class="fas fa-redo" onclick="return confirm('Are you sure you wanna restore the data?')"></i>
                                        </a>
                                        <a href="<?= base_url('home/h_list1/' . $item->id_list) ?>" class="btn btn-sm btn-danger">
                                            <i class="fas fa-trash-alt" onclick="return confirm('Are you sure you wanna delete it permanently?')"></i>
                                        </a>
                                   </td>
                               </tr>
                           <?php endforeach; ?>
                       <?php else: ?>
                        <tr>
                            <td colspan="6" class="text-center">No data available</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>