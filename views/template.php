<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libras Virtual</title>
    <link rel="stylesheet" href="<?= BASE; ?>assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?= BASE; ?>assets/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="<?= BASE; ?>assets/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= BASE; ?>assets/css/style.css" />
    <script src="<?= BASE; ?>assets/js/jquery-3.5.0.min.js"></script>
</head>
<body>
    <h1>EAD</h1>
    
    <?php $this->loadViewInTemplate($viewName, $viewData); ?>

    <script src="<?= BASE; ?>assets/js/script.js"></script>
    <script src="<?= BASE; ?>assets/js/popper.min.js"></script>
    <script src="<?= BASE; ?>assets/js/bootstrap.min.js"></script>
    <script src="<?= BASE; ?>assets/js/moment.min.js"></script>
    <script src="<?= BASE; ?>assets/js/bootstrap-datetimepicker.min.js"></script>
</body>
</html>