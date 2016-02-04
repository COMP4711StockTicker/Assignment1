<html>
<head>
    <title>Stock Ticker - <?php echo $page ?></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://bootswatch.com/yeti/bootstrap.min.css">
</head>
<body>
<div class = "navbar navbar-default">
    <div class = "navbar-header">
        <!-- toggle icon -->
        <button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#myNavbar">
            <span class = "icon-bar"></span>
            <span class = "icon-bar"></span>
            <span class = "icon-bar"></span>
        </button>
    </div>
    <!-- menu -->
    <div class = "collapse navbar-collapse" id = "myNavbar">
        <div class="navbar-header" style="color: white">
            <h4>Stock Ticker</h4>
        </div>
        <ul class = "nav navbar-nav pull-right" id="menu">
            <li><a href="/">Home</a></li>
            <li><a href="/stock">Stock</a></li>
            <li><a href="/portfolio">Portfolio</a></li>
            <li><a href="/">Login</a></li>
        </ul>
    </div>
</div>

<div class="container">
    <?php $this->load->view($content); ?>
    <br/>
</div>

<div class="modal-footer">
    <div class = "container">
        Copy Right Team Sexy Limited
    </div>
</div>
</body>